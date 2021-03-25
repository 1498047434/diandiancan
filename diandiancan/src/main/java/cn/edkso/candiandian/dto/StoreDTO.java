package cn.edkso.candiandian.dto;

import cn.edkso.candiandian.domain.Product;
import lombok.Data;

import java.util.List;

@Data
public class StoreDTO {

    private String id;
    private Integer number;
    private String name;
    private String phone;
    private String linkman;
    private String status;
    private String restaurantId;

    private List<ProductDTO> productList;
}
