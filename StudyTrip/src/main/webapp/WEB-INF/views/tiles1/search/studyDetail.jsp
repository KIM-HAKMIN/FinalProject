<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<% String ctxPath = request.getContextPath(); %>  
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

.table_col{
    color: #787878;
}
.table_row{

}
td{
	margin-top: 30px;
}


#levelbox {
    display: inline-block;
    padding: 0 24px;
    height: 3pc;
    border-radius: 2px;
    box-shadow: 0 3px 6px 0 rgba(0,0,0,.16);
    background-image: linear-gradient(157deg,#ff7d2c,#f28e06);
    line-height: 3pc;
    font-size: 14px;
    font-weight: 700;
    letter-spacing: .1px;
}
.levelFont{
    color: #777b7e;
    line-height: 1.8em;
}

#question-submit{
	float: right;
    margin-top: 10px;
    padding: 15px 50px;
    border: none;
    border-radius: 1px;
    background-color: #ef6c00;
    color: #fff;
    font-size: 11pt;
    cursor: pointer;
}

a {
	text-decoration: none;
	color: #000;
	
}

a:hover{
	cursor: pointer;
}


.auth-link {
    display: inline-block;
    margin-bottom: -2px;
    padding: 0 2px 2px;
    border-bottom: 2px solid #ccc;
    font-weight: 700;
}

.title{
    display: block;
    font-size: 14pt;
    font-weight: 700;
    color: #333;

}

.subtitle{

	display: block;
    margin-top: 10px;
    color: #a0a0a0;

}

.content{
 text-align: left;
 font-size: 10pt;
}

#star{
	display: inline-block;
    margin-left: 10px;
    height: 1pc;
    font-size: 9pt;
    font-weight: 700;
    color: #777;
}

#leader{
	padding: 24px 30px;
    background-color: #f0f7eb;
    color: #558b2f;
}
.edit{
	display: inline-block;
    width: 50px;
    height: 20px;
    line-height: 20px;
    text-indent: 15px;
    color: #a0a0a0;
    font-weight: 700;
    font-size: 9pt;
}
#side{
	margin: 0 9pt 35px;
    font-size: 16pt;
    font-weight: bold;
    color: #333;
    word-break: keep-all;
    line-height: 1.5em;
}
#price{

    float: right;
    color: #ef6c00;
    font-size: 18pt;
    font-weight: 700;
    
}

</style>

<script type="text/javascript">
$(document).ready(function(){

	
	
})



</script>


</head>
<body>

