package cn.edkso.candiandian.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.math.BigDecimal;
import java.sql.Time;


@Entity
@Data
public class Restaurant {

    @Id
    private String id;

    private String name;

    private String phone;

    private String linkman;

    private Integer status; //0营业 1休息 2关闭

    private Time startTime;//开始营业时间

    private Time endTime;

    private String region;

    private String address;

    private Double lng;
    private Double lat;

    private String logo;

    private Integer sendTime;  //配送时间 默认为30分钟   单位为分钟

    private BigDecimal sendPrice;

    private String notice; //公告

}
