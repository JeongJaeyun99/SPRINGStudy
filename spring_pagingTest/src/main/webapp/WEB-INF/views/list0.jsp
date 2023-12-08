<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table border="1" width="500" height="500">
	<tr bgcolor="lime">
		<td>id</td>
		<td>email</td>
		<td>car</td>
	</tr>
	<c:forEach items="${list}" var="vo">
		<tr>
			<td>${vo.id}</td>
			<td>${vo.email}</td>
			<td>${vo.car}</td>
		</tr>
	</c:forEach>
</table>
