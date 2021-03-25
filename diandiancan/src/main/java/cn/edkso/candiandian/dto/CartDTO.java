package cn.edkso.candiandian.dto;

import lombok.Data;

@Data
public class CartDTO {

    private String productId;
    private Integer selectNum;

    public CartDTO(String productId, Integer selectNum) {
        this.productId = productId;
        this.selectNum = selectNum;
    }
}
