<%@ page import="com.my.Person" %><%--
  Created by IntelliJ IDEA.
  User: ben
  Date: 2022/7/11
  Time: 7:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取bean对象中属性</title>
</head>
<body>

<%
    Person person = new Person("zhangsan", 18);
    pageContext.setAttribute("person", person);

    pageContext.setAttribute("var", "name");
%>

<%= "姓名：" + person.getName()%><br>
<hr>
el姓名：${person.name}<br>
el年龄：${person['age']}<br>
动态取值：${person[var]}<br>
<%%>
<%%>
<%%>

</body>
</html>
