package cn.edkso.candiandian.service;

        import cn.edkso.candiandian.domain.Restaurant;
        import cn.edkso.candiandian.dto.RestaurantDTO;

        import java.util.List;

public interface RestaurantService {

    //根据经纬度查询餐厅
    List<Restaurant> findByLngAndLat(Double lng, Double lat);

    RestaurantDTO findById(String id);
}
