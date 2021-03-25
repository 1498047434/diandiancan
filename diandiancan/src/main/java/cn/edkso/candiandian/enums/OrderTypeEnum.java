package cn.edkso.candiandian.enums;

import lombok.Getter;

@Getter
public enum OrderTypeEnum {

    ORDERING(0,"点餐"),
    OUTFOOD(1,"外卖"),
    LINEUP(2,"买单"),
    ;
    private Integer code; //0点餐 1外卖 2买单

    private String msg;

    OrderTypeEnum(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }
}
