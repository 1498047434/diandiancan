package cn.edkso.candiandian.utils;

import cn.edkso.candiandian.domain.User;
import com.google.gson.Gson;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class ServletUtils {

    public static ServletRequestAttributes getRequestAttributes(){

        return (ServletRequestAttributes)RequestContextHolder.getRequestAttributes();
    }

    public static HttpServletRequest getRequest(){

        return getRequestAttributes().getRequest();
    }


    public static HttpSession getSession(){

        return getRequest().getSession();
    }

    public static User getCurrentUser(){
        HttpSession session = ServletUtils.getSession();
        Gson gson = new Gson();
        User user = gson.fromJson(session.getAttribute("user").toString(), User.class);
        return user;
    }

}
