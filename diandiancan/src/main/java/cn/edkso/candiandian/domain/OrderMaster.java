package cn.edkso.candiandian.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.math.BigDecimal;
import java.sql.Timestamp;

@Data
@Entity
public class OrderMaster {

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
    private Timestamp createTime;
    private Timestamp updataTime;

}
