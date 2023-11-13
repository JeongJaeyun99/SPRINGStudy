<%@page import="java.util.List"%>
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
	List<BookDTO> list = (List<BookDTO>)request.getAttribute("list");
	for(BookDTO bag: list){
%>
	아이디 : <%= bag.getId() %> <br>
	이름 :  <a href="one?id=<%= bag.getId() %>"><%= bag.getName() %></a> <br>
	URL :  <%= bag.getUrl()%> <br>
	IMG :  <%= bag.getImg() %> <br>
	<hr color="red">
<% } %>
<a href="book.jsp">첫 화면으로...</a>
</body>
</html>