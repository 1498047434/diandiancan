package cn.edkso.candiandian.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.math.BigDecimal;

@Data
@Entity
public class OrderDetail {

    @Id
    private String id;
    private String orderId;
    private String productId;
    private String productName;
    private BigDecimal productPrice;

    private Integer productNum;
    private String productIcon;



}
