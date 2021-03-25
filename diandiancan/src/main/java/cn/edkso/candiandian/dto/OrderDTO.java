package cn.edkso.candiandian.dto;

import cn.edkso.candiandian.domain.OrderDetail;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.List;

@Data
public class OrderDTO {

    @Id
    private String id;
    private String restaurantId;
    private String restaurantLogo;
    private String storeId;
    private Integer storeNumber;
    private String storeName;
    private String buyerOpenid;

    private BigDecimal totalPrice;
    private String linkman;
    private String phone;
    private String address;
    private String remark;
    private Integer orderStatus = 0;
    private Integer payStatus = 0;
    private Integer orderType = 0;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Timestamp createTime;
    private Timestamp updataTime;

    private List<OrderDetail> orderDetailList;

}
