package cn.edkso.candiandian.service.impl;

import cn.edkso.candiandian.dao.UserDao;
import cn.edkso.candiandian.domain.User;
import cn.edkso.candiandian.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;


    @Override
    public User login(User user) {

        User userResult = userDao.save(user);
        return userResult;
    }

    @Override
    public User authenCheck(String openId) {
        User userResult = userDao.findOne(openId);
        return userResult;
    }

    @Override
    public User authenUpload(User user) {
        User userResult = userDao.save(user);
        return userResult;
    }
}
