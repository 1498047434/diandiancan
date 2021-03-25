package cn.edkso.candiandian.dao;

import cn.edkso.candiandian.domain.Product;
import cn.edkso.candiandian.dto.CartDTO;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductDao extends JpaRepository<Product,String> {

    List<Product> findAllByStoreId(String id);

}
