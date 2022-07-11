package com.my.filter;

import javax.servlet.*;
import javax.servlet.Filter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * @author: ymm
 * @date: 2022/7/11
 * @version: 1.0.0
 * @description:
 */
public class LoginFilter implements Filter {
    public void destroy() {
        System.out.println("LoginFilter.destroy()");
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        // 1. 实现用户访问主页面的过滤操作，也就是用户登录后才能访问主页面，否则一律拦截
        HttpServletRequest httpServletRequest = (HttpServletRequest) req;
        Object userName = httpServletRequest.getSession().getAttribute("userName");

        System.out.println("userName = " + userName);
        // 获取Servlet请求路径
        String servletPath = httpServletRequest.getServletPath();
        System.out.println("servletPath = " + servletPath);

        // 若没有登录，则回到登录界面
        if (userName == null && !servletPath.contains("login")) {
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        } else {
            // 若已经登录，则放行
            chain.doFilter(req, resp);
        }

    }

    public void init(FilterConfig config) throws ServletException {
        System.out.println("LoginFilter.init");

        System.out.println("config.getFilterName() = " + config.getFilterName());
        System.out.println("config.getInitParameter(\"username\") = " + config.getInitParameter("username"));
    }

}
