package cn.edkso.candiandian.vo;

import lombok.Data;

/**
 *
 * http请求返回的最外层对象
 */
@Data
public class ResuleVo<T> {

    /** 错误码*/
    private Integer code;

    /** 提示信息 */
    private String msg;

    /** 返回的具体内容*/
    private T date;

    private Integer totalPages;

}
