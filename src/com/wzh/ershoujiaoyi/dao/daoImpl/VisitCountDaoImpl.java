package com.wzh.ershoujiaoyi.dao.daoImpl;

import com.wzh.ershoujiaoyi.dao.VisitCountDao;
import com.wzh.ershoujiaoyi.utils.JdbcUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created with IntelliJ IDEA.
 * User: wzh
 * Date: 2019/5/4
 * Time: 22:53
 * Description: No Description
 */
public class VisitCountDaoImpl implements VisitCountDao {
    @Override
    public Integer getCount() {
        String sql = "select * from visit_count";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            Connection connection = JdbcUtils.getConnection();
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Integer count = rs.getInt("count");
                return count;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null)
                    rs.close();
                if (ps != null)
                    ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            JdbcUtils.close();
        }
        return 0;
    }

    @Override
    public Integer update(Integer count) {
        String sql = "update visit_count set count=?";
        PreparedStatement ps = null;
        try {
            Connection conn = JdbcUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, count + 1);
            Integer i = ps.executeUpdate();
            return i;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null)
                    ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            JdbcUtils.close();
        }
        return 0;
    }
}
