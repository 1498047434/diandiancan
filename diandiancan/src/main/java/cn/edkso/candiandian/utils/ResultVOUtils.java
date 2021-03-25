package cn.edkso.candiandian.utils;

import cn.edkso.candiandian.enums.ResultEnum;
import cn.edkso.candiandian.vo.ResuleVo;

public class ResultVOUtils {

    public static ResuleVo success(Object object){
        ResuleVo resuleVo = new ResuleVo();

        resuleVo.setDate(object);
        resuleVo.setCode(1);
        resuleVo.setMsg("成功");

        return resuleVo;
    }

    public static ResuleVo success(Object object, Integer totalPages){
        ResuleVo resuleVo = new ResuleVo();

        resuleVo.setDate(object);
        resuleVo.setCode(1);
        resuleVo.setMsg("成功");
        resuleVo.setTotalPages(totalPages);
        return resuleVo;
    }

    public static ResuleVo success(){
        return success(null);
    }

    public static ResuleVo error(Integer code, String msg){
        ResuleVo resuleVo = new ResuleVo();
        resuleVo.setCode(code);
        resuleVo.setMsg(msg);
        return resuleVo;
    }

    public static ResuleVo error(ResultEnum resultEnum){
        ResuleVo resuleVo = new ResuleVo();
        resuleVo.setCode(resultEnum.getCode());
        resuleVo.setMsg(resultEnum.getMessage());
        return resuleVo;
    }
}
