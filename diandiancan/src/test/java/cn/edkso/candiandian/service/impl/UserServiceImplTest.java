package cn.edkso.candiandian.service.impl;

import cn.edkso.candiandian.domain.User;
import cn.edkso.candiandian.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;


@RunWith(SpringRunner.class)
@SpringBootTest
public class UserServiceImplTest {

    @Autowired
    private UserService userService;

    @Test
    public void login() {
        User user = new User();

        user.setOpenId("edkso2");
        user.setGender(2);


        User userResult = userService.login(user);

        System.out.println(userResult);
    }


}