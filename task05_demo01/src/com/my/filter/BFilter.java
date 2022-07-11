package com.my.filter;

import javax.servlet.*;
import java.io.IOException;

/**
 * @author: ymm
 * @date: 2022/7/11
 * @version: 1.0.0
 * @description:
 */
public class BFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("BFilter..." );
        filterChain.doFilter(servletRequest, servletResponse);

        System.out.println("BFilter...return");
    }

    @Override
    public void destroy() {

    }
}
