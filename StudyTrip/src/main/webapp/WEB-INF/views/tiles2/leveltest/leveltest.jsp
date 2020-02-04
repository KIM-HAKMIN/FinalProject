<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String ctxPath = request.getContextPath();
%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



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
  background-color: #00ffff;
  font-family: Apple SD Gothic Neo,notokr,dotum,serif!important;
    text-rendering: optimizeLegibility;
    -webkit-font-smoothing: antialiased;
 
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
    padding-top: 10px;
}

#row-1 {
    display: inline-block;
    width: 60%;
}

#row-2 {
    display: inline-block;
    width: 40%;
}

.select-wrap {
    margin-bottom: 10px;
}

li {
    display: list-item;
    text-align: -webkit-match-parent;
}



.select-wrap {
    margin-bottom: 10px;
}

ul {
    list-style: none;
}

.select-list-wrap .row-1 {
    display: inline-block;
    width: 60%;

}

.select-list-wrap{
display: inline-block;
}

.select-list-wrap .row-2 {
    display: inline-block;
    width: 60%;
}

#level-test-page .level-test-box .stage-wrap-name {
    display: inline-block;
    vertical-align: top;
    width: 500px;
    height: 100%;
}
 
#level-test-page .level-test-box .stage-wrap-name .name-stage .progress-bar {
    width: 100%;
    height: 4px;
    background: #ef6c00;
} 



.question {
    font-size: 15pt;
    font-weight: 300;
    color: #505050;
}

.name-input {
    margin-top: 24px;
    box-sizing: border-box;
    width: 100%;
    height: 36px;
    padding: 0 9pt;
    color: #282828;
    font-weight: 300;
    font-size: 10pt;
    border: 1px solid #c8c8c8;
}

</style>

</head>

<body>

<% 
	int count = 0;
