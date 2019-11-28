package com.wzh.ershoujiaoyi.dao.daoImpl;

import com.wzh.ershoujiaoyi.bean.User;
import com.wzh.ershoujiaoyi.dao.UserDao;
import com.wzh.ershoujiaoyi.utils.JdbcUtils;
import com.wzh.ershoujiaoyi.utils.JiaMi;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: wzh
 * Date: 2019/4/7
 * Time: 15:11
 * Description: UserDao实现类
 */
public class UserDaoImpl implements UserDao {
    @Override
    public List<User> findAll() {
        String sql = "select * from user";
        List<User> list = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            Connection connection = JdbcUtils.getConnection();
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Integer id = rs.getInt("id");
                String username = rs.getString("user_name");
                String password = rs.getString("password");
                String newPassword = null;
                try {
                    newPassword = JiaMi.base64Decode(password);
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
                String phone = rs.getString("phone");
                String college = rs.getString("college");
                String addr = rs.getString("addr");
                list.add(new User(id, username, newPassword, phone, college, addr));
            }
            return list;
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
        return null;
    }

    @Override
    public Integer getCollegeCount() {
        String sql = "SELECT COUNT(DISTINCT college) AS count FROM user";
        Connection conn = JdbcUtils.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Integer count = rs.getInt("count");
                return count;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public Integer add(User user) {
        String sql = "insert into user(user_name,password,phone,college) values (?,?,?,?)";
        PreparedStatement ps = null;
        try {
            Connection conn = JdbcUtils.getConnection();
            ps = conn.prepareStatement(sql);
            //将加密后的密码存入数据库
            String password = JiaMi.base64Encode(user.getPassword());
            ps.setString(1, user.getUserName());
            ps.setString(2, password);
            ps.setString(3, user.getPhone());
            ps.setString(4, user.getCollege());
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

    @Override
    public User findOne(String userName) {
        String sql = "select * from user where user_name=?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            Connection connection = JdbcUtils.getConnection();
            ps = connection.prepareStatement(sql);
            ps.setString(1, userName);
            rs = ps.executeQuery();
            while (rs.next()) {
                Integer id = rs.getInt("id");
                String password = rs.getString("password");
                String phone = rs.getString("phone");
                String college = rs.getString("college");
                String addr = rs.getString("addr");
                return new User(id, userName, password, phone, college, addr);
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
        return null;
    }

    @Override
    public Integer update(User user) {
        String sql = "update user set password=?,phone=?,college=?,addr=? where user_name=?";
        PreparedStatement ps = null;
        try {
            Connection conn = JdbcUtils.getConnection();
            ps = conn.prepareStatement(sql);
            //将加密后的密码存入数据库
            String password = user.getPassword();
            String newPassword = JiaMi.base64Encode(password);
            ps.setString(1, newPassword);
            ps.setString(2, user.getPhone());
            ps.setString(3, user.getCollege());
            ps.setString(4, user.getAddr());
            ps.setString(5, user.getUserName());
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

    @Override
    public Integer deleteOne(Integer id) {
        String sql = "delete from user where id=?";
        PreparedStatement ps = null;
        try {
            Connection connection = JdbcUtils.getConnection();
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
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
