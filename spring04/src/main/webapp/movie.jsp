<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>다음 영화</h1>
	<hr>
	<h3>영화 정보 추가하기</h3>
	<form action="insert2">
		아이디 : <input name="id"><br> 
		제목 : <input name="title"><br>
		평점 : <input name="rate"><br> 
		개봉일 : <input name="date"><br>
		이미지 : <input name="img"><br>
		<button>영화 데이터 추가하기</button>
	</form>
	<hr>
	<h3>영화 정보 수정하기</h3>
	<form action="update2">
		아이디 : <input name="id"><br> 
		수정할 평점 : <input name="rate"><br>
		<button>영화 데이터 수정하기</button>
	</form>
	<hr>
	<h3>영화 정보 한개 조회하기</h3>
	<form action="one2">
		조회할 내용의 아이디 : <input name="id">
		<button>영화 한개 조회하기</button>
	</form>
	<h3>영화 정보 전체 조회하기</h3>
	<a href="list2">
		<button>전체 조회하기</button>
	</a>
</body>
</html>