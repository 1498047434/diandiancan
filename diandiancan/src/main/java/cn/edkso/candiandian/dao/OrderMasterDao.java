package cn.edkso.candiandian.dao;


import cn.edkso.candiandian.domain.OrderMaster;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrderMasterDao extends JpaRepository<OrderMaster, String> {


    List<OrderMaster> findAllByBuyerOpenid(String openId, Sort sort);

    Page<OrderMaster> findByOrderStatusAndPayStatus(Integer code, Integer yes, Pageable pageable);

    List<OrderMaster> findAllByOrderStatusAndPayStatus(Integer orderStatus, Integer payStatus, Sort sort);
    List<OrderMaster> findAllByOrderStatusAndPayStatus(Integer orderStatus, Integer payStatus);

    List<OrderMaster> findAllByStoreId(String id);

    List<OrderMaster> findAllByOrderStatusAndPayStatusAndStoreId(Integer code, Integer code1, String id);
}
