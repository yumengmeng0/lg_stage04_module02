<%--
  Created by IntelliJ IDEA.
  User: ben
  Date: 2022/7/11
  Time: 6:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>从内置对象中获取数据</title>
</head>
<body>
<%
    pageContext.setAttribute("name1", "pageContext");
    request.setAttribute("name1", "request");
    session.setAttribute("name1", "session");
    application.setAttribute("name1", "application");
%>

<%--使用jsp原始方式获取数据--%>
<%= "name1：" + pageContext.getAttribute("name1")%><br>
<%= "name2：" + request.getAttribute("name1")%><br>
<%= "name3：" + session.getAttribute("name1")%><br>
<%= "name1：" + application.getAttribute("name1")%><br>

<%--使用el表达式获取数据--%>
name1 = ${name1} <br>

</body>
</html>
