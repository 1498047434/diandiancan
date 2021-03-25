package cn.edkso.candiandian.service;

import cn.edkso.candiandian.domain.Product;
import cn.edkso.candiandian.domain.Store;

import java.util.List;

public interface StoreService {

    List<Store> findAllByRestaurantId(String id);

    Store login(Store store);

    Store register(Store store);

    Store update(Store store);

    //更新商品
    Product update(Product product);

    Product save(Product product);

    Store findOne(String sotreId);

    //查询商品（商家端根据storeId）
    List<Product> findProductAllByStoreId();

    //查询单个商品
    Product findProductOne(String id);
}
