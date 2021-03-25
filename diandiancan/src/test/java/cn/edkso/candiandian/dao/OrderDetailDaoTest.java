package cn.edkso.candiandian.dao;

import cn.edkso.candiandian.domain.OrderDetail;
import cn.edkso.candiandian.domain.OrderMaster;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
public class OrderDetailDaoTest {

    @Autowired
    private OrderDetailDao orderDetailDao;

    @Test
    public void saveTest(){
        OrderDetail orderDetail = new OrderDetail();
        orderDetail.setId("1");
//        order.setBuyerOpenid("123456");
//        order.setTotalPrice(BigDecimal.valueOf(20));

        orderDetailDao.save(orderDetail);
    }
}