package cn.edkso.candiandian.controller;


import cn.edkso.candiandian.domain.OrderMaster;

import cn.edkso.candiandian.domain.Product;
import cn.edkso.candiandian.domain.Store;
import cn.edkso.candiandian.dto.IndexShowDTO;
import cn.edkso.candiandian.dto.OrderDTO;
import cn.edkso.candiandian.enums.OrderStatusEnum;
import cn.edkso.candiandian.enums.PayStatusEnum;
import cn.edkso.candiandian.form.RestaurantForm;
import cn.edkso.candiandian.service.OrderService;

import cn.edkso.candiandian.utils.ResultVOUtils;
import cn.edkso.candiandian.vo.ResuleVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;


@RestController
@RequestMapping({
        "/buyer/order",
        "/seller/order"
})
public class OrderController {

    @Autowired
    private OrderService orderService;

    @PostMapping("create")
    public List<OrderMaster> create(@Valid RestaurantForm restaurantForm){
        List<OrderMaster> orderMasterList = orderService.create(restaurantForm);

        return orderMasterList;
    }

    @PostMapping("toPay")
    public String toPay(@RequestParam List<String> orderIdList){

        List<OrderMaster> orderMasterList = orderService.toPay(orderIdList);
        if(orderMasterList.size() > 0){
            return "支付成功！";
        }else{
            return "支付失败!";
        }

    }

    @PostMapping("findAll")
    public List<OrderDTO> findAll(@RequestParam String openId){
        System.out.println(openId);
        List<OrderDTO> orderDTOList = orderService.findAll(openId);
        System.out.println(orderDTOList);
        return orderDTOList;
    }

    //订单取消
    @PostMapping("cancel")
    public String cancel(@RequestParam String orderId){

        OrderMaster orderMaster = orderService.cancel(orderId);
        if(orderMaster != null){
            return "取消成功！";
        }else{
            return "取消失败!";
        }
    }
    //接受配送
    @PostMapping("receiveSend")
    public String receiveSend(@RequestParam String orderId,
                              @RequestParam String openId){
        System.out.println(orderId+ "**********");
        System.out.println(openId + "**********");
        OrderMaster orderMaster = orderService.receiveSend(orderId, openId);
        if(orderMaster != null){
            return "接收配送成功！";
        }else{
            return "接收配送取消失败!";
        }
    }
    //完成配送
    @PostMapping("finshSend")
    public String finshSend(@RequestParam String orderId,
                              @RequestParam String openId){

        OrderMaster orderMaster = orderService.finshSend(orderId, openId);
        if(orderMaster != null){
            return "完成配送成功！";
        }else{
            return "完成配送取消失败!";
        }
    }

//    //商家端待接单(待接收)
//    @PostMapping("waitOrder")
//    public ResuleVo<Store> waitOrder(@RequestParam Integer page,
//                                     @RequestParam Integer size){
//        if(page == null){
//            page = 0;
//        }else{
//            page = page -1;
//        }
//
//        if(size == null){
//            size = 3;
//        }
//        Sort sort = new Sort(Sort.Direction.DESC,"createTime");
//        PageRequest pageRequest = new PageRequest(page,size,sort);
//
//        Page<OrderDTO> orderDTOPage = orderService.waitOrder(pageRequest,OrderStatusEnum.NEW.getCode(), PayStatusEnum.YES.getCode());
//        return ResultVOUtils.success(orderDTOPage.getContent(),orderDTOPage.getTotalPages());
//    }
//商家端待接单(待接收)
    @PostMapping("waitOrder")
    //    @GetMapping("waitOrder")
    public ResuleVo<Store> waitOrder(){
        List<OrderDTO> orderDTOList = orderService.findOrderAll(OrderStatusEnum.NEW.getCode(), PayStatusEnum.YES.getCode());
        return ResultVOUtils.success(orderDTOList);
    }


    //商家端已接受
    @PostMapping("acceptOrder")
    public ResuleVo<Store> acceptOrder(@RequestParam Integer page,
                                     @RequestParam Integer size){

        if(page == null){
            page = 0;
        }else{
            page = page -1;
        }


        if(size == null){
            size = 3;
        }

        PageRequest pageRequest = new PageRequest(page,size);
        Page<OrderDTO> orderDTOPage = orderService.findOrderByPage(pageRequest,OrderStatusEnum.SUCCESS.getCode(), PayStatusEnum.YES.getCode());
        return ResultVOUtils.success(orderDTOPage.getContent(),orderDTOPage.getTotalPages());
    }

