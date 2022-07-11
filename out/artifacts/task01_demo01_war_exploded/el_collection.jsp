<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: ben
  Date: 2022/7/11
  Time: 7:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取集合中的数据</title>
</head>
<body>
<%
    List<String> list = new ArrayList<>();
    list.add("one");
    list.add("two");
    list.add("three");

    pageContext.setAttribute("list", list);

    Map<String, Integer> map = new HashMap<>();
    map.put("one", 1);
    map.put("two", 2);
    map.put("three", 3);
    pageContext.setAttribute("map", map);

%>
list集合：${list}<br>
list集合中下标为0的数据：${list[0]}<br>
list集合中下标为1的数据：${list[1]}<br>
list集合中下标为2的数据：${list[2]}<br>
map：${map}<br>
map集合中下标为three的数据：${map["three"]}<br>


</body>
</html>
