package cn.edkso.candiandian.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Data
@Entity
public class RestaurantImg {


    @Id
    private String id;

    private String restaurantId;

    private String img;
}
