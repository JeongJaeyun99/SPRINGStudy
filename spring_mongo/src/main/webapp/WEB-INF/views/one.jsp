<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="utf-8">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HTML Table 5x2</title>
<style>
table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

th, td {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}
</style>
</head>
<body>
	<form action="update.memo">
		<table>
			<thead>
				<tr>
					<th>항목명</th>
					<th>값</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>번호</td>
					<td><input name="_id" value="${vo._id}" type="hidden"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input name="name" value="${vo.name}" readonly="readonly"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><input name="content" value="${vo.content}" style="background:blue; color:white;"></td>
				</tr>
				<tr>
					<td>날씨</td>
					<td><input name="weather" value="${vo.weather}" readonly="readonly"></td>
				</tr>
				<tr>
					<td>날짜</td>
					<td><input name="date" value="${vo.date}" readonly="readonly"></td>
				</tr>
			</tbody>
		</table>
		<button>메모 수정 요청</button>
	</form>
	<a href="delete.memo?_id=${vo._id}">
		<button>메모 삭제 요청</button>
	</a>
	<a href="list.memo"><button>전체 리스트 보기</button></a>
	<a href="mongo_memo.jsp"><button>처음으로 가기</button></a>
</body>
</html>