%>

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
						<span> <strong style="color: red;">실시간</strong> ${format_time1}</span>
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
	

	
				<div class="stage-wrap " id="stage-wrap2">
					<form action="">
					<%-- 
					<div class="stage">						
						<div class="level-test-lavel">스터디상담신청</div>
						<div class="question">나는 어떤 스터디가 좋을까?</div>
						<div class="stage-title">스터디 상담 신청서!</div>
						<div class="level-test-description">1분 완성! 11문항의 무료 레벨테스트를 완료하고<br>레벨, 분위기, 시간 등... 
						<span class="orange">내게 꼭 맞는 스터디를 상담</span> 받으세요!
						</div>						
						<a class="start-button" onclick="leveltestgo()">시작하기<span class="arrow"></span></a>
					</div> 
					--%>
					</form>								
				</div>
		
	<%--  문항					
				  <!-- 1번문항 -->
				
				<div class="stage-wrap" >
					<div class="stage">
						<div class="progress-bar">						
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
									<li class="select-wrap"><label><input type="radio" value="3"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">이 정도는 바로 말할 수 있어요.</span></label>
									</li>
									<li class="select-wrap"><label><input type="radio" value="2"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">해석은 되지만, 바로 말할 수 있을지 모르겠어요.</span></label>
									</li>
									<li class="select-wrap"><label><input type="radio" value="1"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">무슨 뜻인지 해석이 안돼요.</span></label>
									</li>
								</ul>
							</div>
						</div>
					</div>										
				</div>
				<!-- 2번문항 -->
				<div class="stage-wrap ">
					<div class="stage">
						<div class="progress-bar">
						
						</div>
						<div class="question-wrap"><a class="previous" href="#"></a>
							<div class="question">
								<span class="progress">[2 of 11]</span> 
								<span class="question-content">아래 문장을 외국인 앞에서<br>바로바로 말하실 수 있나요?</span>															
							</div>
							<div class="sentence-wrap"><span class="question-mark">Q.</span><span class="sentence">I went to school today.</span>											
							</div>
							
																					
							<div class="select-list-wrap">
								<ul class="select-list">
									<li class="select-wrap"><label><input type="radio" value="3"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">이 정도는 바로 말할 수 있어요.</span></label>
									</li>
									<li class="select-wrap"><label><input type="radio" value="2"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">해석은 되지만, 바로 말할 수 있을지 모르겠어요.</span></label>
									</li>
									<li class="select-wrap"><label><input type="radio" value="1"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">무슨 뜻인지 해석이 안돼요.</span></label>
									</li>
								</ul>
							</div>
						</div>
					</div>										
				</div>
				
				<!-- 3번문항 -->
				<div class="stage-wrap">
					<div class="stage">
						<div class="progress-bar">
						
						</div>
						<div class="question-wrap"><a class="previous" href="#"></a>
							<div class="question">
								<span class="progress">[3 of 11]</span> 
								<span class="question-content">아래 문장을 외국인 앞에서<br>바로바로 말하실 수 있나요?</span>															
							</div>
							<div class="sentence-wrap"><span class="question-mark">Q.</span><span class="sentence">I can't help you. I'm driving</span>											
							</div>
							
																					
							<div class="select-list-wrap">
								<ul class="select-list">
									<li class="select-wrap"><label><input type="radio" value="3"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">이 정도는 바로 말할 수 있어요.</span></label>
									</li>
									<li class="select-wrap"><label><input type="radio" value="2"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">해석은 되지만, 바로 말할 수 있을지 모르겠어요.</span></label>
									</li>
									<li class="select-wrap"><label><input type="radio" value="1"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">무슨 뜻인지 해석이 안돼요.</span></label>
									</li>
								</ul>
							</div>
						</div>
					</div>										
				</div>
				
				<!-- 4번문항 -->
				<div class="stage-wrap">
					<div class="stage">
						<div class="progress-bar">
						
						</div>
						<div class="question-wrap"><a class="previous" href="#"></a>
							<div class="question">
								<span class="progress">[4 of 11]</span> 
								<span class="question-content">아래 문장을 외국인 앞에서<br>바로바로 말하실 수 있나요?</span>															
							</div>
							<div class="sentence-wrap"><span class="question-mark">Q.</span><span class="sentence">I'll visit my friend's house to celebrate her birthday.</span>											
							</div>
							
																					
							<div class="select-list-wrap">
								<ul class="select-list">
									<li class="select-wrap"><label><input type="radio" value="3"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">이 정도는 바로 말할 수 있어요.</span></label>
									</li>
									<li class="select-wrap"><label><input type="radio" value="2"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">해석은 되지만, 바로 말할 수 있을지 모르겠어요.</span></label>
									</li>
									<li class="select-wrap"><label><input type="radio" value="1"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">무슨 뜻인지 해석이 안돼요.</span></label>
									</li>
								</ul>
							</div>
						</div>
					</div>										
				</div>
				
				<!-- 5번문항 -->
				<div class="stage-wrap">
					<div class="stage">
						<div class="progress-bar">
							
						</div>
						<div class="question-wrap"><a class="previous" href="#"></a>
							<div class="question">
								<span class="progress">[5 of 11]</span> 
								<span class="question-content">아래 문장을 외국인 앞에서<br>바로바로 말하실 수 있나요?</span>															
							</div>
							<div class="sentence-wrap"><span class="question-mark">Q.</span><span class="sentence">This is the book that I'm reading recently.</span>											
							</div>
							
																					
							<div class="select-list-wrap">
								<ul class="select-list">
									<li class="select-wrap"><label><input type="radio" value="3"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">이 정도는 바로 말할 수 있어요.</span></label>
									</li>
									<li class="select-wrap"><label><input type="radio" value="2"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">해석은 되지만, 바로 말할 수 있을지 모르겠어요.</span></label>
									</li>
									<li class="select-wrap"><label><input type="radio" value="1"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">무슨 뜻인지 해석이 안돼요.</span></label>
									</li>
								</ul>
							</div>
						</div>
					</div>										
				</div>
				
				<!-- 6번문항 -->
				<div class="stage-wrap">
					<div class="stage">
						<div class="progress-bar">
							
						</div>
						<div class="question-wrap"><a class="previous" href="#"></a>
							<div class="question">
								<span class="progress">[6 of 11]</span> 
								<span class="question-content">아래 문장을 외국인 앞에서<br>바로바로 말하실 수 있나요?</span>															
							</div>
							<div class="sentence-wrap"><span class="question-mark">Q.</span><span class="sentence">I haven't received your email. Have you sent it?</span>											
							</div>
							
																					
							<div class="select-list-wrap">
								<ul class="select-list">
									<li class="select-wrap"><label><input type="radio" value="3"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">이 정도는 바로 말할 수 있어요.</span></label>
									</li>
									<li class="select-wrap"><label><input type="radio" value="2"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">해석은 되지만, 바로 말할 수 있을지 모르겠어요.</span></label>
									</li>
									<li class="select-wrap"><label><input type="radio" value="1"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">무슨 뜻인지 해석이 안돼요.</span></label>
									</li>
								</ul>
							</div>
						</div>
					</div>										
				</div>
				
				<!-- 7번문항 -->
				<div class="stage-wrap">
					<div class="stage">
						<div class="progress-bar">
							
						</div>
						<div class="question-wrap"><a class="previous" href="#"></a>
							<div class="question">
								<span class="progress">[7 of 11]</span> 
								<span class="question-content">아래 문장을 외국인 앞에서<br>바로바로 말하실 수 있나요?</span>															
							</div>
							<div class="sentence-wrap"><span class="question-mark">Q.</span><span class="sentence">If I was important to you, you should've told me the truth.</span>											
							</div>
							
																					
							<div class="select-list-wrap">
								<ul class="select-list">
									<li class="select-wrap"><label><input type="radio" value="3"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">이 정도는 바로 말할 수 있어요.</span></label>
									</li>
									<li class="select-wrap"><label><input type="radio" value="2"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">해석은 되지만, 바로 말할 수 있을지 모르겠어요.</span></label>
									</li>
									<li class="select-wrap"><label><input type="radio" value="1"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">무슨 뜻인지 해석이 안돼요.</span></label>
									</li>
								</ul>
							</div>
						</div>
					</div>										
				</div>
				
				<!-- 8번문항 -->
				<div class="stage-wrap">
					<div class="stage">
						<div class="progress-bar">
							
						</div>
						<div class="question-wrap"><a class="previous" href="#"></a>
							<div class="question">
								<span class="progress">[8 of 11]</span> 
								<span class="question-content">아래 문장을 외국인 앞에서<br>바로바로 말하실 수 있나요?</span>															
							</div>
							<div class="sentence-wrap"><span class="question-mark">Q.</span><span class="sentence">There's no such thing as eternal love.</span>											
							</div>
							
																					
							<div class="select-list-wrap">
								<ul class="select-list">
									<li class="select-wrap"><label><input type="radio" value="3"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">이 정도는 바로 말할 수 있어요.</span></label>
									</li>
									<li class="select-wrap"><label><input type="radio" value="2"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">해석은 되지만, 바로 말할 수 있을지 모르겠어요.</span></label>
									</li>
									<li class="select-wrap"><label><input type="radio" value="1"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">무슨 뜻인지 해석이 안돼요.</span></label>
									</li>
								</ul>
							</div>
						</div>
					</div>										
				</div>
				
				<div class="stage-wrap">
					<div class="stage">
						<div class="question-stage">
							<div class="progress-bar">
							</div>
							<div class="question-wrap"><a class="previous" href="#"></a>
								<div class="question"><span class="progress">[9 of 11]</span> <span class="question-content">1년 내 취득한 공인 인증 성적 중<br>가장 높은 점수를 골라주세요.</span>
								</div>
								<div class="help">(스피킹 점수를 우선으로 골라주세요)
								</div>
								<div class="select-list-wrap">
									<ul class="select-list row-1">
										<li class="select-wrap"><label><input type="radio" value="1"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">해당 사항 없어요!</span></label>
										</li>
										<li class="select-wrap"><label><input type="radio" value="5"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토스 LV 6. / 오픽 IM1-2</span></label>
										</li>
										<li class="select-wrap"><label><input type="radio" value="5"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토스 LV 7. / 오픽 IM3-IH</span></label>
										</li>
										<li class="select-wrap"><label><input type="radio" value="6"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토스 LV 8. / 오픽 AL</span></label>
										</li>
										<li class="select-wrap"><label><input type="radio" value="6"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">아이엘츠 Speaking 6.5 이상</span></label>
										</li>
										<li class="select-wrap"><label><input type="radio" value="7"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">아이엘츠 Speaking 7.5 이상</span></label>
										</li>
									</ul>
									<ul class="select-list row-2">
										<li class="select-wrap"><label><input type="radio" value="2"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토익 600점 이하</span></label>
										</li>
										<li class="select-wrap"><label><input type="radio" value="2"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토익 600점 이상</span></label>
										</li>
										<li class="select-wrap"><label><input type="radio" value="3"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토익 700점 이상</span></label>
										</li>
										<li class="select-wrap"><label><input type="radio" value="3"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토익 800점 이상</span></label>
										</li>
										<li class="select-wrap"><label><input type="radio" value="4"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토익 900점 이상</span></label>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			
				<div class="stage-wrap">
					<div class="stage">
						<div class="question-stage">
							<div class="progress-bar">
							</div>
							<div class="question-wrap"><a class="previous" href="#"></a>
								<div class="question"><span class="progress">[10 of 11]</span> <span class="question-content">영어로 자주 말할 환경에 놓여 계시거나,말하기 연습을 활발히 하신지 얼마나 되셨나요?</span>
								</div>
								<div class="help">(영어 수업, 지속적인 영어 업무, 해외 어학 연수 등)
								</div>
								<div class="select-list-wrap">
									<ul class="select-list row-1">
										<li class="select-wrap"><label><input type="radio"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">영어로"말하기"를 거의 해본적이 없어요.</span></label>
										</li>
										<li class="select-wrap"><label><input type="radio"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">6개월 이내</span></label>
										</li>
										<li class="select-wrap"><label><input type="radio"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">6개월 -1년</span></label>
										</li>
										<li class="select-wrap"><label><input type="radio"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">1년 넘개 지났어요.</span></label>
										</li>									
									</ul>							
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="stage-wrap">
					<div class="stage">
						<div class="stage-wrap-name">
							<div class="name-stage">
								<div class="progress-bar"></div>
								<div class="question-wrap">
									<div class="question"><strong>레벨테스트 완료!</strong><br><span class="bold"><strong>성함이 어떻게 되시나요? :D</strong></span></div>
									<input style="margin-top: 20px;" class="name-input" type="text" placeholder="이름 입력"><button class="submit">레벨테스트 종료</button>
								</div>
							</div>
						</div>
					</div>
				</div>
					 --%>
				
			</div>
		
		</div>
	</div>


