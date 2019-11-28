package com.wzh.ershoujiaoyi.controller;

import com.wzh.ershoujiaoyi.bean.Ershouwupin;
import com.wzh.ershoujiaoyi.service.ErshouwupinService;
import com.wzh.ershoujiaoyi.service.VisitCountService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: wzh
 * Date: 2019/5/2
 * Time: 10:14
 * Description: No Description
 */
@WebServlet(name = "GoIndexServlet", urlPatterns = "/GoIndexServlet")
public class GoIndexServlet extends HttpServlet {
    private ErshouwupinService ershouwupinService = new ErshouwupinService();
    private VisitCountService visitCountService = new VisitCountService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.isNew()) {
            Integer count = visitCountService.getCount();
            visitCountService.update(count);
        }
        List<Ershouwupin> hotList = ershouwupinService.findHot();
        List<Ershouwupin> newstList = ershouwupinService.findNewst();
        request.setAttribute("hotList", hotList);
        request.setAttribute("newstList", newstList);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
