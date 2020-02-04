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
  background-color: #00ffff;

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
   border: solid 1px red; 
  }
  
  #level-test .level-testbox .stage-wrap .stage .level-test-label {
    width: 125px;
    font-size: 9.5pt;
    border: solid 1px red; 
 }
 
 .page-image {
 float: left;
 }
 .stage-wrap{
 float: right;
 }
 
 dl {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

#level-test .result-form .form-fields .field-title {
    margin-top: 36px;
    padding-top: 36px;
    border-top: 1px solid #e6e6e6;
    font-size: 15pt;
    color: #505050;
    font-weight: 500;
}

form {
    display: block;
    margin-top: 0em;
} 

#level-test .result-form {
    display: inline-block;
    box-sizing: border-box;
    padding: 3pc 36px 36px;
    vertical-align: top;
    width: 5in;
    background: #fff;
    box-shadow: 0 2px 6px 0 rgba(0,0,0,.1);
}

.page-image{
    background: url(https://cdn.studysearch.co.kr/static/images/level_test/consult-banner.6646f68f2596.png);
}
  
.form-title{
    font-size: 22pt;
    font-weight: 700;
    color: #505050;
}

.description {
    margin-top: 8px;
    color: #505050;
    font-size: 16pt;
    font-weight: 300;
}  
  
.comp{
    margin-top: 36px;
    width: 100%;
    height: 60px;
    box-sizing: border-box;
    background: #ff6c00;
    font-size: 1pc;
    font-weight: 600;
    border-radius: 30px;
    color: #fff;
    border: none;
}
  
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">

<script type="text/javascript">
	
	$(document).ready(function(){	
		
		/* 체크박스 한개만 선택가능하도록 한것. 직업 */
		$("input:checkbox[name=job-select]").click(function(){
			$("input:checkbox[name=job-select]").prop("checked",false);
			$(this).prop("checked",true);
		});
	
		/* 체크박스 한개만 선택가능하도록 한것. 지역*/
		$("input:checkbox[name=area]").click(function(){
			$("input:checkbox[name=area]").prop("checked",false);
			$(this).prop("checked",true);
		});
		
		/* 체크박스 한개만 선택가능하도록 한것. 시간*/
		$("input:checkbox[name=available_time]").click(function(){
			$("input:checkbox[name=available_time]").prop("checked",false);
			$(this).prop("checked",true);
		});
		
		
	}); //end of $(document).ready -------
	
	/* 데이터피커(달력) */
	$(document).ready(function(){
	    $( "#datepicker" ).datepicker();
	});
	  
	
	

</script>

</head>

<body>

	<div id ="level-test">
		<div class="maincount-banner">			

			<!---------------- 메인배너 ------------------->
			<div class="count-banner">
				<div class ="textcount-banner">
					현재까지 
					<span class="count"> 256,002</span>
					참여했어요!!
				</div>
				<div class="time">
					<div class="clock"></div>
					<div class="text-time">
						<span>${format_time2} </span>
					</div>
				</div>
			</div>
			
			<!--------------- 레벨테스트박스 ----------------->
			<div class="level-testbox">
				<div class="page-image"></div>
				
				<!-- form시작  -->
				<form class="result-form"> 
					<input type="hidden" name="ltrt" value="D">
					<div class="form-header">
						<div class="form-title">(2/2)<br>이제 거의 끝났어요!</div>
						<div class="description"><span style="color:red;"><strong>${name_sub}</strong></span>님을 위한 스터디, 곧 추천드릴게요!</div>
					</div>
					<dl class="form-fields">
						<dt class="field-title">기본 정보<span class="description">성비와 나이대는 중요해요! 스터디 분위기에 영향을 준답니다.</span></dt>
						<dd class="field-content basic-info">
							<ul class="basic-info-list">
								<li class="field-wrap name">
									<div class="basic-info-field-name">이름</div>
									<input class="text-input name" type="text" name="name" value="${name_sub}">
								</li>
								<li class="field-wrap gender">
									<div class="basic-info-field-name">성별</div>
									<div class="gender-wrap">
										<input id="gender-male" type="radio" name="gender" value="남">
										<label class="gender-label" for="gender-male">남</label>
										<input id="gender-female" type="radio" name="gender" value="여">
										<label class="gender-label" for="gender-female">여</label>
									</div>
								</li>
								<li class="field-wrap age">
									<div class="basic-info-field-name">나이</div>
									<div class="Select Select--single">
										<div class="Select-control">
											<span class="Select-multi-value-wrapper" id="react-select-2--value">
											<div class="Select-placeholder">나이대
												<select>
													<option>20-24</option>
													<option>25-29</option>
													<option>30-34</option>
													<option>35-39</option>
													
												</select>
											</div>
											<div role="combobox" aria-expanded="false" aria-owns="" aria-activedescendant="react-select-2--value" class="Select-input" tabindex="0" aria-disabled="false" style="border: 0px; width: 1px; display: inline-block;">
											</div>
											</span>
											<span class="Select-arrow-zone">
												<span class="Select-arrow">
												</span>
											</span>
										</div>
									</div>
								</li>
							</ul>
						</dd>
						<dt class="field-title">현재 하시는 일</dt>
							<dd class="field-content job">
							<input type="hidden" name="job" value="">
								<ul class="job-list">
									<li class="job">
										<label class="checkbox-wrap">
										<input type="checkbox" name="job-select" value="학생">
										<span class="label-text">학생</span>
										</label>
									</li>
								<li class="job">
									<label class="checkbox-wrap">
									<input type="checkbox" name="job-select" value="직장인">
									<span class="label-text">직장인</span>
									</label>
								</li>
								<li class="job">
									<label class="checkbox-wrap">
									<input type="checkbox" name="job-select" value="취준생">
									<span class="label-text">취준생</span>
									</label>
								</li>
								<li class="job">
									<label class="checkbox-wrap">
									<input type="checkbox" name="job-select" value="퇴직/이직중">
									<span class="label-text">퇴직/이직중</span>
									</label>
								</li>
								<li class="job">
									<label class="checkbox-wrap">
									<input type="checkbox" name="job-select" value="대학원생">
									<span class="label-text">대학원생</span>
									</label>
								</li>
								</ul>
								
							</dd>
								<dt class="field-title">참여 가능한 지역<span class="description">
								<span class="orange"></span>을 선택하세요</span>
								</dt>
									<dd class="field-content area">
										<div class="area-list-1-wrap">
											<div class="list-name">서울 · 경기 · 인천</div>
											<ul class="area-list">
												<li class="area">
													<label class="checkbox-wrap">
													<input type="checkbox" name="area" value="2">
													<span class="label-text">강남</span>
													</label>
												</li>
												<li class="area">
													<label class="checkbox-wrap">
													<input type="checkbox" name="area" value="1">
													<span class="label-text">신촌</span>
													</label>
												</li>
												<li class="area">
													<label class="checkbox-wrap">
													<input type="checkbox" name="area" value="9">
													<span class="label-text">홍대</span>
													</label>
												</li>
												<li class="area">
													<label class="checkbox-wrap">
													<input type="checkbox" name="area" value="7">
													<span class="label-text">부평</span>
													</label>
												</li>
												<li class="area">
													<label class="checkbox-wrap">
													<input type="checkbox" name="area" value="3">
													<span class="label-text">종각</span>
													</label>
												</li>
												<li class="area">
													<label class="checkbox-wrap">
													<input type="checkbox" name="area" value="6">
													<span class="label-text">노원</span>
													</label>
												</li>				
											</ul>
											
										</div>
										
									
									</dd>
									<dt class="field-title">일정
										<span class="description">시작 가능한 날짜를 선택해주세요!</span>
									</dt>
										<dd class="field-content available-date">
											<div class="calendar-wrap">
											<input type="hidden" name="available_since" value="">								
												<div style="color: red;" id="datepicker"></div>
												 
												
									</div>
								</dd>
							<dt class="field-title">시간
								<span class="description">참여 가능한 시간을 알려주세요! <span class="orange"></span></span>
							</dt>
							<dd class="field-content available-time">
								<ul class="time-list">
									<li class="time">
										<label class="checkbox-wrap">
										<input type="checkbox" name="available_time" value="평일 오전 (9시-12시)"><span class="label-text">평일 오전 (9시-12시)</span>
										</label>
									</li>
									<li class="time">
										<label class="checkbox-wrap">
										<input type="checkbox" name="available_time" value="평일 오후(13-17시)"><span class="label-text">평일 오후(13-17시)</span>
										</label>
									</li>
									<li class="time">
										<label class="checkbox-wrap">
										<input type="checkbox" name="available_time" value="평일 저녁(18시 시작)"><span class="label-text">평일 저녁(18시 시작)</span>
										</label>
									</li>
									<li class="time">
										<label class="checkbox-wrap">
										<input type="checkbox" name="available_time" value="평일 밤(20시 시작)"><span class="label-text">평일 밤(20시 시작)</span>
										</label>
									</li>
									<li class="time">
										<label class="checkbox-wrap">
										<input type="checkbox" name="available_time" value="주말 오전 (9-12시)"><span class="label-text">주말 오전 (9-12시)</span>
										</label>
									</li>
									<li class="time">
										<label class="checkbox-wrap">
										<input type="checkbox" name="available_time" value="주말 낮 (12시-17시)"><span class="label-text">주말 낮 (12시-17시)</span>
										</label>
									</li>
									<li class="time">
										<label class="checkbox-wrap">
										<input type="checkbox" name="available_time" value="주말 저녁 (17시 이후 시작)"><span class="label-text">주말 저녁 (17시 이후 시작)</span>
										</label>
									</li>
									</ul>
								</dd>
									<dt class="field-title">안내받을 연락처<span class="description">정확히 입력해주셔야 연락을 받으실 수 있어요.</span>
									</dt>
								<dd class="field-content contact">
									<input class="text-input phone-number" type="text" name="contact" placeholder="휴대폰 번호 ('-' 제외)">
								</dd>								
							</dl>
							<div class="agree-terms-wrap"></div>
							<input type="checkbox">
							<div class="agree-terms-text"><a href="#">개인정보 수집 및 이용</a>에 동의합니다! :D</div>
							<div class="terms-detail-box">
							    <div class="terms-content-wrap">
									<div class="terms-title">개인정보 수집 및 이용약관
									</div>
									<div class="terms-detail">개인정보의 수집 및 이용목적
									</div>
			 			  	 	</div>
					      	</div>
					      	<button type="button" class="comp" ><a style="color: white;" href="/studytrip/leveltestend.st">상담신청완료</a></button>				   						      			
						</form>				
				</div>
			</div>
		</div>
		
 
</body>
</html>