<script>



$(document).ready(function (){

	var html = '<div class="stage">';
	html += '<div class="level-test-lavel">스터디상담신청</div>';
	html += '<div class="question">나는 어떤 스터디가 좋을까?</div>';
	html += '<div class="stage-title">스터디 상담 신청서!</div>';
	html += '<div class="level-test-description">1분 완성! 11문항의 무료 레벨테스트를 완료하고<br>레벨, 분위기, 시간 등...'; 
	html += '<span class="orange">내게 꼭 맞는 스터디를 상담</span> 받으세요!';
	html += '</div>';						
	html += '<a class="start-button" onclick="leveltestgo()">시작하기<span class="arrow"></span></a>';
	html += '</div>'; 
	
	$(".stage-wrap").html(html);	
	
}); //-----------------------$(document).ready()---------------------------

/* 1번문항  */
function leveltestgo() {	
	
	var html = '<div class="stage">';
	html += '<div class="progress-bar">';
	html += '</div>';
	html += '<div class="question-wrap"><a class="previous" onclick="javascript:history.back();"></a>'; 
	html += '<div class="question">';
	html += '<span class="progress">[1 of 11]</span> ';						
	html += '<span class="question-content">아래 문장을 외국인 앞에서<br>바로바로 말하실 수 있나요?</span>'; 
	html += '</div>'; 
	html += '<div class="sentence-wrap"><span class="question-mark">Q.</span><span class="sentence">Do you like pasta?</span>'; 
	html += '</div>'; 
	html += '<div class="select-list-wrap">'; 
	html += '<ul class="select-list">'; 
	html += '<li class="select-wrap"><label><input type="radio" name="radiochoice_1" id="radiochoice_1"  class="radiochoice_1" value="3" ><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">이 정도는 바로 말할 수 있어요.</span></label>'; 
	html += '</li>'; 
	html += '<li class="select-wrap"><label><input type="radio" name="radiochoice_1" id="radiochoice_1"  class="radiochoice_1" value="2" ><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">해석은 되지만, 바로 말할 수 있을지 모르겠어요.</span></label>'; 
	html += '</li>'; 
	html += '<li class="select-wrap"><label><input type="radio" name="radiochoice_1" id="radiochoice_1"  class="radiochoice_1" value="1" ><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">무슨 뜻인지 해석이 안돼요.</span></label>'; 
	html += '</li>';
	html += '<input type="hidden" name="radiovalue" value="${depthno}" />';
	html += '</ul>';	
	html += '</div>'; 
	html += '</div>'; 
	html += '</div>'; 
	html += '</div>'; 
	 
	$(".stage-wrap").html(html); 	
	 
} // end of function leveltestgo() -------

