# lg_stage04_module02
el &amp; jstl

# 1. EL表达式

## 1.1 基本概念
* EL（Expression Language）表达式提供了在JSP中简化表达式的方法，可以方便地访问各种数据并输出

## 1.2 主要功能
* 依次访问pageContext、request、session和application作用域存储的数据
* 获取请求参数的值
* 访问Bean对象属性
* 访问集合中的数据
* 输出简单的运算结果


# 2. JSTL标签

## 2.1 基本概念
* JSTL（JSP Standard Tag Library）JSP标准标签库
* 开发人员利用这些标签取代JSP页面的Java代码，从而提高可读性，降低程序的维护难度

## 2.2 使用方式

```jsp


```

# 3. Filter与Listener

## 3.1 Filter过滤器

### 3.1.1 基本概念

* Filter是过滤的意思，JavaWeb三大组件：Servlet、Filter、Listener
* 过滤器是向Web应用程序的请求和响应处理添加功能的Web服务组件
* 过滤器相当于浏览器与Web资源之间的一道过滤网，在访问资源之前通过一系列的过滤器对请求或响应进行修改、判断以及拦截等

## 3.1 Listener监听器

### 3.1.1 基本概念
* Servlet规范中定义的一种特殊组件，用来监听Servlet容器产生的事件并进行相应处理
* 容器产生的事件分类：
    * 生命周期相关的事件
    * 属性状态相关的事件
    * 存值状态相关的事件
* 底层原理是采用回调的方式实现

### 3.1.2 基本分类
| 监听器类型 | 功能介绍 |
| --- | --- |
| javax.servlet.ServletRequestListener | |
| javax.servlet.ServletRequestAttributeListener | |
| javax.servlet.HttpSessionListener | |
| javax.servlet.HttpSessionAttributeListener | |
| javax.servlet.ServletContextListener | |
| javax.servlet.ServletContextAttributeListener | |
| javax.servlet.HttpSessionBindingListener | |
| javax.servlet.HttpSessionActivationListener | |