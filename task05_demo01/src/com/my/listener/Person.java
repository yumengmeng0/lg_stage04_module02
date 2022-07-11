package com.my.listener;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

/**
 * @author: ymm
 * @date: 2022/7/11
 * @version: 1.0.0
 * @description:
 */
// HttpSessionBindingListener不需要在web.xml配置
public class Person implements HttpSessionBindingListener {

    private String name;
    private int age;

    public Person() {
    }

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Override
    public void valueBound(HttpSessionBindingEvent httpSessionBindingEvent) {
        System.out.println("对象绑定到session" + httpSessionBindingEvent.getName());
    }

    @Override
    public void valueUnbound(HttpSessionBindingEvent httpSessionBindingEvent) {
        System.out.println("对象解绑了session" + httpSessionBindingEvent.getName());
    }
}
