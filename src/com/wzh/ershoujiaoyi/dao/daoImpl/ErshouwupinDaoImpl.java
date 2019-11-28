package com.wzh.ershoujiaoyi.dao.daoImpl;

import com.wzh.ershoujiaoyi.bean.Ershouwupin;
import com.wzh.ershoujiaoyi.dao.ErshouwupinDao;
import com.wzh.ershoujiaoyi.utils.DateUtil;
import com.wzh.ershoujiaoyi.utils.JdbcUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: wzh
 * Date: 2019/4/11
 * Time: 0:18
 * Description: 搜索，获得全部
 */
public class ErshouwupinDaoImpl implements ErshouwupinDao {
    @Override
    public List<Ershouwupin> findAll() {
        String sql = "SELECT * FROM ershouwupin order by date desc";
        List<Ershouwupin> list = new ArrayList<>();
        Connection conn = JdbcUtils.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Integer id = rs.getInt("id");
                String title1 = rs.getString("title");
                String type = rs.getString("type");
                String image = rs.getString("image");
                String deal = rs.getString("deal");
                String didian = rs.getString("didian");
                Integer price = rs.getInt("price");
                String sellUser = rs.getString("sell_user");
                String sellPhone = rs.getString("sell_phone");
                String introduce = rs.getString("introduce");
                Integer date = rs.getInt("date");
                String newDate = DateUtil.timeStampToString(date);
                Integer click = rs.getInt("click");
                Ershouwupin ershouwupin = new Ershouwupin(id, title1, type, image, deal, didian, price, sellUser, sellPhone, introduce, newDate, click);
                list.add(ershouwupin);
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Ershouwupin> search(String title, Integer index, Integer pageCount) {
        String sql = "SELECT * FROM ershouwupin WHERE title LIKE '%" + title + "%' LIMIT ?,?";
        List<Ershouwupin> list = new ArrayList<>();
        Connection conn = JdbcUtils.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, (index - 1) * pageCount);
            ps.setInt(2, pageCount);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Integer id = rs.getInt("id");
                String title1 = rs.getString("title");
                String type = rs.getString("type");
                String image = rs.getString("image");
                String deal = rs.getString("deal");
                String didian = rs.getString("didian");
                Integer price = rs.getInt("price");
                String sellUser = rs.getString("sell_user");
                String sellPhone = rs.getString("sell_phone");
                String introduce = rs.getString("introduce");
                Integer date = rs.getInt("date");
                String newDate = DateUtil.timeStampToString(date);
                Integer click = rs.getInt("click");
                Ershouwupin ershouwupin = new Ershouwupin(id, title1, type, image, deal, didian, price, sellUser, sellPhone, introduce, newDate, click);
                list.add(ershouwupin);
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Ershouwupin queryDetail(Integer id) {
        String sql = "SELECT * FROM ershouwupin WHERE id=?";
        Connection conn = JdbcUtils.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String title1 = rs.getString("title");
                String type = rs.getString("type");
                String image = rs.getString("image");
                String deal = rs.getString("deal");
                String didian = rs.getString("didian");
                Integer price = rs.getInt("price");
                String sellUser = rs.getString("sell_user");
                String sellPhone = rs.getString("sell_phone");
                String introduce = rs.getString("introduce");
                Integer date = rs.getInt("date");
                String newDate = DateUtil.timeStampToString(date);
                Integer click = rs.getInt("click");
                return new Ershouwupin(id, title1, type, image, deal, didian, price, sellUser, sellPhone, introduce, newDate, click);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Ershouwupin> findOneSale(String username, Integer index, Integer pageCount) {
        String sql = "SELECT * FROM ershouwupin WHERE sell_user=?  LIMIT ?,?";
        Connection conn = JdbcUtils.getConnection();
        List<Ershouwupin> list = new ArrayList<>();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setInt(2, (index - 1) * pageCount);
            ps.setInt(3, pageCount);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Integer id = rs.getInt("id");
                String title1 = rs.getString("title");
                String type = rs.getString("type");
                String image = rs.getString("image");
                String deal = rs.getString("deal");
                String didian = rs.getString("didian");
                Integer price = rs.getInt("price");
                String sellUser = rs.getString("sell_user");
                String sellPhone = rs.getString("sell_phone");
                String introduce = rs.getString("introduce");
                Integer date = rs.getInt("date");
                String newDate = DateUtil.timeStampToString(date);
                list.add(new Ershouwupin(id, title1, type, image, deal, didian, price, sellUser, sellPhone, introduce, newDate));
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Integer delete(Integer id) {
        String sql = "delete from ershouwupin where id=?";
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

    @Override
    public Integer getCount(String title) {
        String sql = "SELECT count(*) AS count FROM ershouwupin WHERE title LIKE '%" + title + "%'";
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
    public Integer getOneSaleCount(String user) {
        String sql = "SELECT count(*) AS count FROM ershouwupin WHERE sell_user=?";
        Connection conn = JdbcUtils.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user);
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
    public Integer update(Ershouwupin ershouwupin) {
        String sql = "update ershouwupin set title=?,deal=?,didian=?,price=?,sell_phone=?,introduce=? where id=?";
        PreparedStatement ps = null;
        try {
            Connection conn = JdbcUtils.getConnection();
            ps = conn.prepareStatement(sql);
            //将加密后的密码存入数据库
            ps.setString(1, ershouwupin.getTitle());
            ps.setString(2, ershouwupin.getDeal());
            ps.setString(3, ershouwupin.getWhere());
            ps.setInt(4, ershouwupin.getPrice());
            ps.setString(5, ershouwupin.getSellPhone());
            ps.setString(6, ershouwupin.getIntroduce());
            ps.setInt(7, ershouwupin.getId());
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
    public Integer update(Integer id, Integer click) {
        String sql = "update ershouwupin set click=? where id=?";
        PreparedStatement ps = null;
        try {
            Connection conn = JdbcUtils.getConnection();
            ps = conn.prepareStatement(sql);
            //将加密后的密码存入数据库
            ps.setInt(1, click);
            ps.setInt(2, id);
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
    public Integer add(Ershouwupin ershouwupin) {
        String sql = "insert into ershouwupin(title,type,image,deal,didian,price,sell_user,sell_phone,introduce,date)" +
                " values (?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps = null;
        try {
            Connection conn = JdbcUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, ershouwupin.getTitle());
            ps.setString(2, ershouwupin.getType());
            ps.setString(3, ershouwupin.getImage());
            ps.setString(4, ershouwupin.getDeal());
            ps.setString(5, ershouwupin.getWhere());
            ps.setInt(6, ershouwupin.getPrice());
            ps.setString(7, ershouwupin.getSellUser());
            ps.setString(8, ershouwupin.getSellPhone());
            ps.setString(9, ershouwupin.getIntroduce());
            Integer newDate = DateUtil.stringToTimeStamp(ershouwupin.getDate());
            ps.setInt(10, newDate);
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
    public List<String> findAllType() {
        String sql = "SELECT DISTINCT type FROM ershouwupin";
        Connection conn = JdbcUtils.getConnection();
        List<String> list = new ArrayList<>();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String type = rs.getString("type");
                list.add(type);
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Ershouwupin> findHot() {
        String sql = "SELECT * FROM ershouwupin order by click desc limit 6";
        List<Ershouwupin> list = new ArrayList<>();
        Connection conn = JdbcUtils.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Integer id = rs.getInt("id");
                String title1 = rs.getString("title");
                String type = rs.getString("type");
                String image = rs.getString("image");
                String deal = rs.getString("deal");
                String didian = rs.getString("didian");
                Integer price = rs.getInt("price");
                String sellUser = rs.getString("sell_user");
                String sellPhone = rs.getString("sell_phone");
                String introduce = rs.getString("introduce");
                Integer date = rs.getInt("date");
                String newDate = DateUtil.timeStampToString(date);
                Integer click = rs.getInt("click");
                Ershouwupin ershouwupin = new Ershouwupin(id, title1, type, image, deal, didian, price, sellUser, sellPhone, introduce, newDate, click);
                list.add(ershouwupin);
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Ershouwupin> findNewst() {
        String sql = "SELECT * FROM ershouwupin order by date desc limit 8";
        List<Ershouwupin> list = new ArrayList<>();
        Connection conn = JdbcUtils.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Integer id = rs.getInt("id");
                String title1 = rs.getString("title");
                String type = rs.getString("type");
                String image = rs.getString("image");
                String deal = rs.getString("deal");
                String didian = rs.getString("didian");
                Integer price = rs.getInt("price");
                String sellUser = rs.getString("sell_user");
                String sellPhone = rs.getString("sell_phone");
                String introduce = rs.getString("introduce");
                Integer date = rs.getInt("date");
                String newDate = DateUtil.timeStampToString(date);
                Integer click = rs.getInt("click");
                Ershouwupin ershouwupin = new Ershouwupin(id, title1, type, image, deal, didian, price, sellUser, sellPhone, introduce, newDate, click);
                list.add(ershouwupin);
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
