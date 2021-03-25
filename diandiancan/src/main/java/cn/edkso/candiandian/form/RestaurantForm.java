package cn.edkso.candiandian.form;

import cn.edkso.candiandian.dto.RestaurantDTO;
import lombok.Data;

import java.math.BigDecimal;

@Data
public class RestaurantForm {

    private String  selectedRestaurant;

    private String remark;

    private String openId;

    private Integer orderType;


    private String linkman;

    private String phone;

    private String address;

}
