<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
	String ctxPath = request.getContextPath();
%>
    


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<style type="text/css">


  #level-test {
  background: #ebebeb;
  
  }
  
  #level-test .maincount-banner {
  margin: 9pt auto;
  width: 60pc;
  height: 60px;
  
  }
  
  #level-test .maincount-banner .count-banner {
  position: relative;
  height: 60px;
  box-shadow: 0 3px 6px rgba(0,0,0,.16); 
  
  } 
 
  #level-test   .maincount-banner .count-banner .textcount-banner {
  text-align: center;
  line-height: 60px;
  font-size: 14pt;
  font-weight: 400;
 
  }

  #level-test .maincount-banner .count-banner .time {
  position: absolute;
  display: inline-block;
  top: 22px;
  right: 24px;
  }
	  
  #level-test .level-testbox {
  margin: 0 auto;
  width: 60pc;
  height: 418px;
  background: #fff;
  border: 1px solid #d9d9d9;
  box-shadow: 0 2px 6px 0 rgba(0,0,0,.1);
  display: inline-block;
  
  }
  
  #level-test .level-testbox .page-image {
  display: inline-block;
  width: 460px;
  height: 100%;

  }	
  
  #level-test .level-testbox {
   margin: 0 auto;
   width: 60pc;
   height: 420px;
   background: #fff;
   box-shadow: 0 2px 6px 0 rgba(0,0,0,.1);
  }
  
  #level-test .level-testbox .stage-wrap{
    display: inline-block;
    vertical-align: top;
    width: 495px;
    height: 100%;
  }
  
  #level-test .level-testbox .stage-wrap .stage {
   padding: 36px;

  }
  
  #level-test .level-testbox .stage-wrap .stage .level-test-label {
    width: 125px;
    font-size: 9.5pt;

 }

 .page-image {
 float: left;
 }
 .stage-wrap{
 float: right;
 }
 
 .level-test-lavel {
 width: 125px;
 font-size: 9.5pt;
 height: 30px;
    line-height: 2pc;
    background: #ebebeb;
    color: #a0a0a0;
    font-weight: 700;
    text-align: center;
 }
 
 .question{
 font-weight: 600;
 margin-top: 18px;
 color: #787878;
 }
 
 .stage-title{
  margin-top: 6px;
  padding-bottom: 1pc;
  border-bottom: 2px solid #ebebeb;
  font-size: 42px;
  font-weight: 700;
  color: #474747;
 } 
  
  .level-test-description{
  font-weight: 450;
  margin-top: 65px;
  color: #505050;
  line-height: 1.5em;
  font-size: 13pt;
  }
  
  .orange{
  color: #ef6c00;
  }
  
  .start-button{
  width: 150px;
  font-weight: 400;
  font-size: 1pc;
  display: block;
  margin-top: 24px;
  height: 3pc;
  line-height: 49px;
  border-radius: 24px;
  background: #ef6c00;
  color: #fff;
  cursor: pointer;
  text-align: center;
  }
  
  .page-image{
  display: inline-block;
  width: 460px;
  height: 100%;
  background: url(https://cdn.studysearch.co.kr/static/images/level_test/level-test-page-image.2c551d8dfe0f.png);
  }
  
  .logo-wrap{
  display: inline-block;
  margin-top: 3pc;
  padding: 65px 36px;
  background: #fff;
  box-shadow: 
  }
  
  .logo {
    display: inline-block;
    width: 59px;
    height: 43px;
    background: url(https://cdn.studysearch.co.kr/static/images/level_test/level-test-assets-new.51e70aa2fb10.png);
    }
</style>

</head>

<body>

	<div id ="level-test">
		<div class="maincount-banner">
			<div class="count-banner">
				<div class ="textcount-banner">
					현재까지 
					<span class="count"> 256,002</span>
					참여했어요!!
				</div>
				<div class="time">
					<div class="clock"></div>
					<div class="text-time">
						<span> 00:00:00 </span>
					</div>
				</div>
			</div>
			<div class="level-testbox">
				<div class="page-image">
					<div class="logo-wrap">
						<div class="logo">
						</div>
					</div>
				</div>
				<div class="stage-wrap">
					<div class="stage">
						<div class="level-test-lavel">스터디상담신청</div>
						<div class="question">나는 어떤 스터디가 좋을까?</div>
						<div class="stage-title">스터디 상담 신청서!</div>
						<div class="level-test-description">1분 완성! 11문항의 무료 레벨테스트를 완료하고<br>레벨, 분위기, 시간 등... 
						<span class="orange">내게 꼭 맞는 스터디를 상담</span> 받으세요!
						</div>
						<a class="start-button" href="#">시작하기<span class="arrow"></span></a>				
					</div>										
				</div>
			</div>
		
		</div>
	</div>


</body>
</html>