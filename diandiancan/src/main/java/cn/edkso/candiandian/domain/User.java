package cn.edkso.candiandian.domain;


import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.math.BigDecimal;
import java.math.BigInteger;

@Data
@Entity
public class User {

    @Id
    private String openId;

    private String nickName;

    private String avatarUrl;
    private Integer gender; //0位置 1男 2女
    private String country;
    private String province;
    private String city;
    private Integer authenCode = 0;
    private String aimg1;
    private String aimg2;
    private BigDecimal profit = new BigDecimal(BigInteger.ZERO);
}
