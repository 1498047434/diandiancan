package cn.edkso.candiandian.service.impl;

import cn.edkso.candiandian.dao.ProductDao;
import cn.edkso.candiandian.dao.StoreDao;
import cn.edkso.candiandian.domain.Product;
import cn.edkso.candiandian.domain.Store;
import cn.edkso.candiandian.dto.RestaurantDTO;
import cn.edkso.candiandian.enums.ResultEnum;
import cn.edkso.candiandian.exception.CddEcxeption;
import cn.edkso.candiandian.service.RestaurantService;
import cn.edkso.candiandian.service.StoreService;
import cn.edkso.candiandian.utils.KeyUtils;
import cn.edkso.candiandian.utils.MD5Utils;
import cn.edkso.candiandian.utils.ServletUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StoreSericeImpl implements StoreService {

    @Autowired
    private StoreDao storeDao;

    @Autowired
    private RestaurantService restaurantService;

    @Autowired
    private ProductDao productDao;

    /**
     * 根据id查找store
     * @param sotreId
     * @return
     */
    public Store findOne(String sotreId) {
        return storeDao.findOne(sotreId);
    }
    @Override
    public List<Store> findAllByRestaurantId(String id) {
        return storeDao.findAllByRestaurantId(id);
    }

    public Store login(Store store) {
        Store storeResult = storeDao.findByUsername(store.getUsername());

        if(storeResult == null){
            throw new CddEcxeption(ResultEnum.STORE_USERNAME_NOT_EXIST);
        }
        boolean equals = storeResult.getPassword().equals(MD5Utils.md5(store.getPassword()));
        if(!equals){
            throw new CddEcxeption(ResultEnum.USERNAME_OR_PASSWORD_ERROR);
        }
        return storeResult;
    }

    public Store register(Store store) {
        try {
            RestaurantDTO RestaurantDTO = restaurantService.findById(store.getRestaurantId());
        }catch (Exception e){
            throw new CddEcxeption(ResultEnum.RESTAURANT_ID_NOT_EXIST);
        }

        Store storeExist = storeDao.findByUsername(store.getUsername());
        if(storeExist != null){
            throw new CddEcxeption(ResultEnum.STORE_USERNAME_IS_EXIST);
        }

        store.setId(KeyUtils.bianHao());
        store.setPassword(MD5Utils.md5(store.getPassword()));
        Store storeResult = storeDao.save(store);
        return storeResult;

    }

    @Override
    public Store update(Store store) {

        Store storeResult1 = storeDao.findOne(store.getId());
        if(store.getPassword()!= null){
            if (!(MD5Utils.md5(store.getPassword()).equals(storeResult1.getPassword()))){
                storeResult1.setPassword(MD5Utils.md5(store.getPassword()));
            }
        }

        if(store.getLinkman()!= null && !store.getLinkman().equals(storeResult1.getLinkman())){
            storeResult1.setLinkman(store.getLinkman());
        }
        if(store.getLinkman()!= null && !store.getLinkman().equals(storeResult1.getLinkman())){
            storeResult1.setLinkman(store.getLinkman());
        }
        if(store.getName()!= null && !store.getName().equals(storeResult1.getName())){
            storeResult1.setName(store.getName());
        }
        if(store.getPhone()!= null && !store.getPhone().equals(storeResult1.getPhone())){
            storeResult1.setPhone(store.getPhone());
        }
        if(store.getStatus()!= null && !store.getStatus().equals(storeResult1.getStatus())){
            storeResult1.setStatus(store.getStatus());
        }

        Store storeResult2 = storeDao.save(storeResult1);
        return storeResult2;
    }

    @Override
    public Product update(Product product) {
        Product productResult = productDao.findOne(product.getId());
        if(product.getName()!= null && !product.getName().equals(productResult.getName())){
            productResult.setName(product.getName());
        }
        if(product.getPrice()!= null && !product.getPrice().equals(productResult.getPrice())){
            productResult.setPrice(product.getPrice());
        }
        if(product.getIcon()!= null && !product.getIcon().equals(productResult.getIcon())){
            productResult.setIcon(product.getIcon());
        }
        if(product.getStock()!= null && !product.getStock().equals(productResult.getStock())){
            productResult.setStock(product.getStock());
        }
        if(product.getSale()!= null && !product.getSale().equals(productResult.getSale())){
            productResult.setSale(product.getSale());
        }

        if(product.getStatus()!= null && !product.getStatus().equals(productResult.getStatus())){
            productResult.setStatus(product.getStatus());
        }
        if(product.getDescript()!= null && !product.getDescript().equals(productResult.getDescript())){
            productResult.setDescript(product.getDescript());
        }

        Product productResult2 = productDao.save(productResult);
        return productResult2;
    }


    @Override
    public Product save(Product product) {
        product.setId(KeyUtils.bianHao());
        Store store = (Store) ServletUtils.getSession().getAttribute("store");
        product.setStoreId(store.getId());
        Product productResult = productDao.save(product);
        return productResult;
    }

    @Override
    public List<Product> findProductAllByStoreId() {

        Store store = (Store) ServletUtils.getSession().getAttribute("store");
        List<Product> productList = productDao.findAllByStoreId(store.getId());
        return productList;
    }

    @Override
    public Product findProductOne(String id) {
        Product one = productDao.findOne(id);

        return one;
    }
}
