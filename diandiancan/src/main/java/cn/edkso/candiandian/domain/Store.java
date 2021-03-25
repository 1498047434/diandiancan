package cn.edkso.candiandian.domain;


import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.io.Serializable;
import java.sql.Timestamp;

@Entity
@Data
public class Store  implements Serializable {

    @Id
    private String id;
    private Integer number;
    private String username;
    private String password;
    private String name;
    private String phone;
    private String linkman;
    private Integer status = 1; //默认为0未开通

    private String restaurantId;
    private Timestamp registerTime;
}
