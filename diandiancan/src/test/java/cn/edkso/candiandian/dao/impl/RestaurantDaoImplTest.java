package cn.edkso.candiandian.dao.impl;

import cn.edkso.candiandian.domain.Restaurant;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class RestaurantDaoImplTest {

    @Autowired
    private RestaurantDaoImpl restaurantDao;



    @Test
    public void findByLngAndLatTest(){
        List<Restaurant> restaurantList = restaurantDao.findByLngAndLat(113.50942, 34.81087);
        System.out.println(restaurantList);
    }
}