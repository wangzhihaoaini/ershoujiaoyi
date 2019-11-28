package com.wzh.ershoujiaoyi.service;

import com.wzh.ershoujiaoyi.bean.User;
import com.wzh.ershoujiaoyi.dao.UserDao;
import com.wzh.ershoujiaoyi.dao.daoImpl.UserDaoImpl;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: wzh
 * Date: 2019/4/7
 * Time: 15:37
 * Description: User的service层
 */
public class UserService {
    private UserDao userDao = new UserDaoImpl();

    public List<User> findAll() {
        return userDao.findAll();
    }

    public Integer getCollegeCount() {
        return userDao.getCollegeCount();
    }

    public Integer add(User user) {
        return userDao.add(user);
    }

    public User findOne(String userName) {
        return userDao.findOne(userName);
    }

    public Integer update(User user) {
        return userDao.update(user);
    }

    public Integer deleteOne(Integer id) {
        return userDao.deleteOne(id);
    }
}
