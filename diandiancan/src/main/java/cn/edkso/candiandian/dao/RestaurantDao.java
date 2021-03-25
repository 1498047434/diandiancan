package cn.edkso.candiandian.dao;

import cn.edkso.candiandian.domain.Restaurant;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RestaurantDao extends JpaRepository<Restaurant,String> {
}
