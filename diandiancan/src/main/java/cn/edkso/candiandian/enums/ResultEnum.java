package cn.edkso.candiandian.enums;

public enum  ResultEnum {


    PRODUCT_NOT_EXIST(1,"该商品不存在"),
    PRODUCT_STOCK_ERROR(2,"库存不足"),



    USERNAME_OR_PASSWORD_ERROR(21,"用户名或密码错误"),
    //    RESTAURANT_IS_EXIST(22,"餐厅编号存在"),
    RESTAURANT_ID_NOT_EXIST(22,"餐厅编号不存在"),
    STORE_USERNAME_IS_EXIST(22,"店铺用户名已存在"),
    STORE_USERNAME_NOT_EXIST(22,"店铺用户名不存在"),


    FILE_SAVE_ERROR(71,"文件保存出错！"),
    ;
    private Integer code;

    private String message;

    ResultEnum(Integer code, String message){
        this.code = code;
        this.message = message;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
