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

.sticky {
  position: fixed;
  top: 0;
  width: 19%; 
  
  
}

.sticky2{

	width: 98%;

	
}

</style>

<script type="text/javascript">
$(document).ready(function(){

	// 헤더 상단 메뉴바 고정
	var navbarTop = $("#sideMenu").offset().top;
//	var navbarLeft = $("#navbar").offset().left;

	 $("#sideMenu").addClass("sticky2"); 

	
	var scrollTop = 0;
	$(window).scroll(function(event){
		scrollTop = $(this).scrollTop();
	 // alert("scrollTop : "+scrollTop);
	//  alert("navbarTop : "+navbarTop);

	    if(scrollTop >= navbarTop) {
			$("#sideMenu").addClass("sticky");
			$("#sideMenu").removeClass("sticky2");
		}
		else {
			$("#sideMenu").removeClass("sticky");
			$("#sideMenu").addClass("sticky2");
		}
	}); // end of $(window).scroll(function(event)-----------------------------
	
	
});



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
				    
				    
				    <c:forEach var="imgmap" items="${viewStudyImageList}" varStatus="status">
				    	<c:if test="${status.index ==0 }">
				      		<li data-target="#myCarousel" data-slide-to="${status.index}" class="active"></li>
				      	</c:if>
				    	<c:if test="${status.index !=0 }">				      	
					      	<li data-target="#myCarousel" data-slide-to="${status.index}"></li>
						</c:if>
				     </c:forEach>
				    </ol>
				
				    <!-- Wrapper for slides -->
				    <div class="carousel-inner">
				    	<c:forEach  var="imgmap" items="${viewStudyImageList}" varStatus="status">
				    	
				    		<c:if test="${status.index ==0 }"> 	
					      		<div class="item active">
							       <img src="<%= ctxPath%>/resources/files/${imgmap.filename}" style="width:100%;"> 
							    </div>
				      		</c:if>
				      		
				      		<c:if test="${status.index !=0 }">
				      			<div class="item">
						       		<img src="<%= ctxPath%>/resources/files/${imgmap.filename}" style="width:100%;">
								</div>
				      		</c:if>

						</c:forEach>

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
			
			<div style="text-align: center; padding: 30px 30px 30px 30px;" align="center">
				<div style=" color: #ef6c00; font-size: 11pt; font-weight: bold;"><span>${stvo.area}</span></div>
				<div style="width: 75%;margin: 0 auto;"><h2>${stvo.title}</h2></div>
				<div style="border-bottom: solid 1px #ccc; width: 100%; margin: 0 auto; margin-top: 30px;"></div>
			</div>			
			
			<div style="width: 100%">
				<div style="display: inline-block; width: 24%; float: left; padding: 30px 30px 30px 30px;">
					<div style="width: 110px; font-size: 14pt; color: #333; font-weight: bold;">스터디 소개</div>
					<div style="border: solid 1px #ccc; height: 110px; width: 110px; background: #ef6c00; position: relative; bottom: 300px;">
						<div style="margin-top: 26px; color: #ffeb3b; font-weight: 700; font-size: 1pc;">Level</div>
						<div style="margin-top: 3px; font-size: 2pc; color: #fff;">${stvo.lv}</div>
					</div>
				</div>
				
				<div style="background-color: white; display: inline-block; width: 75%; padding: 30px 30px 30px 30px;">
					<div class="content" style="font-size: 12pt;">
						${stvo.study_info}
					</div>
				</div>
			</div>
			

			<div style="width:100%; background-color: white;">
			<div style="border-bottom: solid 1px #ccc; width: 93%"></div>
			
				<div style="display: inline-block; width: 24%; float: left; padding: 50px 30px 50px 30px;">
					<div style="font-size: 11pt;color: #787878; font-weight: bold;">상세정보</div>
				</div>
				
				<div style="background-color: white; display: inline-block; width: 75%; padding: 50px 30px 50px 30px; text-align: left;">
					<table style="height: 100px; width: 370px;">
						<tr>
							<td class="table_col" style="width: 50px;">지역:</td>
							<td class="table_row" style="width: 100px;">${stvo.area}</td>
							<td class="table_col" style="width: 50px;">인원:</td>
							<td class="table_row" style="width: 150px;">${stvo.max_cnt}명</td>
						</tr>
						
						<tr>
							<td class="table_col" style="width: 50px;">일정:</td>
							<td class="table_row" style="width: 100px;">3개월, 주1회</td>
							<td class="table_col" style="width: 50px;">장소비:</td>
							<td class="table_row" style="width: 150px;">${stvo.areacost}</td>
						</tr>
						<tr>
							<td  class="table_col" style="width: 50px;">시간:</td>
							<td class="table_row" colspan="3" style="width: 100px;">그룹(${stvo.study_day}) ${stvo.study_time}</td>
						</tr>
						<tr>
							<td style="width: 50px;"></td>
							<td colspan="3" style="width: 100px;"><img src="<%= ctxPath%>/resources/images/arrow.png"/> 지금 신청하면 <span style="color : #1fa2e2;">${stvo.startday} (${stvo.study_day})</span> 첫 스터디 시작!</td>
						</tr>
					</table>
				</div>

			</div>
			
			
			
			<div style="width:100%; background-color: white;">
			<div style="border-bottom: solid 1px #ccc; width: 93%;"></div>
			
				<div style="display: inline-block; width: 24%; float: left; padding: 30px 30px 30px 30px; position: relative; left: 20px;">
					<div style="border: solid 1px #ccc; height: 110px; width: 110px; background: #ef6c00; position: relative; right: 25px;">
						<div style="margin-top: 26px; color: #ffeb3b; font-weight: 700; font-size: 1pc;">Level</div>
						<div style="margin-top: 3px; font-size: 2pc; color: #fff;">${stvo.lv}</div>
					</div>
				</div>
				
				<div style="background-color: white; display: inline-block; width: 75%; padding: 30px 30px 30px 30px; text-align: left;">
					<div style="font-size: 11pt; color: #505050; font-weight: bold; margin-bottom: 10px;">'${stvo.lv}'레벨은 이런 분들을 위한 스터디에요!</div>
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
						<div style="margin-top: 16px;">
							<c:if test="${stvo.qualifi=='토익'}"> <span>학력:</span> <span style="margin-left: 100px; font-weight: bold;">Dan Robert College of Health Care</span></c:if>
						</div>
					</div>
					
					<div  class="content" style="margin-top: 30px; font-size: 12pt;">
						${stvo.teacher_info}
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
						<c:if test="true">
						<div style="text-align: left; border-top: solid 1px #ccc; margin-top: 40px; padding: 20px 0 20px 0; min-height: 200px;">
							<img style="width: 50px; height: 50px;" src="<%= ctxPath%>/resources/images/studyDetail/qa.png"/><span style="margin-left: 15px; font-size: 11pt; font-weight: bold;">김학민</span><div class="edit" style="margin-left: 200px;">수정</div><img style="width: 20px; height: 20px;" src="<%= ctxPath%>/resources/images/studyDetail/pencil.png"/><div class="edit">삭제</div><img style="width: 20px; height: 20px;" src="<%= ctxPath%>/resources/images/studyDetail/paper-bin.png"/>
							<br/><br/>
							<span style="margin-top: 20px;">정말 영어를 잘하고 싶은데 뭐부터 해야할지 모르고 막상 시작하려니 많이 막막했는데 스터디 서치를 보고 용기내서 신총을 해서 Helen Lee수업을 들으면서 영어에 대한 자신감도 많이 생기고 영어실력도 많이 늘었어요 그리고 Helen Lee쌤이 정말 생활에 필요한 영어를 잘 알려주셔서 너무 좋았고 친절하고 꼼꼼하게 알려주셔서 정말 좋았어요~!!! 지금 사정이 생겨서 신청을 못 했지만 다음에도 Helen Lee쌤한테 배우고 싶어요~!!!</span>
						</div>
						</c:if>
						<c:if test="false"> <!-- 대댓글인 경우 -->
						<div style="text-align: left; border-top: solid 1px #ccc; margin-top: 40px; padding: 20px 0 20px 0; min-height: 200px;">
							<img src="<%= ctxPath%>/resources/images/1508821271.jpg" style="height: 60px; width: 60px; border-radius: 100px; position: relative; border: solid 2px white;"/><span style="margin-left: 15px; font-size: 11pt; font-weight: bold; color: #ef6c00;">김학민님의 답변 :</span><div class="edit" style="margin-left: 120px;">수정</div><img style="width: 20px; height: 20px;" src="<%= ctxPath%>/resources/images/studyDetail/pencil.png"/><div class="edit">삭제</div><img style="width: 20px; height: 20px;" src="<%= ctxPath%>/resources/images/studyDetail/paper-bin.png"/>
							<br/><br/>
							<span style="margin-top: 20px;">정말 영어를 잘하고 싶은데 뭐부터 해야할지 모르고 막상 시작하려니 많이 막막했는데 스터디 서치를 보고 용기내서 신총을 해서 Helen Lee수업을 들으면서 영어에 대한 자신감도 많이 생기고 영어실력도 많이 늘었어요 그리고 Helen Lee쌤이 정말 생활에 필요한 영어를 잘 알려주셔서 너무 좋았고 친절하고 꼼꼼하게 알려주셔서 정말 좋았어요~!!! 지금 사정이 생겨서 신청을 못 했지만 다음에도 Helen Lee쌤한테 배우고 싶어요~!!!</span>
						</div>
						</c:if>
						</c:forEach>
						</c:if>
				</div>
			</div>		




	
		</div> <!-- left 마지막 div -->
		
	
			

		
		
		

		
		<div style="display:inline-block; width: 30%">
			<div id="sideMenu"style="margin-left: 30px; height: 800px;">
				<div style="height: 480px; background-color: white; text-align: left; padding: 10px 10px 10px 10px;">
					<div id="side" style="margin-top: 30px;">${stvo.title}</div>
					<div style="margin-top: 50px; margin-left: 40px;">
						<img src="<%= ctxPath%>/resources/images/studyDetail/orangecheck.png"/> <span style="color: #787878; font-weight: 700; font-size: 13pt;margin-left: 15px;">${stvo.study_week}주</span>
					</div>
					<div style="margin-top: 60px;">
						<span style="font-size: 11pt; color: #a0a0a0; margin-left: 20px;">참가비</span> <span id="price" style="margin-right: 20px;">${stvo.price}원</span>
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
				<!-- <div style="height: 290px; margin-top: 30px;">
				</div> -->
			</div>
		</div>	
			
	</div>	
</div>






</body>
</html>