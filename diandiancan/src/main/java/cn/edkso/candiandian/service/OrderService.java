package cn.edkso.candiandian.service;


import cn.edkso.candiandian.domain.OrderMaster;
import cn.edkso.candiandian.domain.Product;
import cn.edkso.candiandian.dto.OrderDTO;
import cn.edkso.candiandian.form.RestaurantForm;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.math.BigDecimal;
import java.util.List;

public interface OrderService {

    //创建订单
    List<OrderMaster> create(RestaurantForm restaurantForm);

    //支付订单
    List<OrderMaster> toPay(List<String> orderIdList);

    //查询所有订单
    List<OrderDTO> findAll(String openId);

    //徐晓订单
    OrderMaster cancel(String orderId);

    //商家端通过分页查询订单
    Page<OrderDTO> findOrderByPage(Pageable pageable, Integer orderStatus, Integer payStatus);

    //商家端查询订单
    List<OrderDTO> findOrderAll(Integer orderStatus, Integer payStatus);

    //查询购物者总数
    Integer findBuyerSum();

    //查询订单总数
    Integer findOrderSum();

    //查询销售总金额
    BigDecimal findOrderPriceSum();

    //更新订单为已接单（确认接单）
    OrderMaster receivedOrder(String orderId);

    //更新订单为已完成
    OrderMaster achivedOrder(String orderId);

    OrderMaster sendedOrder(String orderId);

    //购物商品前四名
    List<Product> findProductByTopFour();

    OrderMaster receiveSend(String orderId, String openId);

    OrderMaster finshSend(String orderId, String openId);
}
