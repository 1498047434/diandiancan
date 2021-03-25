package cn.edkso.candiandian.enums;

import lombok.Getter;

@Getter
public enum OrderStatusEnum {

    NEW(0,"新订单"),
    SUCCESS(1,"已接单"),
    DELIVERY(2,"配送中"),
    RECEIPT(3,"已完成"),
    CANCEL(4,"已取消"),
    ;
    private Integer code; //0新订单（默认） 1已接单 2配送中 3已完成 4已取消

    private String msg;

    OrderStatusEnum(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }
}
