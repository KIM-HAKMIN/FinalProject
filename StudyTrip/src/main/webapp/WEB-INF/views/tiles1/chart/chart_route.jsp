<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String ctxPath = request.getContextPath(); %>    

<script type="text/javascript" src="<%= ctxPath%>/resources/js/jquery-3.3.1.min.js"></script>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>

<style>

.highcharts-figure, .highcharts-data-table table {
    min-width: 320px; 
    max-width: 660px;
    margin: 1em auto;
}

.highcharts-data-table table {
	font-family: Verdana, sans-serif;
	border-collapse: collapse;
	border: 1px solid #EBEBEB;
	margin: 10px auto;
	text-align: center;
	width: 100%;
	max-width: 500px;
}
.highcharts-data-table caption {
    padding: 1em 0;
    font-size: 1.2em;
    color: #555;
}
.highcharts-data-table th {
	font-weight: 600;
    padding: 0.5em;
}
.highcharts-data-table td, .highcharts-data-table th, .highcharts-data-table caption {
    padding: 0.5em;
}
.highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even) {
    background: #f8f8f8;
}
.highcharts-data-table tr:hover {
    background: #f1f7ff;
}

</style>

<script type="text/javascript">
	$(document).ready(function(){	

		$.ajax({
			url:"<%= ctxPath%>/chart_route_view.st",
			dataType:"JSON",
			success:function(json){
				
				var resultArr = [];  
				
				for(var i=0; i<json.length; i++) {
					
					var obj = {name: json[i].ROUTE,   
							   y: Number(json[i].PERCENTAGE)};  
	
					resultArr.push(obj); 
				}
				
				///////////////////////////////////////////////////////////////////////////////
				Highcharts.chart('container', {
				    chart: {
				        plotBackgroundColor: null,
				        plotBorderWidth: null,
				        plotShadow: false,
				        type: 'pie'
				    },
				    title: {
				        text: '회원들이 StudyTrip을 알게된 경로(마케팅 전략을 위한 자료)'
				    },    
				    tooltip: {
				        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
				    },
				    accessibility: {
				        point: {
				            valueSuffix: '%'
				        }
				    },
				    plotOptions: {
				        pie: {
				            allowPointSelect: true,
				            cursor: 'pointer',
				            dataLabels: {
				                enabled: false
				            },
				            showInLegend: true
				        }
				    },
					series: [{
				        name: '경로',
				        colorByPoint: true,
				        data: resultArr       
				    }]
				});
				//////////////////////////////////////////////////////////////////////////////
			},
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			}
		});
	
	});	
</script>

</head>
<body>
	
	<div align="center">
		<figure class="highcharts-figure">
			<div id="container" style="min-width: 300px; height: 400px; max-width: 600px; margin: 0 auto;"></div>
		</figure>
	</div>

</body>
</html>