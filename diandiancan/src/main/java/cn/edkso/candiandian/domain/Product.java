package cn.edkso.candiandian.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.math.BigDecimal;

@Data
@Entity
public class Product {

    @Id
    private String id;
    private String name;
    private String icon;
    private Integer sale = 0;
    private Integer stock = 999;
    private BigDecimal price;
    private String storeId;
    private Integer salesVolume = 0; //销量
    private String status;
    private String descript;//商品描述

}
