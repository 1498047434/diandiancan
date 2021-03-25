package cn.edkso.candiandian.service.impl;


import cn.edkso.candiandian.controller.WebSocket;
import cn.edkso.candiandian.dao.OrderDetailDao;
import cn.edkso.candiandian.dao.OrderMasterDao;
import cn.edkso.candiandian.dao.ProductDao;
import cn.edkso.candiandian.dao.UserDao;
import cn.edkso.candiandian.domain.*;
import cn.edkso.candiandian.dto.*;
import cn.edkso.candiandian.enums.OrderStatusEnum;
import cn.edkso.candiandian.enums.OrderTypeEnum;
import cn.edkso.candiandian.enums.PayStatusEnum;
import cn.edkso.candiandian.enums.ResultEnum;
import cn.edkso.candiandian.exception.CddEcxeption;
import cn.edkso.candiandian.form.RestaurantForm;
import cn.edkso.candiandian.service.OrderService;
import cn.edkso.candiandian.service.ProductService;
import cn.edkso.candiandian.utils.KeyUtils;

import cn.edkso.candiandian.utils.ServletUtils;
import net.sf.json.JSONObject;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMasterDao orderMasterDao;
    @Autowired
    private OrderDetailDao orderDetailDao;
    @Autowired
    private ProductService productService;
    @Autowired
    private UserDao userDao;

    public List<OrderMaster> createBefore(RestaurantForm restaurantForm,Integer orderStauts,Integer payStatus){

        System.out.println(restaurantForm.getSelectedRestaurant());

        JSONObject jsonObject = JSONObject.fromObject(restaurantForm.getSelectedRestaurant());
        jsonObject = jsonObject.discard("startTime");
        jsonObject = jsonObject.discard("endTime");
        jsonObject = jsonObject.discard("imgList");
        Map map = new HashMap();
        map.put("storeList",StoreDTO.class);
        map.put("productList",ProductDTO.class);
        RestaurantDTO restaurantDTO = (RestaurantDTO) JSONObject.toBean(jsonObject, RestaurantDTO.class,map);

        List<OrderMaster> orderMasterList = new ArrayList<>();
        //遍历Store,一个store一个订单
        for(StoreDTO storeDTO : restaurantDTO.getStoreList()){

            String orderId = KeyUtils.genUniqueKey();
            BigDecimal storeTotalPrice = new BigDecimal(restaurantDTO.getSendPrice().toBigInteger());
            //1.查询商品
            for(ProductDTO productDTO : storeDTO.getProductList()){
                Product product = productService.findOne(productDTO.getId());
                if(product == null){
                    throw new CddEcxeption(ResultEnum.PRODUCT_NOT_EXIST);
                }
                //2.计算总价
                storeTotalPrice = product.getPrice()
                        .multiply(new BigDecimal(productDTO.getSelectNum()))
                        .add(storeTotalPrice);
                //3.订单详单入库
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.setId(KeyUtils.genUniqueKey());
                orderDetail.setOrderId(orderId);
                orderDetail.setProductId(product.getId());
                orderDetail.setProductName(product.getName());
                orderDetail.setProductNum(productDTO.getSelectNum());
                orderDetail.setProductPrice(product.getPrice());
                orderDetail.setProductIcon(product.getIcon());
                orderDetailDao.save(orderDetail);
            }
            //4.订单入库
            OrderMaster orderMaster = new OrderMaster();
            orderMaster.setId(orderId);
            orderMaster.setStoreId(storeDTO.getId());
            orderMaster.setStoreNumber(storeDTO.getNumber());
            orderMaster.setStoreName(storeDTO.getName());

            orderMaster.setRestaurantId(restaurantDTO.getId());
            orderMaster.setRestaurantLogo(restaurantDTO.getLogo());
            orderMaster.setBuyerOpenid(restaurantForm.getOpenId());
            orderMaster.setOrderStatus(orderStauts);
            orderMaster.setPayStatus(payStatus);
            orderMaster.setOrderType(restaurantForm.getOrderType());
            orderMaster.setRemark(restaurantForm.getRemark());
            orderMaster.setTotalPrice(storeTotalPrice);
            orderMaster.setLinkman(restaurantForm.getLinkman());
            orderMaster.setPhone(restaurantForm.getPhone());
            orderMaster.setAddress(restaurantForm.getAddress());
            orderMasterDao.save(orderMaster);
            //扣库存
            List<CartDTO> cartDTOList = storeDTO.getProductList().stream()
                    .map(e -> new CartDTO(e.getId(), e.getSelectNum()))
                    .collect(Collectors.toList());
            productService.decreaseStock(cartDTOList);

            orderMasterList.add(orderMaster);
        }

        //查询订单并提交到商家前端
        new WebSocket().sendMessage("有新订单！");

        return orderMasterList;
    }

    public List<OrderMaster> create(RestaurantForm restaurantForm) {

        if(restaurantForm.getOrderType() == OrderTypeEnum.ORDERING.getCode() ||
                restaurantForm.getOrderType() == OrderTypeEnum.OUTFOOD.getCode()){
            List<OrderMaster> orderMasterList = createBefore(restaurantForm,
                                                                OrderStatusEnum.NEW.getCode(),
                                                                PayStatusEnum.NO.getCode());
            return orderMasterList;
        }

        if(restaurantForm.getOrderType() == OrderTypeEnum.LINEUP.getCode()){

            List<OrderMaster> orderMasterList = createBefore(restaurantForm,
                                                                OrderStatusEnum.RECEIPT.getCode(),
                                                                PayStatusEnum.NO.getCode());

            return orderMasterList;
        }
        return null;
    }

    //支付订单
    public List<OrderMaster> toPay(List<String> orderIdList) {
        List<OrderMaster> orderMasterList = new ArrayList<>();
        for (String orderId : orderIdList){
            OrderMaster orderMaster = orderMasterDao.findOne(orderId);
            //修改支付状态（已支付）
            orderMaster.setPayStatus(PayStatusEnum.YES.getCode());
            OrderMaster orderMasterResult = orderMasterDao.save(orderMaster);
            orderMasterList.add(orderMasterResult);
        }
        return orderMasterList;
    }

    //查询所有订单（客户端）
    public List<OrderDTO> findAll(String openId) {

        List<OrderDTO> orderDTOList = new ArrayList<>();

        //1.查询订单主信息
        Sort sort = new Sort(Sort.Direction.DESC,"createTime");
        List<OrderMaster> orderMasterList = orderMasterDao.findAllByBuyerOpenid(openId,sort);
        //2.查询订单的详单（详单可能为多个）
        for(OrderMaster orderMaster : orderMasterList){
            OrderDTO orderDTO = new OrderDTO();
            BeanUtils.copyProperties(orderMaster,orderDTO);
                List<OrderDetail> orderDetailList = orderDetailDao.findAllByOrderId(orderMaster.getId());
            orderDTO.setOrderDetailList(orderDetailList);
            orderDTOList.add(orderDTO);
        }
        return orderDTOList;
    }

    //取消订单
    public OrderMaster cancel(String orderId) {
        OrderMaster orderMaster = orderMasterDao.findOne(orderId);
        orderMaster.setOrderStatus(OrderStatusEnum.CANCEL.getCode());
        OrderMaster orderMasterResult = orderMasterDao.save(orderMaster);


        List<OrderDetail> orderDetailList = orderDetailDao.findAllByOrderId(orderMaster.getId());
        //加库存

        productService.increaseStock(orderDetailList);
        return orderMaster;
    }


    //商家端待接单查询
    public Page<OrderDTO> findOrderByPage(Pageable pageable, Integer orderStatus, Integer payStatus) {
        Page<OrderMaster> orderMasterPage = orderMasterDao.findByOrderStatusAndPayStatus(orderStatus, payStatus, pageable);

        List<OrderMaster> orderMasterList = orderMasterPage.getContent();

        //封装分页订单
        List<OrderDTO> orderList = new ArrayList<>();
        for (OrderMaster orderMaster : orderMasterList){
            //封装单个订单
            OrderDTO orderDTO = new OrderDTO();
            BeanUtils.copyProperties(orderMaster,orderDTO);
            //根据订单查询详单
            List<OrderDetail> orderDetailList = orderDetailDao.findAllByOrderId(orderDTO.getId());



            orderDTO.setOrderDetailList(orderDetailList);
            orderList.add(orderDTO);
        }
        return new PageImpl<>(orderList,pageable,orderMasterPage.getTotalElements());

    }

    @Override
    public List<OrderDTO> findOrderAll(Integer orderStatus, Integer payStatus) {
        Sort sort = new Sort(Sort.Direction.DESC,"createTime");
        List<OrderMaster> orderMasterList = orderMasterDao.findAllByOrderStatusAndPayStatus(orderStatus,payStatus,sort);

        //封装分页订单
        List<OrderDTO> orderList = new ArrayList<>();
        for (OrderMaster orderMaster : orderMasterList){
            //封装单个订单
            OrderDTO orderDTO = new OrderDTO();
            BeanUtils.copyProperties(orderMaster,orderDTO);
            //根据订单查询详单
            List<OrderDetail> orderDetailList = orderDetailDao.findAllByOrderId(orderDTO.getId());
            orderDTO.setOrderDetailList(orderDetailList);
            orderList.add(orderDTO);
        }
        return orderList;
    }

    @Override
    public Integer findBuyerSum() {

        Store store = (Store) ServletUtils.getSession().getAttribute("store");
        List<OrderMaster> orderMasterList = orderMasterDao.findAllByStoreId(store.getId());

        Map<String,String> openidCount = new HashMap<>();
        for(OrderMaster om: orderMasterList){
            if(openidCount.get(om.getBuyerOpenid())==null){
                openidCount.put(om.getBuyerOpenid(),om.getBuyerOpenid());
            }
        }
        return openidCount.size();
    }

    @Override
    public Integer findOrderSum() {
        Store store = (Store) ServletUtils.getSession().getAttribute("store");
        List<OrderMaster> orderMasterList = orderMasterDao.findAllByStoreId(store.getId());
        return orderMasterList.size();
    }

    @Override
    public BigDecimal findOrderPriceSum() {
        Store store = (Store) ServletUtils.getSession().getAttribute("store");
        List<OrderMaster> orderMasterList = orderMasterDao.findAllByOrderStatusAndPayStatusAndStoreId(
                                                        OrderStatusEnum.RECEIPT.getCode(),
                                                        PayStatusEnum.YES.getCode(),
                                                        store.getId());
        BigDecimal totalPrice = new BigDecimal(BigInteger.ZERO);
        for (OrderMaster om:orderMasterList){


            totalPrice = totalPrice.add(om.getTotalPrice());
        }

        return totalPrice;
    }

    @Override
    public OrderMaster receivedOrder(String orderId) {
        OrderMaster orderMaster = orderMasterDao.findOne(orderId);
        orderMaster.setOrderStatus(OrderStatusEnum.SUCCESS.getCode());
        OrderMaster orderMasterResult = orderMasterDao.save(orderMaster);
        return orderMaster;
    }

    @Override
    public OrderMaster achivedOrder(String orderId) {
        OrderMaster orderMaster = orderMasterDao.findOne(orderId);
        orderMaster.setOrderStatus(OrderStatusEnum.RECEIPT.getCode());
        OrderMaster orderMasterResult = orderMasterDao.save(orderMaster);
        return orderMaster;
    }

    @Override
    public OrderMaster sendedOrder(String orderId) {
        OrderMaster orderMaster = orderMasterDao.findOne(orderId);
        orderMaster.setOrderStatus(OrderStatusEnum.DELIVERY.getCode());
        OrderMaster orderMasterResult = orderMasterDao.save(orderMaster);
        return orderMaster;
    }

    @Override
    public List<Product> findProductByTopFour() {
        List<Product> productList = productService.findProductByTopFour();
        return productList;
    }

    @Override
    public OrderMaster receiveSend(String orderId, String openId) {
        OrderMaster orderMaster = orderMasterDao.findOne(orderId);
        orderMaster.setOrderStatus(OrderStatusEnum.DELIVERY.getCode());
        OrderMaster orderMasterResult = orderMasterDao.save(orderMaster);

        return orderMaster;
    }

    @Override
    public OrderMaster finshSend(String orderId, String openId) {
        OrderMaster orderMaster = orderMasterDao.findOne(orderId);
        orderMaster.setOrderStatus(OrderStatusEnum.RECEIPT.getCode());
        OrderMaster orderMasterResult = orderMasterDao.save(orderMaster);

        User user = userDao.findOne(openId);
        user.setProfit(user.getProfit().add(BigDecimal.valueOf(1)));

        return orderMaster;
    }
}
