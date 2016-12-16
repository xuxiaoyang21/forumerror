package com.mxiaixy.web.user;

import com.mxiaixy.util.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Mxia on 2016/12/16.
 */
@WebServlet("/foundPassword")
public class FoundPasswordServlet extends BaseServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        forward("user/foundPassword.jsp",req,resp);
    }
}