<div style="background: #ebebeb;" align="center" >
	<div style="width: 77%; padding-top: 30px; display: inline-block;">
	
		<div style="float: left; background-color: white; width: 70%; ">
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
			
			<div style="text-align: center; padding: 30px 30px 30px 30px;">
				<div style=" color: #ef6c00; font-size: 11pt; font-weight: bold;"><span>파주</span></div>
				<h1>캐나다에서 온 Helen의</br> 기초튼튼! 즐거운 영어 회화!</h1>
				<div style="border-bottom: solid 1px #ccc; width: 100%; margin: 0 auto; margin-top: 30px;"></div>
			</div>			
			
			<div style="width: 100%">
				<div style="display: inline-block; width: 24%; float: left; padding: 30px 30px 30px 30px;">
					<div style="width: 110px; font-size: 14pt; color: #333; font-weight: bold;">스터디 소개</div>
					<div style="border: solid 1px #ccc; height: 110px; width: 110px; background: #ef6c00; position: relative; bottom: 270px;">
						<div style="margin-top: 26px; color: #ffeb3b; font-weight: 700; font-size: 1pc;">Level</div>
						<div style="margin-top: 3px; font-size: 2pc; color: #fff;">입문2</div>
					</div>
				</div>
				
				<div style="background-color: white; display: inline-block; width: 75%; padding: 30px 30px 30px 30px;">
					<div class="content">
						영어 공포증에 시달리시는 분들은 이 스터디로 모여주세요! 여러분에게 영어하는 시간이 즐거워질 수 있게 도와드릴 게요~ 저는 여러분과 만나 친구와 대화하듯이 편하게 시간 보낼 수 있는 다정한 스터디를 진행할 거랍니다!
						
						우리 모두 한국어로 얘기하면서도 간혹 대화가 어렵다고 느낄 때가 있잖아요. 영어에도 그런 정도의 어려움만 있을 뿐이랍니다. 처음부터 차근차근 연습하면 전혀 어렵지 않아요!
						
						제가 처음 영어를 시작했을 때 느꼈던 두려움을 떠올리며 여러분을 더 많이 이해할게요! :-)
						
						Daily routine
						1. How’s your week? (10-15 mins)
						한 주간 어떻게 지내셨나요? 근황 나누고 그 주의 특별했던 이벤트에 대해 얘기 나눠요!
						
						2. Vocabulary & Expressions (20 mins)
						매 주 주제별 단어와 표현을 배우고, 배운 내용을 활용하여 영작도 해봐요!
						
						3. Role-play / Exercise (40 mins)
						배운 표현과 단어를 사용해서 역할극을 하며 정말로 그 상황에 닥친 것처럼 연습해봐요!
						
						4. Topic questions (30 mins)
						2-3명씩 짝지어서 서로 주어진 질문을 가지고 자유롭게 대화해봐요!
						
						5. Wrap up & Questions (10 mins)
						마무리하며 질문을 받는 시간을 가져요! :-)
						
						[ Topics ]
						1. Introduction 자기소개!! :-)
						2. Direction 길 설명하기!! :-)
						3. Airport 공항에서 유용한 패턴 익히기!! :-)
						4. Hotel 호텔에서 유용한 패턴 익히기!! :-)
						5. Restaurant 식당에서 유용한 실전회화! 메뉴를 보며 연습해봐요 :-)
						6. Shopping 쇼핑에 필요한 영어도 문제 없어요!! :-)
						7. Ticket Booth 뉴욕의 브로드웨이, 영국의 웨스트엔드! 어디든 갈 수 있도록 티켓구매에 대해 배워요! :-)
						8. Hospital 해외에서 가장 서러울 땐 몸이 아플 때! 혼자서도 잘 해낼 수 있게 영어로 배워봐요 :-)
					</div>
				</div>
			</div>
			

			<div style="width:100%; background-color: white;">
			<div style="border-bottom: solid 1px #ccc; width: 93%"></div>
			
				<div style="display: inline-block; width: 24%; float: left; padding: 50px 30px 50px 30px;">
					<div style="font-size: 11pt;color: #787878; font-weight: bold;">상세정보</div>
				</div>
				
				<div style="background-color: white; display: inline-block; width: 75%; padding: 50px 30px 50px 30px; text-align: left;">
					<table style="height: 100px;">
						<tr>
							<td class="table_col" style="width: 50px;">지역:</td>
							<td class="table_row" style="width: 100px;">김포</td>
							<td class="table_col" style="width: 50px;">인원:</td>
							<td class="table_row" style="width: 150px;">6-8명</td>
						</tr>
						
						<tr>
							<td class="table_col" style="width: 50px;">일정:</td>
							<td class="table_row" style="width: 100px;">3개월, 주1회</td>
							<td class="table_col" style="width: 50px;">장소비:</td>
							<td class="table_row" style="width: 150px;">포함</td>
						</tr>
						<tr>
							<td  class="table_col" style="width: 50px;">시간:</td>
							<td class="table_row" colspan="3" style="width: 100px;">그룹(화) 20:30-22:00</td>
						</tr>
						<tr>
							<td style="width: 50px;"></td>
							<td colspan="3" style="width: 100px;"><img src="<%= ctxPath%>/resources/images/arrow.png"/> 지금 신청하면 <span style="color : #1fa2e2;">1월 28일 (화)</span> 첫 스터디 시작!</td>
						</tr>
					</table>
				</div>

			</div>
			
			
			
			<div style="width:100%; background-color: white;">
			<div style="border-bottom: solid 1px #ccc; width: 93%;"></div>
			
				<div style="display: inline-block; width: 24%; float: left; padding: 30px 30px 30px 30px; position: relative; left: 20px;">
					<div style="border: solid 1px #ccc; height: 110px; width: 110px; background: #ef6c00; position: relative; right: 25px;">
						<div style="margin-top: 26px; color: #ffeb3b; font-weight: 700; font-size: 1pc;">Level</div>
						<div style="margin-top: 3px; font-size: 2pc; color: #fff;">입문2</div>
					</div>
				</div>
				
				<div style="background-color: white; display: inline-block; width: 75%; padding: 30px 30px 30px 30px; text-align: left;">
					<div style="font-size: 11pt; color: #505050; font-weight: bold; margin-bottom: 10px;">'입문2'레벨은 이런 분들을 위한 스터디에요!</div>
					<div class="levelFont"><img src="<%= ctxPath%>/resources/images/tick.png" style="width: 15px; height: 15px;"/> 중학교 영단어 수준까지 흐릿하게 기억나요.</div>
					<div class="levelFont"><img src="<%= ctxPath%>/resources/images/tick.png" style="width: 15px; height: 15px;"/>학창시절 문법을 배웠지만 기억에 남아있지 않아요.</div>
					<div class="levelFont"><img src="<%= ctxPath%>/resources/images/tick.png" style="width: 15px; height: 15px;"/>기본 문장 한마디는 영어로 만들 수 있지만, 조금만 길어져도 막혀요.</div>
					<div class="levelFont"><img src="<%= ctxPath%>/resources/images/tick.png" style="width: 15px; height: 15px;"/>외국인이 말을 하면 20-30% 정도 알아들어요</div>	
					<div id="levelbox" style="width: 380px; margin-top: 30px;">
						<span style="color: white;">나한테 맞는 레벨일까?▶︎</span><span style="color:#fffb67;"><u>30초 레벨테스트 하러가기!</u></span>
					</div>
					
				</div>

			</div>
			
			<div style="width: 100%;">
				<div style="border-bottom: solid 1px #ccc; width: 93%; margin: 0 auto; margin-top: 30px;"></div>
				<div style="display: inline-block; width: 24%; float: left; padding: 30px 30px 30px 30px;">
					<div style="width: 110px; font-size: 14pt; color: #333; font-weight: bold;">리더 소개</div>
					<img src="<%= ctxPath%>/resources/images/1508821271.jpg" style="height: 100px; width: 100px; border-radius: 100px; position: relative; top:30px; border: solid 2px white;"/>


				</div>
				
				<div style="background-color: white; display: inline-block; width: 75%; padding: 30px 30px 30px 30px;">

					<div id="leader" align="left" style="width: 100%; height: 110px;">
						<img style="width: 20px;height: 20px; " src="<%= ctxPath%>/resources/images/studyDetail/leadercheck.png"/>
						<span style="font-weight: bold;"> &nbsp인증됨</span>
						<div style="margin-top: 16px;"><span>학력:</span> <span style="margin-left: 100px; font-weight: bold;">Dan Robert College of Health Care</span></div>
					</div>
					
					<div  class="content" style="margin-top: 30px;">
						영어 공포증에 시달리시는 분들은 이 스터디로 모여주세요! 여러분에게 영어하는 시간이 즐거워질 수 있게 도와드릴 게요~ 저는 여러분과 만나 친구와 대화하듯이 편하게 시간 보낼 수 있는 다정한 스터디를 진행할 거랍니다!
						
						우리 모두 한국어로 얘기하면서도 간혹 대화가 어렵다고 느낄 때가 있잖아요. 영어에도 그런 정도의 어려움만 있을 뿐이랍니다. 처음부터 차근차근 연습하면 전혀 어렵지 않아요!
						
						제가 처음 영어를 시작했을 때 느꼈던 두려움을 떠올리며 여러분을 더 많이 이해할게요! :-)
						
						Daily routine
						1. How’s your week? (10-15 mins)
						한 주간 어떻게 지내셨나요? 근황 나누고 그 주의 특별했던 이벤트에 대해 얘기 나눠요!
						
						2. Vocabulary & Expressions (20 mins)
						매 주 주제별 단어와 표현을 배우고, 배운 내용을 활용하여 영작도 해봐요!
						
						3. Role-play / Exercise (40 mins)
						배운 표현과 단어를 사용해서 역할극을 하며 정말로 그 상황에 닥친 것처럼 연습해봐요!
						
						4. Topic questions (30 mins)
						2-3명씩 짝지어서 서로 주어진 질문을 가지고 자유롭게 대화해봐요!
						
						5. Wrap up & Questions (10 mins)
						마무리하며 질문을 받는 시간을 가져요! :-)
						
						[ Topics ]
						1. Introduction 자기소개!! :-)
						2. Direction 길 설명하기!! :-)
						3. Airport 공항에서 유용한 패턴 익히기!! :-)
						4. Hotel 호텔에서 유용한 패턴 익히기!! :-)
						5. Restaurant 식당에서 유용한 실전회화! 메뉴를 보며 연습해봐요 :-)
						6. Shopping 쇼핑에 필요한 영어도 문제 없어요!! :-)
						7. Ticket Booth 뉴욕의 브로드웨이, 영국의 웨스트엔드! 어디든 갈 수 있도록 티켓구매에 대해 배워요! :-)
						8. Hospital 해외에서 가장 서러울 땐 몸이 아플 때! 혼자서도 잘 해낼 수 있게 영어로 배워봐요 :-)
					</div>
				</div>
			</div>


			<div style="width: 100%;">
				<div style="border-bottom: solid 1px #ccc; width: 93%; margin: 0 auto; margin-top: 30px;"></div>
				<div style="display: inline-block; width: 24%; float: left; padding: 30px 0 30px 0;">
					<div style="width: 150px; font-size: 12pt; color: #333; font-weight: bold;">리더에 대한 후기</div>
				</div>
				
				<div align="left" style="background-color: white; display: inline-block; width: 75%; padding: 30px 30px 30px 30px;">
					<img style="width: 20px;height: 20px;" src="<%= ctxPath%>/resources/images/studyDetail/star.png"/>
					<img style="width: 20px;height: 20px;" src="<%= ctxPath%>/resources/images/studyDetail/star.png"/>
					<img style="width: 20px;height: 20px;" src="<%= ctxPath%>/resources/images/studyDetail/star.png"/>
					<img style="width: 20px;height: 20px;" src="<%= ctxPath%>/resources/images/studyDetail/star.png"/>
					<img style="width: 20px;height: 20px;" src="<%= ctxPath%>/resources/images/studyDetail/star.png"/>
					<span id="star"> 4.9</span>				
				</div>
			</div>
			
			<c:forEach begin="1" end="3">
			<div style="width: 100%; min-height: 250px;">
				<div style="border: solid 1px white; width: 100%; margin: 0 auto; margin-top: 30px;"></div>
				<div style="display: inline-block; width: 24%; float: left; padding: 30px 30px 30px 30px;">
					<img src="<%= ctxPath%>/resources/images/1508821271.jpg" style="height: 100px; width: 100px; border-radius: 100px; position: relative; top:30px; border: solid 2px white;"/>
				</div>
				
				<div style="background-color: white; display: inline-block; width: 75%; padding: 30px 30px 30px 30px; text-align: left;">
					<div style="margin: 0 auto;">
						<div style="font-size: 11pt; font-weight: bold;"> 전혜림</div>
						<div style="margin-top: 20px;">정말 영어를 잘하고 싶은데 뭐부터 해야할지 모르고 막상 시작하려니 많이 막막했는데 스터디 서치를 보고 용기내서 신총을 해서 Helen Lee수업을 들으면서 영어에 대한 자신감도 많이 생기고 영어실력도 많이 늘었어요 그리고 Helen Lee쌤이 정말 생활에 필요한 영어를 잘 알려주셔서 너무 좋았고 친절하고 꼼꼼하게 알려주셔서 정말 좋았어요~!!! 지금 사정이 생겨서 신청을 못 했지만 다음에도 Helen Lee쌤한테 배우고 싶어요~!!!</div>
						<div style="font-size: 9pt; color: #ef6c00; margin-top: 10px;">캐나다에서 온 Helen의 기초튼튼! 즐거운 영어 회화!</div>
						<div style="margin-top: 10px;">2019년 11월</div>
						<div style="border-bottom: solid 1px #ccc; width: 100%; margin-top: 30px;"></div>
					</div>
				</div>
			</div>		
			</c:forEach>
			
			<c:if test="false">
			<div style="width: 100%; min-height: 250px;">
				<div style="display: inline-block; width: 24%; float: left; padding: 30px 30px 30px 30px;">
				<span style="font-size: 16pt; font-weight: bold;">Q&A</span> </br>
				<div align="left" style="margin-left: 50px; margin-top: 5px; color: #777;">0개</div>
				</div>
				
				<div align="right" style="background-color: white; display: inline-block; width: 75%; padding: 30px 30px 30px 30px; text-align: left;">

						<div align="right"><textarea type="text" style="width: 100%;" rows="8" class="form-control"  placeholder="스터디에 대해 궁금한 점이 있으신가요?"></textarea></div>
						
						<div align="right"><input id="question-submit" type="submit" value="완료" /></div>
				</div>
			</div>
			</c:if>

			<div style="width: 100%; min-height: 250px;">
				<div style="display: inline-block; width: 24%; float: left; padding: 30px 30px 30px 30px;">
				<c:if test="false"><span style="font-size: 16pt; font-weight: bold;">Q&A</span> </br>
				<div align="left" style="margin-left: 50px; margin-top: 5px; color: #777;">0개</div></c:if>
				</div>
				
				<div align="right" style="background-color: white; display: inline-block; width: 75%; padding: 30px 30px 30px 30px; text-align: left;">

						<c:if test="true"><div style="font-size: 11pt;">질문을 작성하시려면 <a class="auth-link">로그인</a>또는 <a class="auth-link">회원가입</a>이 필요합니다.</div>
						</c:if>
						<c:if test="false">
						<div style="text-align: center; border-bottom: solid 1px #ccc; border-top: solid 1px #ccc; margin-top: 40px; padding: 20px 0 20px 0;">
							<span class="title">아직 Q&A가 없습니다.</span><br/>
							<span class="subtitle">스터디에 대해 궁금한 점이 있으신가요? 스터디 리더에게 무엇이든 물어보세요!</span>
						</div>
						</c:if>
						<c:if test="true">
						<c:forEach begin="1" end="3">
						<div style="text-align: left; border-top: solid 1px #ccc; margin-top: 40px; padding: 20px 0 20px 0; min-height: 200px;">
							<img style="width: 50px; height: 50px;" src="<%= ctxPath%>/resources/images/studyDetail/qa.png"/><span style="margin-left: 15px; font-size: 11pt; font-weight: bold;">김학민</span><div class="edit" style="margin-left: 200px;">수정</div><img style="width: 20px; height: 20px;" src="<%= ctxPath%>/resources/images/studyDetail/pencil.png"/><div class="edit">삭제</div><img style="width: 20px; height: 20px;" src="<%= ctxPath%>/resources/images/studyDetail/paper-bin.png"/>
							<br/><br/>
							<span style="margin-top: 20px;">정말 영어를 잘하고 싶은데 뭐부터 해야할지 모르고 막상 시작하려니 많이 막막했는데 스터디 서치를 보고 용기내서 신총을 해서 Helen Lee수업을 들으면서 영어에 대한 자신감도 많이 생기고 영어실력도 많이 늘었어요 그리고 Helen Lee쌤이 정말 생활에 필요한 영어를 잘 알려주셔서 너무 좋았고 친절하고 꼼꼼하게 알려주셔서 정말 좋았어요~!!! 지금 사정이 생겨서 신청을 못 했지만 다음에도 Helen Lee쌤한테 배우고 싶어요~!!!</span>
						</div>
						</c:forEach>
						</c:if>
				</div>
			</div>		




	
		</div> <!-- left 마지막 div -->
		
	
			

		
		
		

		
		<div style="float: right; background-color: #ebebeb; width: 30%;" >
			<div id="sideMenu"style="margin-left: 30px; height: 800px; background-color: #ebebeb;">
				<div style="height: 480px; background-color: white; text-align: left; padding: 10px 10px 10px 10px;">
					<div id="side" style="margin-top: 30px;">캐나다에서 온 Helen의 기초튼튼! 즐거운 영어 회화!</div>
					<div style="margin-top: 50px; margin-left: 40px;">
						<img src="<%= ctxPath%>/resources/images/studyDetail/orangecheck.png"/> <span style="color: #787878; font-weight: 700; font-size: 13pt;margin-left: 15px;">12주</span>
					</div>
					<div style="margin-top: 60px;">
						<span style="font-size: 11pt; color: #a0a0a0; margin-left: 20px;">참가비</span> <span id="price" style="margin-right: 20px;">240,000원</span>
					</div>
					<div align="center">
						<button style="width: 95%; height:60px; margin-top: 10px; background-color: #ef6c00;"><span style="color: white; font-size: 13pt; font-weight: bold;">참여 신청하기</span></button>
					</div>
					<div align="center">
						<button style="width: 95%; height: 60px; margin-top: 10px; border: 1px solid #dcdcdc;">
							<c:if test="false"> <img src="<%= ctxPath%>/resources/images/studyDetail/like.png" style="width: 20px; height: 20px;"/> <span style="font-size: 13pt; font-weight: bold;">찜하기</span></c:if>
							<c:if test="true"> <img src="<%= ctxPath%>/resources/images/studyDetail/love.png" style="width: 20px; height: 20px;"/> <span style="font-size: 13pt; font-weight: bold;">찜 취소</span></c:if>
						</button>
					</div>
				</div>
				<div style="height: 290px; background-color: #ebebeb; margin-top: 30px;">
				</div>
			</div>
		</div>	
			
	</div>	
</div>






</body>
</html>