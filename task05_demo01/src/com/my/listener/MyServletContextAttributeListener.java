package com.my.listener;

import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;

/**
 * @author: ymm
 * @date: 2022/7/11
 * @version: 1.0.0
 * @description:
 */
public class MyServletContextAttributeListener implements ServletRequestAttributeListener {
    @Override
    public void attributeAdded(ServletRequestAttributeEvent servletRequestAttributeEvent) {
        System.out.println("ServletContext增加了属性：" + servletRequestAttributeEvent.getName());
    }

    @Override
    public void attributeRemoved(ServletRequestAttributeEvent servletRequestAttributeEvent) {
        System.out.println("ServletContext删除了属性：" + servletRequestAttributeEvent.getName());
    }

    @Override
    public void attributeReplaced(ServletRequestAttributeEvent servletRequestAttributeEvent) {
        System.out.println("ServletContext修改了属性：" + servletRequestAttributeEvent.getName());
    }
}
