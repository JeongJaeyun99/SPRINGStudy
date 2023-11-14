<%@page import="java.util.List"%>
<%@page import="com.multi.mvc03.BookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap JS (optional) -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<%
		List<BookDTO> list = (List<BookDTO>) request.getAttribute("list");
	%>
	<div class="container mt-4">
		<table border="1" font-align="center" class="table">
			<thead>
				<tr>
					<th scope="col">아이디 :</th>
					<th scope="col">이름 :</th>
					<th scope="col">URL :</th>
					<th scope="col">IMG :</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (BookDTO bag : list) {
				%>
				<tr>
					<td><%=bag.getId()%></td>
					<td><a href="one?id=<%=bag.getId()%>"><%=bag.getName()%></a></td>
					<td><%=bag.getUrl()%></a></td>
					<td><img src="resources/img/<%=bag.getImg()%>" width="100" height="100"></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
	<a href="book.jsp"><button class="btn btn-primary">첫 화면으로...</button></a>
</body>
</html>