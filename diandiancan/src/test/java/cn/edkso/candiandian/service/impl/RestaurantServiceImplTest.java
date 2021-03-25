package cn.edkso.candiandian.service.impl;

import cn.edkso.candiandian.domain.Restaurant;
import cn.edkso.candiandian.dto.RestaurantDTO;
import cn.edkso.candiandian.service.RestaurantService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
public class RestaurantServiceImplTest {

    @Autowired
    private RestaurantService restaurantService;

    @Test
    public void findById() {

        RestaurantDTO restaurantDTO = restaurantService.findById("3");
        System.out.println(restaurantDTO);

    }
}