<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: ben
  Date: 2022/7/11
  Time: 7:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jstl</title>
</head>
<body>
<c:out value="my"></c:out><br>
<%--    等价于 pageContext.setAttribute("name","zhangsan") --%>
<c:set var="name" property="" value="zhangsan" scope="page"></c:set>
<c:out value="${name}"></c:out><br>

<hr>

<%--设置对象的属性--%>
<jsp:useBean id="person" class="com.my.Person" scope="page"></jsp:useBean>
<c:set property="name" value="lisi" target="${person}"></c:set>
<c:set property="age" value="18" target="${person}"></c:set>

<c:out value="${person.name}"></c:out>
<c:out value="${person.age}"></c:out><br>
<hr>
<c:set scope="page" value="wangwu" var="name"></c:set>
姓名：<c:out value="${name}"></c:out><br>
<c:remove var="name" scope="page"></c:remove>
姓名删除后：<c:out value="${name}" default="没有名字"></c:out><br>
<hr>

<c:set var="age" value="18" scope="page"></c:set>
<c:if test="${age >= 18}">
    <c:out value="已成年"></c:out>
</c:if>

<hr>
<c:set var="score" value="66" scope="page"></c:set>

<c:choose>
    <c:when test="${score >= 60}">
        <c:out value="及格"></c:out>
    </c:when>
    <c:otherwise>
        <c:out value="不及格"></c:out>
    </c:otherwise>
</c:choose>
<hr>
<%
    String[] sArr = {"11", "22", "33", "44", "55"};
    pageContext.setAttribute("sArr", sArr);
%>

<c:forEach items="${sArr}" var="s" step="2">
    <c:out value="${s}"></c:out>
</c:forEach>

<hr>
<%--函数标签--%>
<%
    pageContext.setAttribute("var", "hello world");

%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

原始字符串：${var}<br>
大写字符串：${fn:toUpperCase(var)}<br>

<hr>
<%--格式化标签--%>
<%
    Date date = new Date();
    pageContext.setAttribute("date", date);

%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
当前系统时间：${date}<br>
格式化的当前系统时间：<fmt:formatDate value="${date}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate><br>
<hr>
<%--自定义标签--%>
<%@ taglib prefix="mytag" uri="http://mycompany.com" %>
<mytag:tag name="lisi"></mytag:tag>

</body>
</html>
