<%@page import="java.util.List"%>
<%@page import="com.multi.mvc01.BbsDTO2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	List<BbsDTO2> list = (List<BbsDTO2>)request.getAttribute("list");
	for(BbsDTO2 bag: list){
%>
	게시판 id : <%= bag.getId() %> <br>
	게시판 title :  <a href="one?id=<%= bag.getId() %>"><%= bag.getTitle() %></a><br>
	게시판 content :  <%= bag.getContent()%> <br>
	게시판 writer :  <%= bag.getWriter() %> <br>
	<hr color="red">
<% } %>
<a href="bbs_mvc2.jsp">게시판 검색 사이트로 이동</a>
<hr color="blue">
<c:forEach items="${list}" var="bag" begin="2" end="10" step="2">
	게시판 id : ${bag.id} <br>
	게시판 title :  <a href="one?id=${bag.id}">${bag.title}</a><br>
	게시판 content :  ${bag.content} <br>
	게시판 writer :  ${bag.writer} <br>
	<hr color="red">
</c:forEach>

</body>
</html>