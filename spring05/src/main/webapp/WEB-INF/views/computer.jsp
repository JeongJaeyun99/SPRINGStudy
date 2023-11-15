<%@page import="com.multi.mvc05.ComputerVO"%>
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
		ComputerVO vo = (ComputerVO) request.getAttribute("vo");
		int total = (Integer)request.getAttribute("total");
	%>
	<table border="1">
		<thead>
			<tr>
				<th>항목명</th>
				<th>가격</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${ vo.com }</td>
				<td>${ vo.price1 }</td>
			</tr>
			<tr>
				<td>${ vo.mouse }</td>
				<td>${ vo.price2 }</td>
			</tr>
			<tr>
				<td>총합계</td>
				<td><%= total %></td>
			</tr>
		</tbody>
	</table>
</body>
</html>