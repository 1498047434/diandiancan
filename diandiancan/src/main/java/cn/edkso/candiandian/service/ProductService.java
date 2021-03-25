package cn.edkso.candiandian.service;

import cn.edkso.candiandian.domain.OrderDetail;
import cn.edkso.candiandian.domain.Product;
import cn.edkso.candiandian.dto.CartDTO;

import java.util.List;

public interface ProductService {

    public Product findOne(String productId);

    List<Product> findAllByStoreId(String id);

    void decreaseStock(List<CartDTO> cartDTOList);

    //增加库存
    void increaseStock(List<OrderDetail> orderDetailList);

    List<Product> findProductByTopFour();
}
