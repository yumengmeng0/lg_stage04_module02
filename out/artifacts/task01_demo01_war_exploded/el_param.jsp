<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: ben
  Date: 2022/7/11
  Time: 6:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>请求参数数值的获取</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
%>
<%= "姓名：" + request.getParameter("name")%><br>
<%= "爱好：" + Arrays.toString(request.getParameterValues("hobby"))%><br>

姓名：${param.name}
爱好：${paramValues.hobby[0]}


</body>
</html>
