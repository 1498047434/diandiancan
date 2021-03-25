package cn.edkso.candiandian.service.impl;

import cn.edkso.candiandian.dao.ProductDao;
import cn.edkso.candiandian.domain.OrderDetail;
import cn.edkso.candiandian.domain.Product;
import cn.edkso.candiandian.dto.CartDTO;
import cn.edkso.candiandian.enums.ResultEnum;
import cn.edkso.candiandian.exception.CddEcxeption;
import cn.edkso.candiandian.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao productDao;


    public Product findOne(String productId){

        return productDao.findOne(productId);
    }

    public List<Product> findAllByStoreId(String id) {
        return productDao.findAllByStoreId(id);
    }

    @Override
    public void decreaseStock(List<CartDTO> cartDTOList) {
        for(CartDTO cartDTO : cartDTOList){
            Product product = productDao.findOne(cartDTO.getProductId());
            int stockAgo = product.getStock() - cartDTO.getSelectNum();

            if(product == null){
                throw  new CddEcxeption(ResultEnum.PRODUCT_NOT_EXIST);
            }

            if(stockAgo < 0){
                throw  new CddEcxeption(ResultEnum.PRODUCT_STOCK_ERROR);
            }

            //设置新的库存
            product.setStock(stockAgo);
            //设置新的销量
            product.setSalesVolume(product.getSalesVolume()+cartDTO.getSelectNum());
            product.setSale(product.getSalesVolume());
            productDao.save(product);
        }
    }

    @Override
    public void increaseStock(List<OrderDetail> orderDetailList) {

        for(OrderDetail od : orderDetailList){
            Product product = productDao.findOne(od.getProductId());
            product.setStock(product.getStock()+od.getProductNum());
            product.setSalesVolume(product.getSalesVolume() - od.getProductNum());
            product.setSale(product.getSalesVolume());
            productDao.save(product);
        }
    }

    @Override
    public List<Product> findProductByTopFour() {
        Sort sort = new Sort(Sort.Direction.DESC,"salesVolume");

        List<Product> productList = productDao.findAll(sort);

        List<Product> productList2 = productList.subList(0, 4);

        return productList2;
    }
}
