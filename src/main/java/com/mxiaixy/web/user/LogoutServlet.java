package com.mxiaixy.web.user;

import com.mxiaixy.util.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Mxia on 2016/12/16.
 */
@WebServlet("/logout")
public class LogoutServlet extends BaseServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //登出账户
        //删除session中的值
        HttpSession session = req.getSession();
        session.removeAttribute("curr_user");

        req.setAttribute("popup","为了使用户登陆时提示");//无意义参数 只是为了是用户登出时弹窗提示
        req.setAttribute("message","账号已安全退出");
        forward("user/login.jsp",req,resp);
    }
}
