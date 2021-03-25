package cn.edkso.candiandian.controller;


import cn.edkso.candiandian.domain.Product;
import cn.edkso.candiandian.domain.Restaurant;
import cn.edkso.candiandian.domain.Store;
import cn.edkso.candiandian.dto.RestaurantDTO;
import cn.edkso.candiandian.service.ProductService;
import cn.edkso.candiandian.service.RestaurantService;
import cn.edkso.candiandian.service.StoreService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/buyer/restaurant")
public class RestaurantController {


    @Autowired
    private RestaurantService restaurantService;


    //创建订单   lng经度
    @PostMapping("list")
    public List<Restaurant> list(@RequestParam("lng") Double lng,
                            @RequestParam("lat") Double lat ){
        List<Restaurant> restaurantList = restaurantService.findByLngAndLat(lng, lat);
        return restaurantList;
    }

    @PostMapping("ordering")
    public RestaurantDTO ordering(@RequestParam("id") String id){
        RestaurantDTO restaurantDTO = restaurantService.findById(id);
        return restaurantDTO;
    }


}