    //商家已完成接单
    @PostMapping("finishOrder")
    public ResuleVo<Store> finishOrder(@RequestParam Integer page,
                                     @RequestParam Integer size){
        System.out.println(page + "page");
        System.out.println(size + "size");
        if(page == null){
            page = 0;
        }else{
            page = page -1;
        }

        if(size == null){
            size = 3;
        }
        PageRequest pageRequest = new PageRequest(page,size);


        Page<OrderDTO> orderDTOPage = orderService.findOrderByPage(pageRequest,OrderStatusEnum.RECEIPT.getCode(), PayStatusEnum.YES.getCode());
        return ResultVOUtils.success(orderDTOPage.getContent(),orderDTOPage.getTotalPages());
    }

    //商家配送中订单
    @PostMapping("sendOrder")
    public ResuleVo<Store> sendingOrder(@RequestParam Integer page,
                                       @RequestParam Integer size){
        if(page == null){
            page = 0;
        }else{
            page = page -1;
        }

        if(size == null){
            size = 3;
        }
        PageRequest pageRequest = new PageRequest(page,size);


        Page<OrderDTO> orderDTOPage = orderService.findOrderByPage(pageRequest,OrderStatusEnum.DELIVERY.getCode(), PayStatusEnum.YES.getCode());
        return ResultVOUtils.success(orderDTOPage.getContent(),orderDTOPage.getTotalPages());
    }

    /**
     * 购物人数
     * 物品种类
     * 总价钱
     */
    @RequestMapping("buyerSum")
    public ResuleVo<IndexShowDTO> buyerSum(){

        Integer buyerSum = orderService.findBuyerSum();
        Integer orderSum = orderService.findOrderSum();
        BigDecimal orderPriceSum = orderService.findOrderPriceSum();

        IndexShowDTO indexShowDTO = new IndexShowDTO();
        indexShowDTO.setBuyerSum(buyerSum);
        indexShowDTO.setOrderSum(orderSum);
        indexShowDTO.setOrderPriceSum(orderPriceSum);

        return ResultVOUtils.success(indexShowDTO);
    }

    //商城订单
    @PostMapping("orderSum")
    public ResuleVo<Integer> orderSum(){

        Integer sum = orderService.findOrderSum();

        return ResultVOUtils.success(sum);
    }

    //交易金额
    @PostMapping("orderPriceSum")
    public ResuleVo<BigDecimal> orderPriceSum(){

        BigDecimal sum = orderService.findOrderPriceSum();

        return ResultVOUtils.success(sum);
    }

    //购物商品前四名
    @PostMapping("productRank")
    public ResuleVo<List<Product>> productRank(){

//        List<Product> productList = new ArrayList<>();
//        Product p1 = new Product();
//        Product p2 = new Product();
//        Product p3 = new Product();
//        Product p4 = new Product();
//
//        p1.setName("大盘鸡");
//        p1.setName("李鑫的脑花");
//        p1.setName("周乐韩的肉");
//        p1.setName("刀削面");

        List<Product> productList = orderService.findProductByTopFour();


        return ResultVOUtils.success(productList);
    }

    //更新订单为已接单（确认接单）
    @PostMapping("receivedOrder")
    public ResuleVo receivedOrder(@RequestParam String id){

        OrderMaster orderMaster = orderService.receivedOrder(id);
        if(orderMaster != null){
            return ResultVOUtils.success();
        }else{
            return ResultVOUtils.error(-1,"接收订单失败");
        }
    }

    //更新订单为已完成
    @PostMapping("achivedOrder")
    public ResuleVo achivedOrder(@RequestParam String id){

        OrderMaster orderMaster = orderService.achivedOrder(id);
        if(orderMaster != null){
            return ResultVOUtils.success();
        }else{
            return ResultVOUtils.error(-1,"完成订单失败");
        }
    }

    //更新订单为在配送状态
    @PostMapping("sendedOrder")
    public ResuleVo sendedOrder(@RequestParam String id){

        OrderMaster orderMaster = orderService.sendedOrder(id);
        if(orderMaster != null){
            return ResultVOUtils.success();
        }else{
            return ResultVOUtils.error(-1,"完成订单失败");
        }
    }


}
