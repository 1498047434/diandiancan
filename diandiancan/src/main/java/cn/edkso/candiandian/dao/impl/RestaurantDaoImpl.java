package cn.edkso.candiandian.dao.impl;


import cn.edkso.candiandian.domain.Restaurant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;



@Repository
public class RestaurantDaoImpl {


    @Autowired
    JdbcTemplate jdbcTemplate;

    //lng lat   经度和维度
    public List<Restaurant> findByLngAndLat(Double lng, Double lat){

        // ? ? ?   ==>  lat lat lng
        String sql = " select *,round(" +
                "6378.138*2*asin(sqrt(" +
                "pow(sin((?*pi()/180 - lat*pi()/180)/2),2)" +
                "+ cos(?*pi()/180) * cos(lat*pi()/180) * pow(sin((?*pi()/180 - lng*pi()/180)/2),2)" +
                ")" +
                ")" +
                ")*1000" +
                " as juli" +
                " from restaurant" +
                " having juli < 5000" +
                " order by juli desc";

        List<Restaurant> restaurantList = jdbcTemplate.query(sql, new RowMapper<Restaurant>() {
            @Override
            public Restaurant mapRow(ResultSet rs, int i) throws SQLException {
                Restaurant restaurant = new Restaurant();

                restaurant.setId(rs.getString(1));
                restaurant.setName(rs.getString(2));
                restaurant.setPhone(rs.getString(3));
                restaurant.setLinkman(rs.getString(4));
                restaurant.setStatus(Integer.valueOf(rs.getString(5)));
                SimpleDateFormat format = new SimpleDateFormat("HH:mm:ss");
                String startTimeStr = rs.getString(6);
                String endTimeStr = rs.getString(7);
                Time startTime = null;
                Time endTime = null;
                try {
                    Date startTimeDate = format.parse(startTimeStr);
                    Date endTimeDate = format.parse(endTimeStr);
                    startTime = new Time(startTimeDate.getTime());
                    endTime = new Time(endTimeDate.getTime());
                } catch (ParseException e) {
                    e.printStackTrace();
                }
                restaurant.setStartTime(startTime);
                restaurant.setEndTime(endTime);
                restaurant.setAddress(rs.getString(8));
                restaurant.setRegion(rs.getString(9));
                restaurant.setLng(Double.valueOf(rs.getString(10)));
                restaurant.setLat(Double.valueOf(rs.getString(11)));
                return restaurant;
            }
        }, new Object[]{lat, lat, lng});

        return restaurantList;
    }
}
