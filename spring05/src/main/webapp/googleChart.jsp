<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
    <script type="text/javascript">
    
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);
      
      function drawChart() {
		$.ajax({
			url : "jsonResponse",
			success : function(array){
					var data = google.visualization.arrayToDataTable([
					          ['Task', 'Hours per Day'],
					          [array[0].hobby, array[0].hour],
					          [array[1].hobby, array[1].hour],
					          [array[2].hobby, array[2].hour],
					          [array[3].hobby, array[3].hour],
					          [array[4].hobby, array[4].hour],
					          [array[5].hobby, array[5].hour]
					]);
			        var options = {
			          title: 'My Daily Activities'
			        };

			        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

			        chart.draw(data, options);
			   }//success
			})//ajax
		}//drawChart  
    </script>
  </head>
  <body>
    <div id="piechart" style="width: 900px; height: 500px;"></div>
  </body>
</html>