function radiovalue(){
 	var radiovalue = document.getElementsByName('radiochoice_1');
 	for(var i=0; i<radiovalue.length; i++) {
 		if(radiovalue[i].checked ==ture){
 			alert(radiovalue[i].value);
 		}
 	}
}

/* 2번문항  */

	$(document).on("change","input:radio[id=radiochoice_1]", function(){	

	var html = '<div class="stage">';
	html += '<form name="radiovalue">'
	html += '<div class="progress-bar">'; 
	html += '</div>'; 
	html += '<div class="question-wrap"><a class="previous" onclick="javascript:history.back();"></a>'; 
	html += '<div class="question">'; 
	html += '<span class="progress">[2 of 11]</span> '; 
	html += '<span class="question-content">아래 문장을 외국인 앞에서<br>바로바로 말하실 수 있나요?</span>'; 
	html += '</div>'; 
	html += '<div class="sentence-wrap"><span class="question-mark">Q.</span><span class="sentence">I went to school today.</span>'; 
	html += '</div>'; 
	html += '<div class="select-list-wrap">'; 
	html += '<ul class="select-list">'; 
	html += '<li class="select-wrap"><label><input type="radio" name="radiochoice_2" id="radiochoice" class="radiochoice" value="3"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">이 정도는 바로 말할 수 있어요.</span></label>'; 
	html += '</li>'; 
	html += '<li class="select-wrap"><label><input type="radio" name="radiochoice_2" id="radiochoice" class="radiochoice" value="2"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">해석은 되지만, 바로 말할 수 있을지 모르겠어요.</span></label>'; 
	html += '</li>';
	html += '<li class="select-wrap"><label><input type="radio" name="radiochoice_2" id="radiochoice" class="radiochoice" value="1"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">무슨 뜻인지 해석이 안돼요.</span></label>';
	html += '</li>';
	html += '<input type="hidden" id="checkradio" value="">';
	html += '</ul>';
	html += '</div>';
	html += '</div>'; 
	html += '</div>';
	html += '</div>';
	html += '</form>';

	$(".stage-wrap").html(html);	


});
/* 	$('input[name="radiochoice_2"]:checked').val();		
		alert(radiochoice_2);   
	
	 */
