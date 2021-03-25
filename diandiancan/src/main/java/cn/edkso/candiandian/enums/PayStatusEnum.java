package cn.edkso.candiandian.enums;

import lombok.Getter;

@Getter
public enum PayStatusEnum {
    NO(0,"未支付"),
    YES(1,"已支付");

    private Integer code;
    private String msg;

    PayStatusEnum(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }
}
