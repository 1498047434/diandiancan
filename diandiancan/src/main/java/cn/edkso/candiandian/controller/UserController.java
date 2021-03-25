package cn.edkso.candiandian.controller;

import cn.edkso.candiandian.domain.Product;
import cn.edkso.candiandian.domain.Store;
import cn.edkso.candiandian.domain.User;
import cn.edkso.candiandian.enums.ResultEnum;
import cn.edkso.candiandian.exception.CddEcxeption;
import cn.edkso.candiandian.form.UserInfoForm;
import cn.edkso.candiandian.service.StoreService;
import cn.edkso.candiandian.service.UserService;
import cn.edkso.candiandian.utils.DecryptEncryptedDataUtils;
import cn.edkso.candiandian.utils.HttpRequestUtils;
import cn.edkso.candiandian.utils.ResultVOUtils;
import cn.edkso.candiandian.utils.ServletUtils;
import cn.edkso.candiandian.vo.ResuleVo;
import net.sf.json.JSONObject;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.session.data.redis.config.annotation.web.http.EnableRedisHttpSession;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;


@RestController
@RequestMapping({"/buyer/user",
                "/seller/user"})
@Configurable
@EnableRedisHttpSession
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private StoreService storeService;

    //用户登录
    @PostMapping("login")
    public User login(@Valid UserInfoForm userInfoForm,
                      HttpServletRequest request){
        System.out.println(request.getSession().getAttribute("user") + "-----------------------------");
        //通过code获得sessionkey
        String sessionkey = null;
        try {
            sessionkey = new DecryptEncryptedDataUtils().getSessionkey(userInfoForm.getCode());
        } catch (Exception e) {
            e.printStackTrace();
        }
        //通过解密获得个人隐私json
        JSONObject jsonObject = new DecryptEncryptedDataUtils().getUserInfo(userInfoForm.getEncryptedData(), sessionkey,
                userInfoForm.getIv());

        //去除不要的键值对
        jsonObject = jsonObject.discard("watermark");
        //封装到user对象
        User user = (User) JSONObject.toBean(jsonObject, User.class);
        
        //查询数据库登录
        User UserResult = userService.login(user);
        //存到session
        //request.getSession().setAttribute("user", new Gson().toJson(UserResult));
        return  UserResult;
    }

    //用户认证查询
    @PostMapping("authenCheck")
    public User authenCheck(@RequestParam String openId){

        System.out.println(openId);

        User user = userService.authenCheck(openId);

        return user;
    }

    //用户认证上传
    @PostMapping("authenUpload")
    public ResuleVo authenUpload(MultipartFile uploadFile,
                                 @RequestParam String openId,
                                 @RequestParam String currentImg) {

        System.out.println(uploadFile.getOriginalFilename());
        System.out.println(openId);
        System.out.println(currentImg);
        //重命名文件名
        String uploadFileName = uploadFile.getOriginalFilename();
        String suffix = uploadFileName.substring(uploadFileName.lastIndexOf("."));
        SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddHHmmss");
        uploadFileName = sf.format(new Date()) + (new Random().nextInt(99999)) + suffix;

        User user = userService.authenCheck(openId);
        if(Integer.valueOf(currentImg) == 1){
            user.setAimg1("https://edkso.mynatapp.cc/candiandian/img/user/authen/" + uploadFileName);
        }else if(Integer.valueOf(currentImg) == 2){
            user.setAimg2("https://edkso.mynatapp.cc/candiandian/img/user/authen/" + uploadFileName);
            user.setAuthenCode(1);
        }

        User userResult = userService.authenUpload(user);

        if (userResult != null) {
            //保存文件
            try {
                File saveFile = new File(ResourceUtils.getURL("classpath:").getPath());
                saveFile = new File(saveFile.getPath() + "/static/img/user/authen", uploadFileName);
                byte[] bytes = uploadFile.getBytes();
                OutputStream out = new FileOutputStream(saveFile);
                out.write(bytes);
                out.flush();
                out.close();
            } catch (IOException e) {
                e.printStackTrace();
                new CddEcxeption(ResultEnum.FILE_SAVE_ERROR);
                return ResultVOUtils.error(-1, "文件保存失败");
            }
            return ResultVOUtils.success();
        } else {
            return ResultVOUtils.error(-1, "存入数据库失败");
        }
    }
    //登陆
    @PostMapping("login_seller")
    public ResuleVo<Store> login_seller(@Valid Store store){
        System.out.println(store);


        Store storeResult =  storeService.login(store);

        ServletUtils.getSession().setAttribute("store",storeResult);
        Store storeResult1 = (Store) ServletUtils.getSession().getAttribute("store");

        System.out.println(storeResult1.getUsername() + "*****");
        System.out.println(storeResult + "ssssssss");
        System.out.println(ResultVOUtils.success(storeResult)+ "zzzzzzzzzz");
        return ResultVOUtils.success(storeResult);

    }

    //注册
    @PostMapping("register")
    public ResuleVo<Store> register(@Valid Store store){

        System.out.println(store);
        Store storeResult = storeService.register(store);

        System.out.println("注册成功");

        return ResultVOUtils.success(storeResult);
    }

    //查询用户
    @PostMapping("findStore")
    public ResuleVo<Store> findStore(){

        Store store = (Store) ServletUtils.getSession().getAttribute("store");

        System.out.println("*****************" + store);
        return ResultVOUtils.success(store);
    }

    //完善和修改
    @PostMapping("update")
    public ResuleVo<Store> update(@Valid Store store){
        System.out.println(store);

        Store storeResult = storeService.update(store);
        ServletUtils.getSession().setAttribute("store",storeResult);

        System.out.println("修改成功");
        return ResultVOUtils.success(storeResult);
    }
}
