package com.learning;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by 海涛 on 2016/3/29.
 */
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("我是login.do.我运行了");

        String email = req.getParameter("email");
        String password = req.getParameter("password");
        System.out.println("email:" + email + "password:" + password);

        PrintWriter out = resp.getWriter();
        if ("358981721@qq.com".equals(email) && "123".equals(password)) {
            out.print("1");
        } else {
            out.print("0");
        }
    }
}
