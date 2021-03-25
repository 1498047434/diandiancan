package cn.edkso.candiandian.service.impl;

import cn.edkso.candiandian.dao.ProductDao;
import cn.edkso.candiandian.dao.RestaurantDao;
import cn.edkso.candiandian.dao.RestaurantImgDao;
import cn.edkso.candiandian.dao.StoreDao;
import cn.edkso.candiandian.domain.Product;
import cn.edkso.candiandian.domain.Restaurant;
import cn.edkso.candiandian.dao.impl.RestaurantDaoImpl;
import cn.edkso.candiandian.domain.RestaurantImg;
import cn.edkso.candiandian.domain.Store;
import cn.edkso.candiandian.dto.ProductDTO;
import cn.edkso.candiandian.dto.RestaurantDTO;
import cn.edkso.candiandian.dto.StoreDTO;
import cn.edkso.candiandian.service.RestaurantService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

import java.util.List;


@Service
public class RestaurantServiceImpl implements RestaurantService {

    @Autowired
    private RestaurantDaoImpl restaurantDaoImpl;

    @Autowired
    private RestaurantDao restaurantDao;
    @Autowired
    private StoreDao storeDao;
    @Autowired
    private ProductDao productDao;

    @Autowired
    private RestaurantImgDao restaurantImgDao;

    //lng经度
    public List<Restaurant> findByLngAndLat(Double lng, Double lat) {
        List<Restaurant> restaurantList = restaurantDaoImpl.findByLngAndLat(lng, lat);
        return restaurantList;
    }


    public RestaurantDTO findById(String id) {

        //创建restaurantDto封装
        RestaurantDTO restaurantDTO = new RestaurantDTO();
        Restaurant restaurant = restaurantDao.findOne(id);

        BeanUtils.copyProperties(restaurant,restaurantDTO);

        List<StoreDTO> storeDTOList = new ArrayList<>();

        //查询storeList
        List<Store> storeList = storeDao.findAllByRestaurantIdAndStatus(restaurant.getId(),1);
        //查询imgList
        List<RestaurantImg> imgList = restaurantImgDao.findAllByRestaurantId(restaurant.getId());

        for (Store store : storeList){
            //创建storeDto封装
            StoreDTO storeDTO = new StoreDTO();
            BeanUtils.copyProperties(store,storeDTO);

            List<Product> productList = productDao.findAllByStoreId(store.getId());
            List<ProductDTO> productDTOList = new ArrayList<>();

            for(Product product : productList){
                ProductDTO productDTO = new ProductDTO();
                BeanUtils.copyProperties(product, productDTO);
                productDTOList.add(productDTO);
            }

            storeDTO.setProductList(productDTOList);
            storeDTOList.add(storeDTO);
        }
        restaurantDTO.setStoreList(storeDTOList);
        restaurantDTO.setImgList(imgList);
        return restaurantDTO;
    }
}
