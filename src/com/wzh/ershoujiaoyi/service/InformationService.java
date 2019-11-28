package com.wzh.ershoujiaoyi.service;

import com.wzh.ershoujiaoyi.bean.Information;
import com.wzh.ershoujiaoyi.dao.InformationDao;
import com.wzh.ershoujiaoyi.dao.daoImpl.InformationDaoImpl;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: wzh
 * Date: 2019/4/28
 * Time: 15:02
 * Description: No Description
 */
public class InformationService {
    private InformationDao informationDao = new InformationDaoImpl();

    public List<Information> findAll(Integer uId, Integer index, Integer pageCount) {
        return informationDao.findAll(uId, index, pageCount);
    }

    public Integer add(Information information) {
        return informationDao.add(information);
    }

    public Integer update(Integer id) {
        return informationDao.update(id);
    }

    public Integer delete(Integer id) {
        return informationDao.delete(id);
    }

    public Information findOne(Integer id) {
        return informationDao.findOne(id);
    }

    public Integer deleteAll(Integer uId) {
        return informationDao.deleteAll(uId);
    }

    public Integer getCount(Integer uId) {
        return informationDao.getCount(uId);
    }
}