/* 3번문항  */
$(document).on("change","input:radio[name=radiochoice_2]", function(){	
	
	var html = '<div class="stage">';
	html +=	'<div class="progress-bar">';
	html +='</div>';
	html +='<div class="question-wrap"><a class="previous" href="#"></a>';
	html +='<div class="question">';
	html +='<span class="progress">[3 of 11]</span>';
	html +='<span class="question-content">아래 문장을 외국인 앞에서<br>바로바로 말하실 수 있나요?</span>';
	html +='</div>';
	html +='<div class="sentence-wrap"><span class="question-mark">Q.</span><span class="sentence">I can&rsquo;t help you. I&rsquo;m driving</span>';
	html +='</div>';
	html +='<div class="select-list-wrap">';
	html +='<ul class="select-list">';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_3" class="radiochoice" value="3"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">이 정도는 바로 말할 수 있어요.</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_3" class="radiochoice" value="2"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">해석은 되지만, 바로 말할 수 있을지 모르겠어요.</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_3" class="radiochoice" value="1"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">무슨 뜻인지 해석이 안돼요.</span></label>';
	html +='</li>';
	html +='</ul>';
	html +='</div>';
	html +='</div>';
	html +='</div>';
	html +='</div>'; 

	$(".stage-wrap").html(html);
	
});
/* 4번문항  */	
$(document).on("change","input:radio[name=radiochoice_3]", function(){	

    var html = '<div class="stage">';
	html +='<div class="progress-bar">';
	html +='</div>';
	html +='<div class="question-wrap"><a class="previous" href="#"></a>';
	html +='<div class="question">';
	html +='<span class="progress">[4 of 11]</span>';
	html +='<span class="question-content">아래 문장을 외국인 앞에서<br>바로바로 말하실 수 있나요?</span>';
	html +='</div>';
	html +='<div class="sentence-wrap"><span class="question-mark">Q.</span><span class="sentence">I&rsquo;ll visit my friend&rsquo;s house to celebrate her birthday.</span>';
	html +='</div>';
	html +='<div class="select-list-wrap">';
	html +='<ul class="select-list">';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_4" class="radiochoice" value="3"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">이 정도는 바로 말할 수 있어요.</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_4" class="radiochoice" value="2"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">해석은 되지만, 바로 말할 수 있을지 모르겠어요.</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_4" class="radiochoice" value="1"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">무슨 뜻인지 해석이 안돼요.</span></label>';
	html +='</li>';
	html +='</ul>';
	html +='</div>';
	html +='</div>';
	html +='</div>';
	html +='</div>';

	$(".stage-wrap").html(html);
	
});	
	
