package cn.edkso.candiandian.dao;

import cn.edkso.candiandian.domain.OrderMaster;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.math.BigDecimal;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
public class OrderDaoTest {

    @Autowired
    private OrderMasterDao orderMasterDao;

    @Test
    public void saveTest(){
        OrderMaster orderMaster = new OrderMaster();
        orderMaster.setId("2");
        orderMaster.setRestaurantId("1");
        orderMaster.setStoreId("1");
        orderMaster.setBuyerOpenid("123456");
        orderMaster.setTotalPrice(BigDecimal.valueOf(20));

        orderMasterDao.save(orderMaster);
    }
}