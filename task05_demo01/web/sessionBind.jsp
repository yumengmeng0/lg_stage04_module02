<%@ page import="com.my.listener.Person" %><%--
  Created by IntelliJ IDEA.
  User: ben
  Date: 2022/7/11
  Time: 21:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Person person = new Person("zhangsan", 18);
    session.setAttribute("person", person);
    session.removeAttribute("person");

%>
</body>
</html>