/* 5번문항  */
$(document).on("change","input:radio[name=radiochoice_4]", function(){ 
	
	var html = '<div class="stage">';
	html +='<div class="progress-bar">';
	html +='</div>';
	html +='<div class="question-wrap"><a class="previous" href="#"></a>';
	html +='<div class="question">';
	html +='<span class="progress">[5 of 11]</span>';
	html +='<span class="question-content">아래 문장을 외국인 앞에서<br>바로바로 말하실 수 있나요?</span>';
	html +='</div>';
	html +='<div class="sentence-wrap"><span class="question-mark">Q.</span><span class="sentence">This is the book that I&rsquo;m reading recently.</span>';
	html +='</div>';
	html +='<div class="select-list-wrap">';
	html +='<ul class="select-list">';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_5" class="radiochoice" value="3"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">이 정도는 바로 말할 수 있어요.</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_5" class="radiochoice" value="2"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">해석은 되지만, 바로 말할 수 있을지 모르겠어요.</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_5" class="radiochoice" value="1"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">무슨 뜻인지 해석이 안돼요.</span></label>';
	html +='</li>';
	html +='</ul>';
	html +='</div>';
	html +='</div>';
	html +='</div>';
	html +='</div>';	
	
	$(".stage-wrap").html(html);
	
});	

