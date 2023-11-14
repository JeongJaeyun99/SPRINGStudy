<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<img src="resources/img/naver.jpg" width="100" height="100"><br>
<h3>북마크 정보 검색</h3>
<form action="one">
아이디 : <input name="id"><br>
<button>서버로 전송</button>
</form>
<hr>
<h3>북마크 전체</h3>
<a href="list">
	<button>전체 검색 요청</button>
</a>
<hr>
<h3>북마크 추가</h3>
<form action="insert">
아이디 : <input name="id"><br>
이름 : <input name="name"><br>
URL : <input name="url"><br>
IMG : <input name="img"><br>
<button>서버로 전송</button>
</form>
<hr>
<h3>북마크 수정</h3>
<form action="update">
아이디 : <input name="id"><br>
이름 : <input name="name"><br>
<button>서버로 전송</button>
</form>
</body>
</html>