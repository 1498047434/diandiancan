package cn.edkso.candiandian.dto;

import cn.edkso.candiandian.domain.Product;
import lombok.Data;
import org.springframework.beans.BeanUtils;

import java.math.BigDecimal;


@Data
public class ProductDTO {

    private String id;
    private String name;
    private String icon;
    private Integer sale = 0;
    private Integer stock = 0;
    private BigDecimal price;
    private String storeId;
    private Integer selectNum = 0;

}