/* 6번문항  */
$(document).on("change","input:radio[name=radiochoice_5]", function(){ 

	var html = '<div class="stage">';
	html +='<div class="progress-bar">';
	html +='</div>';
	html +='<div class="question-wrap"><a class="previous" href="#"></a>';
	html +='<div class="question">';
	html +='<span class="progress">[6 of 11]</span>';
	html +='<span class="question-content">아래 문장을 외국인 앞에서<br>바로바로 말하실 수 있나요?</span>';
	html +='</div>';
	html +='<div class="sentence-wrap"><span class="question-mark">Q.</span><span class="sentence">I haven&rsquo;t received your email. Have you sent it?</span>';
	html +='</div>';
	html +='<div class="select-list-wrap">';
	html +='<ul class="select-list">';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_6" class="radiochoice" value="3"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">이 정도는 바로 말할 수 있어요.</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_6" class="radiochoice" value="2"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">해석은 되지만, 바로 말할 수 있을지 모르겠어요.</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_6" class="radiochoice" value="1"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">무슨 뜻인지 해석이 안돼요.</span></label>';
	html +='</li>';
	html +='</ul>';
	html +='</div>';
	html +='</div>';
	html +='</div>';
	html +='</div>';	 
	
	$(".stage-wrap").html(html);
	
});	

	
/* 7번문항  */
$(document).on("change","input:radio[name=radiochoice_6]", function(){ 
   
	var html = '<div class="stage">';
	html +='<div class="progress-bar">';
	html +='</div>';
	html +='<div class="question-wrap"><a class="previous" href="#"></a>';
	html +='<div class="question">';
	html +='<span class="progress">[7 of 11]</span>';
	html +='<span class="question-content">아래 문장을 외국인 앞에서<br>바로바로 말하실 수 있나요?</span>';
	html +='</div>';
	html +='<div class="sentence-wrap"><span class="question-mark">Q.</span><span class="sentence">If I was important to you, you should&rsquo;ve told me the truth.</span>';
	html +='</div>';
	html +='<div class="select-list-wrap">';
	html +='<ul class="select-list">';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_7" class="radiochoice" value="3"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">이 정도는 바로 말할 수 있어요.</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_7" class="radiochoice" value="2"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">해석은 되지만, 바로 말할 수 있을지 모르겠어요.</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_7" class="radiochoice" value="1"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">무슨 뜻인지 해석이 안돼요.</span></label>';
	html +='</li>';
	html +='</ul>';
	html +='</div>';
	html +='</div>';
	html +='</div>';
	html +='</div>';	
	$(".stage-wrap").html(html);
	
});	

/* 8번문항  */
$(document).on("change","input:radio[name=radiochoice_7]", function(){ 
    var html = '<div class="stage">';
	html +='<div class="progress-bar">';
	html +='</div>';
	html +='<div class="question-wrap"><a class="previous" href="#"></a>';
	html +='<div class="question">';
	html +='<span class="progress">[8 of 11]</span>';
	html +='<span class="question-content">아래 문장을 외국인 앞에서<br>바로바로 말하실 수 있나요?</span>';
	html +='</div>';
	html +='<div class="sentence-wrap"><span class="question-mark">Q.</span><span class="sentence">There&rsquo;s no such thing as eternal love.</span>';
	html +='</div>';
	html +='<div class="select-list-wrap">';
	html +='<ul class="select-list">';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_8" class="radiochoice" value="3"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">이 정도는 바로 말할 수 있어요.</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_8" class="radiochoice" value="2"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">해석은 되지만, 바로 말할 수 있을지 모르겠어요.</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_8" class="radiochoice" value="1"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">무슨 뜻인지 해석이 안돼요.</span></label>';
	html +='</li>';
	html +='</ul>';
	html +='</div>';
	html +='</div>';
	html +='</div>';
	html +='</div>';	
	$(".stage-wrap").html(html);
	
});	

