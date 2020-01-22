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

 .progress-bar{
    margin-bottom: 3pc;
    width: 100%;
    height: 4px;
    background: #dbdbdb;
    line-height: 0;
}  

.pass {
    display: inline-block;
    width: 9.09%;
    height: 100%;
    background: #ef6c00;
}

.question-wrap {
	padding: 0 36px;
}

.previous{
    display: inline-block;
    width: 11px;
    height: 20px;
    background: url(https://cdn.studysearch.co.kr/static/images/level_test/level-test-assets-new.51e70aa2fb10.png)0 -118px;
}

.question {
	display: inline-block;
    vertical-align: top;
    margin-left: 9pt;
    width: calc(100% - 33px);
    color: #505050;
    font-size: 15pt;
    font-weight: 300;
    line-height: 1.4em;
}

.progress{
    color: #ef6c00;
    font-weight: 700;
}  

.question-content {
	color: #505050;
    font-size: 15pt;
    font-weight: 300;
    line-height: 1.4em;
} 

.sentence-wrap {
    margin: 36px 0 24px;
    font-size: 18pt;
    font-weight: 700;
    color: #505050;
    line-height: 1.16em;
}

.question-mark {
    display: inline-block;
    vertical-align: top;
    width: 28px;
}

.sentence {
    display: inline-block;
    vertical-align: top;
    width: calc(100% - 28px);
    height: 2.32em;
}

.select-list-wrap {
    border-top: 1px solid #dcdcdc;
    padding-top: 24px;
}

.help {
    margin: 9pt 0 26px 23px;
    color: #a0a0a0;
    font-size: 14px;
    font-weight: 300;
}

.select-list-wrap {
    border-top: 1px solid #dcdcdc;
    padding-top: 24px;
}

.select-list.row-1 {
    display: inline-block;
    width: 60%;
}

.select-wrap {
    margin-bottom: 10px;
}

li {
    display: list-item;
    text-align: -webkit-match-parent;
}

.select-list.row-2 {
    display: inline-block;
    width: 40%;
}

.select-wrap {
    margin-bottom: 10px;
}

ul {
    list-style: none;
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
				<!--
				<div class="stage-wrap">
					<div class="stage">
						<div class="progress-bar">
							<div class="pass">
							</div>
						</div>
						<div class="question-wrap"><a class="previous" href="#"></a>
							<div class="question">
								<span class="progress">[1 of 11]</span> 
								<span class="question-content">아래 문장을 외국인 앞에서<br>바로바로 말하실 수 있나요?</span>															
							</div>
							<div class="sentence-wrap"><span class="question-mark">Q.</span><span class="sentence">Do you like pasta?</span>											
							</div>
							
																					
							<div class="select-list-wrap">
								<ul class="select-list">
									<li class="select-wrap"><label><input type="radio"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">이 정도는 바로 말할 수 있어요.</span></label>
									</li>
									<li class="select-wrap"><label><input type="radio"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">해석은 되지만, 바로 말할 수 있을지 모르겠어요.</span></label>
									</li>
									<li class="select-wrap"><label><input type="radio"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">무슨 뜻인지 해석이 안돼요.</span></label>
									</li>
								</ul>
							</div>
						</div>
					</div>										
				</div>
				
				  -->
				<%--  아래내용은 11항에 대한 내용 (for문)
							
							2, Q.I went to school today.
							3, Q.I can't help you. I'm driving
							4, Q.I'll visit my friend's house to celebrate her birthday.
							5, Q.This is the book that I'm reading recently.
							6, Q.I haven't received your email. Have you sent it?
							7, Q.If I was important to you, you should've told me the truth.
							8, Q.There's no such thing as eternal love.
							
							
							9,
							
							<div class="question-stage">
								<div class="progress-bar">
									<div class="pass">
									</div>
									<div class="pass">
									</div>
									<div class="pass">
									</div>
									<div class="pass">
									</div>
									<div class="pass">
									</div>
									<div class="pass">
									</div>
									<div class="pass">
									</div>
									<div class="pass">
									</div>
									<div class="pass">
									</div>
								</div>
								<div class="question-wrap"><a class="previous" href="#"></a>
									<div class="question"><span class="progress">[9 of 11]</span> <span class="question-content">1년 내 취득한 공인 인증 성적 중<br>가장 높은 점수를 골라주세요.</span>
									</div>
									<div class="help">(스피킹 점수를 우선으로 골라주세요)
									</div>
									<div class="select-list-wrap">
										<ul class="select-list row-1">
											<li class="select-wrap"><label><input type="radio"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">해당 사항 없어요!</span></label>
											</li>
											<li class="select-wrap"><label><input type="radio"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토스 LV 6. / 오픽 IM1-2</span></label>
											</li>
											<li class="select-wrap"><label><input type="radio"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토스 LV 7. / 오픽 IM3-IH</span></label>
											</li>
											<li class="select-wrap"><label><input type="radio"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토스 LV 8. / 오픽 AL</span></label>
											</li>
											<li class="select-wrap"><label><input type="radio"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">아이엘츠 Speaking 6.5 이상</span></label>
											</li>
											<li class="select-wrap"><label><input type="radio"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">아이엘츠 Speaking 7.5 이상</span></label>
											</li>
										</ul>
										<ul class="select-list row-2">
											<li class="select-wrap"><label><input type="radio"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토익 600점 이하</span></label>
											</li>
											<li class="select-wrap"><label><input type="radio"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토익 600점 이상</span></label>
											</li>
											<li class="select-wrap"><label><input type="radio"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토익 700점 이상</span></label>
											</li>
											<li class="select-wrap"><label><input type="radio"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토익 800점 이상</span></label>
											</li>
											<li class="select-wrap"><label><input type="radio"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토익 900점 이상</span></label>
											</li>
										</ul>
									</div>
								</div>
							</div>
							
							--%>	
			
			</div>
		
		</div>
	</div>


</body>
</html>