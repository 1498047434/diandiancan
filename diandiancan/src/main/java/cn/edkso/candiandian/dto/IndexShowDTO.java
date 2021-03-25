package cn.edkso.candiandian.dto;


import lombok.Data;

import java.math.BigDecimal;

@Data
public class IndexShowDTO {

    private Integer buyerSum;
    private Integer orderSum;
    private BigDecimal orderPriceSum;
}