/* 9번문항  */	
$(document).on("change","input:radio[name=radiochoice_8]", function(){ 
	var html = '<div class="stage">';
	html +='<div class="progress-bar">';
	html +='</div>';
	html +='<div class="question-wrap"><a class="previous" href="#"></a>';
	html +='<div class="question"><span class="progress">[9 of 11]</span> <span class="question-content">1년 내 취득한 공인 인증 성적 중<br>가장 높은 점수를 골라주세요.</span>';
	html +='</div>';
	html +='<div class="help">(스피킹 점수를 우선으로 골라주세요)';
	html +='</div>';
	html +='<div class="select-list-wrap">';
	html +='<ul class="select-list row-1" id="row-1">';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_9" value="1"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">해당 사항 없어요!</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_9" value="5"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토스 LV 6. / 오픽 IM1-2</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_9" value="5"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토스 LV 7. / 오픽 IM3-IH</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_9" value="6"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토스 LV 8. / 오픽 AL</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_9" value="6"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">아이엘츠 Speaking 6.5 이상</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_9" value="7"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">아이엘츠 Speaking 7.5 이상</span></label>';
	html +='</li>';
	html +='</ul>';
	html +='<ul class="select-list row-2" id="row-2">';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_9" value="2"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토익 600점 이하</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_9" value="2"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토익 600점 이상</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_9 value="3"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토익 700점 이상</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_9 value="3"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토익 800점 이상</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_9 value="4"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">토익 900점 이상</span></label>';
	html +='</li>';
	html +='</ul>';
	html +='</div>';
	html +='</div>';
	html +='</div>';
	html +='</div>';
	html +='</div>';
	
	$(".stage-wrap").html(html);
	
});	

/*10번문항 */
$(document).on("change","input:radio[name=radiochoice_9]", function(){ 

	var html = '<div class="stage">';
	html +='<div class="question-stage">';
	html +='<div class="progress-bar">';
	html +='</div>';
	html +='<div class="question-wrap"><a class="previous" href="#"></a>';
	html +='<div class="question"><span class="progress">[10 of 11]</span> <span class="question-content">영어로 자주 말할 환경에 놓여 계시거나,말하기 연습을 활발히 하신지 얼마나 되셨나요?</span>';
	html +='</div>';
	html +='<div class="help">(영어 수업, 지속적인 영어 업무, 해외 어학 연수 등)';
	html +='</div>';
	html +='<div class="select-list-wrap">';
	html +='<ul class="select-list row-1">';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_10" value="1"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">영어로"말하기"를 거의 해본적이 없어요.</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_10" value="2"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">6개월 이내</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_10" value="3"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">6개월 -1년</span></label>';
	html +='</li>';
	html +='<li class="select-wrap"><label><input type="radio" name="radiochoice_10" value="4"><span class="mock-button"><span class="check-dot"></span></span><span class="select-content">1년 넘개 지났어요.</span></label>';
	html +='</li>';
	html +='</ul>';
	html +='</div>';
	html +='</div>';
	html +='</div>';
	html +='</div>';
	html +='</div>';
	
	$(".stage-wrap").html(html);
});	 


	

/*11번문항 */
$(document).on("change","input:radio[name=radiochoice_10]", function(){
	
	var html = '<div class="stage">';	
	html +='<div class="stage-wrap-name">';
	html +='<div class="name-stage">'; 
	html +='<div class="progress-bar"></div>';
	html +='<div class="question-wrap">';
	html +='<div class="question"><strong>레벨테스트 완료!</strong><br><span class="bold"><strong>성함이 어떻게 되시나요? :D</strong></span></div>';
	html +='<input style="margin-top: 20px;" type="text" placeholder="이름 입력" id="name_sub"><button onclick="namesubmit()" type="button" id="namesubmit" class="submit">레벨테스트 종료</button>';
	html +='</div>';
	html +='</div>';
	html +='</div>';
	html +='</div>';
	html +='</div>';
 
	$(".stage-wrap").html(html);
	
	
	
});	



// 이름을 저장해서 다른뷰단으로 넘기는 함수 만들기
function  namesubmit() {	
	
	$("#name_sub").val();
	 var name_sub = $("#name_sub").val();
   	 //이름확인용
	 //alert(name_sub);	 
	 //alert($("#name_sub").val());	 

	 location.href = "/studytrip/leveltest.st?name="+name_sub;	 
	 
}
 
</script>


<!-- 
고급 32 이상
중급 25점이상 32점이하
초급 15점이상 25점이하
입문 15 점이하
 -->

</body>
