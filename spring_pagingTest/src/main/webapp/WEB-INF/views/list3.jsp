<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(function(){
		$('.pages').click(function(){
			$.ajax({
				url : "list1",
				data : {
					page : $(this).text()
				},
				success : function(table){
					$('#result').html(table)
				}
			})
		})
	})
</script>
</head>
<body>
	<h3>전체 글 수 : ${count}개</h3>
	<%
		int pages = (int) request.getAttribute("pages");
	for (int i = 1; i <= pages; i++) {
	%>
	<button class="pages"><%=i%></button>
	<%
		}
	%>
	<hr color="red">
	<div id="result">
		<table border="1" width="500" height="500">
			<tr bgcolor="lime">
				<td>번호</td>
				<td>id</td>
				<td>제목</td>
				<td>내용</td>
				<td>작성자</td>
			</tr>
			<c:forEach items="${list1}" var="vo">
				<tr>
					<td>${vo.bbs_no}</td>
					<td>${vo.id}</td>
					<td>${vo.title}</td>
					<td>${vo.content}</td>
					<td>${vo.writer}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>

</html>
