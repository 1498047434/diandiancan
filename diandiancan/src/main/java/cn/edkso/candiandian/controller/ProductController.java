package cn.edkso.candiandian.controller;


import cn.edkso.candiandian.domain.Product;
import cn.edkso.candiandian.service.ProductService;
import cn.edkso.candiandian.utils.ServletUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("/buyer/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    @PostMapping("list")
    public List<Product> list(@RequestParam("id") String storeId,
                                HttpServletRequest request){

//        System.out.println(ServletUtils.getSession().getAttribute("productList") +  "...............");
        List<Product> productList = productService.findAllByStoreId(storeId);

//        request.getSession().setAttribute("productList",productList);
        return productList;
    }
}
