package cn.edkso.candiandian.dao;

import cn.edkso.candiandian.domain.Store;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface StoreDao extends JpaRepository<Store, String> {

    List<Store> findAllByRestaurantId(String id);

    Store findByUsername(String name);

    List<Store> findAllByRestaurantIdAndStatus(String id, int i);
}
