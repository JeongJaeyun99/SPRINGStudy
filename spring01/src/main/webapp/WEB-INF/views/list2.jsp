<%@page import="com.multi.mvc01.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
	<%
		ArrayList<ProductDTO> list = (ArrayList<ProductDTO>) request.getAttribute("list");
	for (ProductDTO bag : list) {
	%>
	<table border="1">
		<tr bgcolor="lightblue">
			<td>상품 id :</td>
			<td>상품 title :</td>
			<td>상품 img :</td>
		</tr>
		<tr bgcolor="lightgray" align="center">
			<td><%=bag.getId()%></td>
			<td><a href="one2?id=<%=bag.getId()%>"><%=bag.getTitle()%></a></td>
			<td><img src="resources/img/<%=bag.getImg()%>" width="100" height="50"></td>
		</tr>
	</table>
	<%
		}
	%>
	<a href="product_mvc2.jsp">상품 검색 사이트로 이동</a>
</body>
</html>