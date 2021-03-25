package cn.edkso.candiandian.service.impl;

import cn.edkso.candiandian.domain.Store;
import cn.edkso.candiandian.service.StoreService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
public class StoreSericeImplTest {

    @Autowired
    private StoreService storeService;

    @Test
    public void findAllByRestaurantId() {
        List<Store> storeList = storeService.findAllByRestaurantId("3");
        System.out.println(storeList);
    }
}