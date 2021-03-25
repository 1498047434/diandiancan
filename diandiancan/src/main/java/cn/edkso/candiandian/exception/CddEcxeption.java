package cn.edkso.candiandian.exception;

import cn.edkso.candiandian.enums.ResultEnum;

public class CddEcxeption extends RuntimeException{

    private Integer code;

    public CddEcxeption(ResultEnum resultEnum){
        super(resultEnum.getMessage());
        this.code = resultEnum.getCode();
    }
}
