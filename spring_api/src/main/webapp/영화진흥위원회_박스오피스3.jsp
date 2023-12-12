<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="header.jsp" %>
<script type="text/javascript">
	$(function(){
		$('#b1').click(function(){
			$.ajax({
				url : "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json",
				data : {
					key : "0dcdda8690deb77fa82eef7d59abc041",
					targetDt : "20231209"
				},
				dataType : "json",
				success : function(json){
					box_list = json.boxOfficeResult.dailyBoxOfficeList
					for(let i = 0;i < box_list.length;i++){
						let rank = box_list[i].rank
						let movieCd = box_list[i].movieCd
						let movieNm = box_list[i].movieNm
						let scrnCnt = box_list[i].scrnCnt
						let openDt = box_list[i].openDt
						/* location.href= "movie?rank=" + rank + "&movieCd=" + movieCd + "&movieNm=" + movieNm + 
						"&scrnCnt=" + scrnCnt + "&openDt=" + openDt */
						$.ajax({
							url : "movie",
							data : {
								rank : rank,
								movieCd : movieCd,
								movieNm : movieNm,
								scrnCnt : scrnCnt,
								openDt : openDt
							},
							success : function(x){
								console.log(x)
							}
						})
					}
					
				}
			})
		})
	})
</script>
</head>
<body>
<button id="b1">박스오피스 가지고 오기(영화진흥위원회)</button>
<hr color="red">
</body>
</html>