package cn.edkso.candiandian.dto;

import cn.edkso.candiandian.domain.RestaurantImg;
import lombok.Data;

import java.math.BigDecimal;
import java.sql.Time;
import java.util.List;

@Data
public class RestaurantDTO {
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
    private List<StoreDTO> storeList;

    private List<RestaurantImg> imgList;
}
