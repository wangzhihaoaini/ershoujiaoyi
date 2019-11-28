package com.wzh.ershoujiaoyi.dao;

/**
 * Created with IntelliJ IDEA.
 * User: wzh
 * Date: 2019/5/4
 * Time: 22:52
 * Description: No Description
 */
public interface VisitCountDao {
    Integer getCount();

    Integer update(Integer count);
}
