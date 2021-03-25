package cn.edkso.candiandian.service;


import cn.edkso.candiandian.domain.User;



public interface UserService {

    //用户登录
    User login(User user);

    //用户认证查询
    User authenCheck(String openId);

    //用户学生证上传
    User authenUpload(User user);
}
