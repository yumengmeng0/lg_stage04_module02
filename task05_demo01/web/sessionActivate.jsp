<%@ page import="com.my.listener.Student" %><%--
  Created by IntelliJ IDEA.
  User: ben
  Date: 2022/7/11
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>session的钝化和活化</title>
</head>
<body>
<%
    Student student = new Student("zhangsan");
    session.setAttribute("student", student);



%>
</body>
</html>
