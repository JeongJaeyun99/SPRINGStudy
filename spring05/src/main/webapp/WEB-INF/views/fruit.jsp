<%@page import="com.multi.mvc05.FruitDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	FruitDTO dto = (FruitDTO)request.getAttribute("dto1");
%>
<ul>
	<li><%= dto.getFruit1() %></li>
	<li><%= dto.getFruit2() %></li>
	<li><%= dto.getFruit3() %></li>
	<li><%= dto.getFruit4() %></li>
	<li><%= dto.getFruit5() %></li>
</ul>
</body>
</html>