<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<% String ctxPath = request.getContextPath(); %>  
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>






</head>
<body>

<div style="background: #ebebeb;" align="center">
	<div style="width: 77%; border: solid 1px red; padding-top: 30px; display: inline-block;">
	
		<div style="float: left; background-color: #eee; width: 70%; ">
			<div style="background-color: #aaa;">
			
				<div>
				  <div style="width:100%; margin: 0 auto;">	
				  <div id="myCarousel" class="carousel slide" data-ride="carousel">
				    <!-- Indicators -->
				    <ol class="carousel-indicators">
				      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				      <li data-target="#myCarousel" data-slide-to="1"></li>
				      <li data-target="#myCarousel" data-slide-to="2"></li>
				    </ol>
				
				    <!-- Wrapper for slides -->
				    <div class="carousel-inner">
				      		<div class="item active">
						       <img src="<%= ctxPath%>/resources/images/large/6034-1508821271.jpg" style="width:100%;"> 
						    </div>
				      	
				      		<div class="item">
						       <img src="<%= ctxPath%>/resources/images/large/6035-1508821271.jpg" style="width:100%;">
							</div>

							<div class="item">
						       <img src="<%= ctxPath%>/resources/images/large/6036-1508821271.jpg" style="width:100%;"> 
						    </div>
				      <!-- 
				      <div class="item active">
				        <img src="la.jpg" alt="Los Angeles" style="width:100%;">
				      </div>
				
				      <div class="item">
				        <img src="chicago.jpg" alt="Chicago" style="width:100%;">
				      </div>
				    
				      <div class="item">
				        <img src="ny.jpg" alt="New york" style="width:100%;">
				      </div> 
				      -->
				    </div>
				
				    <!-- Left and right controls -->
				    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
				      <span class="glyphicon glyphicon-chevron-left"></span>
				      <span class="sr-only">Previous</span>
				    </a>
				    <a class="right carousel-control" href="#myCarousel" data-slide="next">
				      <span class="glyphicon glyphicon-chevron-right"></span>
				      <span class="sr-only">Next</span>
				    </a>
				  </div>
				  </div>
				  
				</div>
				
			</div>
		</div>
		
		<div style="float: right; background-color: #aaa; width: 30%;">
			<div style="margin-left: 30px; height: 800px; background-color: #bbb;">
				<div style="height: 480px; background-color: #ccc">
				</div>
				<div style="height: 290px; background-color: #aaa; margin-top: 30px;">
				</div>
			</div>
		</div>	
			
	</div>	
</div>






</body>
</html>