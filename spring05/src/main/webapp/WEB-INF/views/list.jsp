<%@page import="java.util.List"%>
<%@page import="com.multi.mvc05.BbsDTO"%>
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
	List<BbsDTO> list = (List<BbsDTO>)request.getAttribute("list");
	for(BbsDTO bag: list){
%>
	게시판 id : <%= bag.getId() %> <br>
	게시판 title :  <a href="one?id=<%= bag.getId() %>"><%= bag.getTitle() %></a><br>
	게시판 content :  <%= bag.getContent()%> <br>
	게시판 writer :  <%= bag.getWriter() %> <br>
	<hr color="red">
<% } %>
<a href="bbs_mvc2.jsp">게시판 검색 사이트로 이동</a>
</body>
</html>