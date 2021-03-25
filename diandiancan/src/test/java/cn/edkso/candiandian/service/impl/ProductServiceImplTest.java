package cn.edkso.candiandian.service.impl;

import cn.edkso.candiandian.domain.Product;
import cn.edkso.candiandian.service.ProductService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ProductServiceImplTest {

    @Autowired
    private ProductService productService;

    @Test
    public void findAllByStoreId() {
        List<Product> productList = productService.findAllByStoreId("1");
        System.out.println(productList);

    }
}