package com.wzh.ershoujiaoyi.dao;

import com.wzh.ershoujiaoyi.bean.ShoppingCart;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: wzh
 * Date: 2019/4/26
 * Time: 9:00
 * Description: No Description
 */
public interface ShoppingCartDao {
    Integer add(ShoppingCart shoppingCart);

    List<ShoppingCart> findAll(String user);

    Integer delete(Integer id, String user);

    ShoppingCart findOne(Integer id);

    Integer deleteAll(String user);
}
