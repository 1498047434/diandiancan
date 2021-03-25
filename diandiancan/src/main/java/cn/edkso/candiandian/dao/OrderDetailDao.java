package cn.edkso.candiandian.dao;

import cn.edkso.candiandian.domain.OrderDetail;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface OrderDetailDao extends JpaRepository<OrderDetail,String> {
    List<OrderDetail> findAllByOrderId(String id);
}
