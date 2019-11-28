package com.wzh.ershoujiaoyi.service;

import com.wzh.ershoujiaoyi.bean.Comment;
import com.wzh.ershoujiaoyi.dao.CommentDao;
import com.wzh.ershoujiaoyi.dao.daoImpl.CommentDaoImpl;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: wzh
 * Date: 2019/4/24
 * Time: 21:56
 * Description: No Description
 */
public class CommentService {
    private CommentDao commentDao = new CommentDaoImpl();

    public List<Comment> findAll(Integer wupinId) {
        return commentDao.findAll(wupinId);
    }

    public List<Comment> findAll() {
        return commentDao.findAll();
    }

    public List<Comment> findReport() {
        return commentDao.findReport();
    }

    public int add(Comment comment) {
        return commentDao.add(comment);
    }

    public int report(Integer id) {
        return commentDao.report(id);
    }

    public Integer deleteOne(Integer id) {
        return commentDao.deleteOne(id);
    }

    public Integer deleteWupinAllComment(Integer wupinId) {
        return commentDao.deleteWupinAllComment(wupinId);
    }
}
