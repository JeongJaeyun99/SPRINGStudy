<%@page import="com.multi.mvc05.TravelDTO"%>
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
	TravelDTO dto = (TravelDTO)request.getAttribute("dto2");
%>
<ul>
	<li><%= dto.getTravel1() %></li>
	<li><%= dto.getTravel2() %></li>
	<li><%= dto.getTravel3() %></li>
	<li><%= dto.getTravel4() %></li>
	<li><%= dto.getTravel5() %></li>
</ul>
</body>
</html>