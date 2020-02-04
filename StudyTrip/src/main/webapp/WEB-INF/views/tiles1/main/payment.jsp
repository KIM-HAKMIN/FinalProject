<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	#first_container{
		border: solid 1px black;
		margin: 0 400px;
		overflow: hidden;
		background: white;
	}

	#mainhead{
		/* border: solid 1px navy; */
		margin: 10px 10px 0 10px;
		height: 72px;
    	background: #5f6b7a ;
    	border-radius: 4px;
    	text-align: right;
	}
	
	#stages {
    display: inline-block;
    width: 10pc;
    height: 72px;
    line-height: 72px;
    font-size: 10pt;
    text-align: center;
    color: #9da6b1;
	}

	.spaces {
	border-right: solid 1px gray; 
	height: 72px; 
	display: inline-block; 
	padding: 0 20px;"
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="first_container">
	<div id="mainhead">
		<div id="stages">
				<div id="spaces">
					<span class="stage" >결제</span>
				</div>
				<div id="spaces">
					<span class="stage">참여신청완료</span>
				</div>
		</div>	
	</div>
	

</div>

</body>
</html>