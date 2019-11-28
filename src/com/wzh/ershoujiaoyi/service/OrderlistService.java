package com.wzh.ershoujiaoyi.service;

import com.wzh.ershoujiaoyi.bean.Orderlist;
import com.wzh.ershoujiaoyi.dao.OrderlistDao;
import com.wzh.ershoujiaoyi.dao.daoImpl.OrderlistDaoImpl;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: wzh
 * Date: 2019/4/27
 * Time: 16:37
 * Description: No Description
 */
public class OrderlistService {
    private OrderlistDao orderlistDao = new OrderlistDaoImpl();

    public List<Orderlist> findAll(String user, Integer index, Integer pageCount) {
        return orderlistDao.findAll(user, index, pageCount);
    }

    public List<Orderlist> findAll() {
        return orderlistDao.findAll();
    }

    public Integer add(Orderlist orderlist) {
        return orderlistDao.add(orderlist);
    }

    public Integer getCount(String user) {
        return orderlistDao.getCount(user);
    }

    public Orderlist findOne(Integer id) {
        return orderlistDao.findOne(id);
    }

    public Orderlist findOneBywupinId(Integer wupinId) {
        return orderlistDao.findOneByWupinId(wupinId);
    }

    public Integer deleteOne(Integer id) {
        return orderlistDao.deleteOne(id);
    }

    public Integer update(Integer id) {
        return orderlistDao.update(id);
    }
}
