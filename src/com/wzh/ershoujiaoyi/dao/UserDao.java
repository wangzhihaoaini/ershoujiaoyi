package com.wzh.ershoujiaoyi.dao;

import com.wzh.ershoujiaoyi.bean.User;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: wzh
 * Date: 2019/4/7
 * Time: 15:11
 * Description: User类的Dao,包含添加，查询方法
 */
public interface UserDao {
    //后台管理员查看所有用户
    List<User> findAll();

    //统计学校数
    Integer getCollegeCount();

    //注册功能
    Integer add(User user);

    //登录功能
    User findOne(String userName);

    //用户更新个人信息
    Integer update(User user);

    //删除用户
    Integer deleteOne(Integer id);
}
