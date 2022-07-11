<%--
  Created by IntelliJ IDEA.
  User: ben
  Date: 2022/7/11
  Time: 6:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>向el_param.jsp传递参数</title>
</head>
<body>
<form action="el_param.jsp" method="post">
    姓名：<input type="text" name="name" value=""><br>
    爱好：<input type="checkbox" name="hobby" value="抽烟">抽烟<br>
    <input type="checkbox" name="hobby" value="喝酒">喝酒<br>
    <input type="checkbox" name="hobby" value="烫头">烫头<br>
    <input type="submit" value="提交">
</form>
</body>
</html>
