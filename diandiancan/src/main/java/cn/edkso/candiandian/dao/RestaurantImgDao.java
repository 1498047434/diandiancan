package cn.edkso.candiandian.dao;

import cn.edkso.candiandian.domain.RestaurantImg;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RestaurantImgDao extends JpaRepository<RestaurantImg,String> {

    List<RestaurantImg> findAllByRestaurantId(String id);
}
