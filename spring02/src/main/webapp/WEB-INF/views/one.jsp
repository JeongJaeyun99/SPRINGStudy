<%@page import="com.multi.mvc02.BookDTO"%>
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
	BookDTO bag = (BookDTO)request.getAttribute("bag");
%>

아이디 : <%= bag.getId() %> <br>
이름 :  <%= bag.getName() %> <br>
URL :  <a href="<%= bag.getUrl()%>"><%= bag.getUrl()%></a><br>
IMG :  <%= bag.getImg() %> <br>
<a href="book.jsp">첫 화면으로...</a>
</body>
</html>