package cn.edkso.candiandian.service.impl;

import cn.edkso.candiandian.dao.OrderMasterDao;
import cn.edkso.candiandian.domain.OrderMaster;
import cn.edkso.candiandian.domain.Product;
import cn.edkso.candiandian.dto.ProductDTO;
import cn.edkso.candiandian.dto.RestaurantDTO;
import cn.edkso.candiandian.dto.StoreDTO;
import cn.edkso.candiandian.service.OrderService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;


@RunWith(SpringRunner.class)
@SpringBootTest
public class OrderServiceImplTest {


    @Autowired
    private OrderService orderService;

    @Test
    public void create() {

        ProductDTO productDTO1 = new ProductDTO();
        productDTO1.setId("1");
        productDTO1.setSelectNum(2);
        ProductDTO productDTO2 = new ProductDTO();
        productDTO2.setId("2");
        productDTO2.setSelectNum(2);


        StoreDTO storeDTO = new StoreDTO();
        storeDTO.setId("1");
        List<ProductDTO> productDTOList = new ArrayList<>();
        productDTOList.add(productDTO1);
        productDTOList.add(productDTO2);
        storeDTO.setProductList(productDTOList);


        RestaurantDTO restaurantDTO = new RestaurantDTO();
        restaurantDTO.setId("3");
        List<StoreDTO> storeDTOList = new ArrayList<>();
        storeDTOList.add(storeDTO);
        restaurantDTO.setStoreList(storeDTOList);

//        List<OrderMaster> orderMasterList = orderService.create(restaurantDTO);

//        System.out.println(orderMasterList);
    }
}