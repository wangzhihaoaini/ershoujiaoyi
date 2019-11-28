package com.wzh.ershoujiaoyi.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.wzh.ershoujiaoyi.bean.*;
import com.wzh.ershoujiaoyi.service.*;
import com.wzh.ershoujiaoyi.utils.DateUtil;
import com.wzh.ershoujiaoyi.utils.JsonUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: wzh
 * Date: 2019/4/10
 * Time: 23:48
 * Description:  search方法用于处理在搜索框中输入的信息
 * queryDetail方法用于处理选中某一件商品时展示详情
 * addShoppingCart方法用于添加购物车
 */
@WebServlet(name = "ErshouServlet", urlPatterns = "/ershouServlet")
public class ErshouServlet extends HttpServlet {
    private ErshouwupinService ershouwupinService = new ErshouwupinService();
    private CommentService commentService = new CommentService();
    private InformationService informationService = new InformationService();
    private OrderlistService orderlistService = new OrderlistService();
    private UserService userService = new UserService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //解决中文乱码
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if ("search".equals(action)) {
            search(request, response);
        } else if ("queryDetail".equals(action)) {
            queryDetail(request, response);
        } else if ("findOneSale".equals(action)) {
            findOneSale(request, response);
        } else if ("findOne".equals(action)) {
            findOne(request, response);
        } else if ("deleteOne".equals(action)) {
            deleteOne(request, response);
        } else if ("delivered".equals(action)) {
            delivered(request, response);
        } else if ("update".equals(action)) {
            update(request, response);
        } else if ("add".equals(action)) {
            add(request, response);
        } else if ("findAll".equals(action)) {
            findAll(request, response);
        }
    }

    //queryDetail方法用于处理选中某一件商品时展示详情
    private void queryDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String wupinId = request.getParameter("wupinId");
        Ershouwupin ershouwupin = ershouwupinService.queryDetail(Integer.parseInt(wupinId));
        Integer click = ershouwupin.getClick();
        ershouwupin.setClick(click + 1);
        ershouwupinService.update(Integer.parseInt(wupinId), click);
        //查询某个商品所有的评论信息
        List<Comment> commentList = commentService.findAll(Integer.parseInt(wupinId));
        request.setAttribute("ershouwupin", ershouwupin);
        request.setAttribute("commentList", commentList);
        request.getRequestDispatcher("foreground/xiangqing.jsp").forward(request, response);
    }

    //search方法用于处理在搜索框中输入的信息
    private void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer pageCount = 5;
        String index = request.getParameter("index");
        if (index == null) {
            index = "1";
        }
        String title = request.getParameter("title");
        List<Ershouwupin> searchList = ershouwupinService.search(title, Integer.parseInt(index), pageCount);
        Integer count = ershouwupinService.getCount(title);
        Integer size = searchList.size();
        Integer pages = (count + pageCount - 1) / pageCount;
        request.setAttribute("end", pages);
        request.setAttribute("index", Integer.parseInt(index));
        request.setAttribute("searchList", searchList);
        request.setAttribute("title", title);
        request.setAttribute("size", size);
        request.getRequestDispatcher("foreground/search.jsp").forward(request, response);
    }

    private void findOneSale(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pageCount = 3;
        String index = request.getParameter("index");
        if (index == null) {
            index = "1";
        }
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        Integer count = ershouwupinService.getOneSaleCount(username);
        List<Ershouwupin> mySaleList = ershouwupinService.findOneSale(username, Integer.parseInt(index), pageCount);
        int size = mySaleList.size();
        int pages = (count + pageCount - 1) / pageCount;
        request.setAttribute("end", pages);
        request.setAttribute("index", Integer.parseInt(index));
        request.setAttribute("mySaleList", mySaleList);
        request.setAttribute("sizezxc", size);
        request.getRequestDispatcher("foreground/shangjia.jsp").forward(request, response);
    }

    private void findOne(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Ershouwupin ershouwupin = ershouwupinService.queryDetail(Integer.parseInt(id));
        Object JsonObject = JSON.toJSON(ershouwupin);
        response.getWriter().print(JsonObject);
    }

    private void deleteOne(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Ershouwupin ershouwupin = ershouwupinService.queryDetail(Integer.parseInt(id));
        //获取到物品的图片名称
        String image = ershouwupin.getImage();
        File file = new File("E:\\IntelliJ IDEA 2018.2.1\\workspace\\ershoujiaoyi\\web\\image\\" + image);
        boolean delete = file.delete();
        Integer i = ershouwupinService.delete(Integer.parseInt(id));
        if (i != 0 && delete) {
            response.getWriter().print("下架成功!");
        } else {
            response.getWriter().print("下架失败,物品可能已被下架或购买!");
        }
    }

    private void delivered(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        //卖家确定发货以后,将订单状态改变，并发送通知给买家
        orderlistService.update(Integer.parseInt(id));
        //从订单获取到买家信息
        Orderlist orderList = orderlistService.findOneBywupinId(Integer.parseInt(id));
        //通过获取到的用户名查找用户
        User user = userService.findOne(orderList.getBuyUser());
        String content = "亲爱的 " + user.getUserName() + " 您购买的 " + orderList.getTitle() + " 卖家已发货,请注意查收!";
        String newDate = DateUtil.dateToString(new Date(System.currentTimeMillis()));
        //将物品从数据库删除
        ershouwupinService.delete(Integer.parseInt(id));
        //将物品的所有评论删除
        commentService.deleteWupinAllComment(Integer.parseInt(id));
        //发送通知
        Integer i = informationService.add(new Information(user.getId(), content, "未读", newDate));
        response.getWriter().print("已通知买家,请注意买家动态!");
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String title = request.getParameter("title");
        String deal = request.getParameter("deal");
        String where = request.getParameter("where");
        String price = request.getParameter("price");
        String sellPhone = request.getParameter("sellPhone");
        String introduce = request.getParameter("introduce");
        //任何一个字段为空即返回提示信息
        if ("".equals(id) || "".equals(title) || "".equals(deal) || "".equals(where) || "".equals(price) || "".equals(sellPhone) ||
                "".equals(introduce)) {
            response.getWriter().print("必填项不能为空!");
        } else {
            Ershouwupin ershouwupin = new Ershouwupin();
            ershouwupin.setId(Integer.parseInt(id));
            ershouwupin.setTitle(title);
            ershouwupin.setDeal(deal);
            ershouwupin.setWhere(where);
            ershouwupin.setPrice(Integer.parseInt(price));
            ershouwupin.setSellPhone(sellPhone);
            ershouwupin.setIntroduce(introduce);
            Integer i = ershouwupinService.update(ershouwupin);
            response.getWriter().print("更新成功!");
        }
    }

    private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String type = request.getParameter("type");
        String image = request.getParameter("image");
        String deal = request.getParameter("deal");
        String didian = request.getParameter("didian");
        String price = request.getParameter("price");
        String sellUser = request.getParameter("sellUser");
        String sellPhone = request.getParameter("sellPhone");
        String introduce = request.getParameter("introduce");
        String date = DateUtil.dateToString(new Date(System.currentTimeMillis()));
        Integer i = ershouwupinService.add(new Ershouwupin(title, type, image, deal, didian, Integer.parseInt(price), sellUser, sellPhone, introduce, date));
        if (i != 0) {
            response.getWriter().print("上架成功!");
        } else {
            response.getWriter().print("上架失败,请检查填写信息!");
        }
    }

    private void findAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Ershouwupin> allList = ershouwupinService.findAll();
        JSONObject jsonObject = JsonUtil.getJsonObject(allList);
        response.getWriter().print(jsonObject);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}