package com.wzh.ershoujiaoyi.dao;

import com.wzh.ershoujiaoyi.bean.Ershouwupin;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: wzh
 * Date: 2019/4/11
 * Time: 0:17
 * Description: No Description
 */
public interface ErshouwupinDao {
    List<Ershouwupin> findAll();

    List<Ershouwupin> search(String title, Integer index, Integer pageCount);

    Ershouwupin queryDetail(Integer id);

    List<Ershouwupin> findOneSale(String username, Integer index, Integer pageCount);

    Integer delete(Integer id);

    Integer getCount(String title);

    Integer getOneSaleCount(String user);

    Integer update(Ershouwupin ershouwupin);

    Integer update(Integer id, Integer click);

    Integer add(Ershouwupin ershouwupin);

    List<String> findAllType();

    List<Ershouwupin> findHot();

    List<Ershouwupin> findNewst();
}
