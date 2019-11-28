package com.wzh.ershoujiaoyi.service;

import com.wzh.ershoujiaoyi.dao.VisitCountDao;
import com.wzh.ershoujiaoyi.dao.daoImpl.VisitCountDaoImpl;

/**
 * Created with IntelliJ IDEA.
 * User: wzh
 * Date: 2019/5/4
 * Time: 22:53
 * Description: No Description
 */
public class VisitCountService {
    private VisitCountDao visitCountDao = new VisitCountDaoImpl();

    public Integer getCount() {
        return visitCountDao.getCount();
    }

    public Integer update(Integer count) {
        return visitCountDao.update(count);
    }
}
