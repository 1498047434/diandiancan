package cn.edkso.candiandian.form;


import lombok.Data;

@Data
public class UserInfoForm {

    private String code;
    private String encryptedData;
    private String iv;
}
