package com.my.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * @author: ymm
 * @date: 2022/7/11
 * @version: 1.0.0
 * @description: 监听器实现用户数量统计
 */
public class OnlineUser implements HttpSessionListener, ServletContextListener {

    ServletContext servletContext = null;

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        servletContext = servletContextEvent.getServletContext();
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        servletContext = null;
    }

    @Override
    public void sessionCreated(HttpSessionEvent httpSessionEvent) {
        System.out.println("新用户上线...");
        Object count = servletContext.getAttribute("count");

        // 若当前用户为第一个用户，将全局对象中的属性设置为1
        if (count == null) {
            servletContext.setAttribute("count", 1);
        } else {
            Integer intCount = (Integer) count;
            intCount++;
            servletContext.setAttribute("count", intCount);
        }
        System.out.println("当前用户数据为" + servletContext.getAttribute("count"));
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
        System.out.println("有用户下线");
    }
}
