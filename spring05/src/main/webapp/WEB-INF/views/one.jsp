<%@page import="com.multi.mvc05.ReplyDTO"%>
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
	BbsDTO bag = (BbsDTO)request.getAttribute("bag");
%>

게시판 id : <%= bag.getId() %> <br>
게시판 title :  <%= bag.getTitle() %> <br>
게시판 content :  <%= bag.getContent()%> <br>
게시판 writer :  <%= bag.getWriter() %> <br>
<a href="bbs_mvc2.jsp">게시판 검색 사이트로 이동</a>
<hr color="red">
<%
	List<ReplyDTO> list = (List<ReplyDTO>) request.getAttribute("list");
%>
<% for(ReplyDTO dto : list){ %>
- <%= dto.getId() %>, <%= dto.getOriid() %>, <%= dto.getContent() %>, <%= dto.getWriter() %> <br>
<%} %>

</body>
</html>