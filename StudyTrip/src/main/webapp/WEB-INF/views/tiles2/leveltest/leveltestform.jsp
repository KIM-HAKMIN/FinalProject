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
  
</style>

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
						<span>00:00:00 </span>
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
						<div class="description">11님을 위한 스터디, 곧 추천드릴게요!</div>
					</div>
					<dl class="form-fields">
						<dt class="field-title">기본 정보<span class="description">성비와 나이대는 중요해요! 스터디 분위기에 영향을 준답니다.</span></dt>
						<dd class="field-content basic-info">
							<ul class="basic-info-list">
								<li class="field-wrap name">
									<div class="basic-info-field-name">이름</div>
									<input class="text-input name" type="text" name="name" value="11">
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
										<input type="radio" name="job-select" value="학생">
										<span class="label-text">학생</span>
										</label>
									</li>
								<li class="job">
									<label class="checkbox-wrap">
									<input type="radio" name="job-select" value="직장인">
									<span class="label-text">직장인</span>
									</label>
								</li>
								<li class="job">
									<label class="checkbox-wrap">
									<input type="radio" name="job-select" value="취준생">
									<span class="label-text">취준생</span>
									</label>
								</li>
								<li class="job">
									<label class="checkbox-wrap">
									<input type="radio" name="job-select" value="퇴직/이직중">
									<span class="label-text">퇴직/이직중</span>
									</label>
								</li>
								<li class="job">
									<label class="checkbox-wrap">
									<input type="radio" name="job-select" value="대학원생">
									<span class="label-text">대학원생</span>
									</label>
								</li>
								</ul>
								<div class="job">
									<label class="checkbox-wrap">
									<input type="radio" name="job-select">
									<span class="label-text">기타</span>
									<input class="text-input job-etc" type="text" placeholder="직접입력" disabled="" value="">
									</label>
								</div>
							</dd>
								<dt class="field-title">참여 가능한 지역<span class="description">
								<span class="orange">복수 선택</span>이 가능해요!</span>
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
										<div class="area-list-2-wrap">
											<div class="list-name">광역시 · 지방</div>
											<ul class="area-list">
												<li class="area">
													<label class="checkbox-wrap">
													<input type="checkbox" name="area" value="30">
													<span class="label-text">부산-서면</span>
													</label>
												</li>
												<li class="area">
													<label class="checkbox-wrap">
													<input type="checkbox" name="area" value="31">
													<span class="label-text">대구-동성로</span>
													</label>
												</li>
												<li class="area">
													<label class="checkbox-wrap">
													<input type="checkbox" name="area" value="32">
													<span class="label-text">대전-둔산동</span>
													</label>
												</li>
												<li class="area">
													<label class="checkbox-wrap">
													<input type="checkbox" name="area" value="43">
													<span class="label-text">창원</span>
													</label>
												</li>
												<li class="area">
													<label class="checkbox-wrap">
													<input type="checkbox" name="area" value="40">
													<span class="label-text">제주-제주시</span>
													</label>
												</li>
												<li class="area">
													<label class="checkbox-wrap">
													<input type="checkbox" name="area" value="52">
													<span class="label-text">구미</span>
													</label>
												</li>
											</ul>
										</div>
										<div class="area-etc-wrap">
											<div class="etc-help">** 전국구 확장중이니 
												<span class="highlight">지방거주자</span>
												이실 경우 '기타'에 희망 도시 이름을 적어주세요!
											</div>
											<div class="container">
												<label class="checkbox-wrap">
													<input type="checkbox" name="area_etc" value="">
													<span class="mock-radio"></span>
													<span class="label-text">기타</span>
												</label>
													<div class="area-etc-input-wrap">
													<input type="text" class="text-input" disabled="" placeholder="직접입력" value="">
													</div>
											</div>
										</div>
									</dd>
									<dt class="field-title">일정
										<span class="description">시작 가능한 날짜를 선택해주세요!</span>
									</dt>
										<dd class="field-content available-date">
											<div class="calendar-wrap">
											<input type="hidden" name="available_since" value="">
												<div class="month-display">2020년 1월
												</div>
												<a class="month-button next" href="#">&gt;</a>
												<table class="calendar">
												<thead>
													<tr>
														<th>일</th>
														<th>월</th>
														<th>화</th>
														<th>수</th>
														<th>목</th>
														<th>금</th>
														<th>토</th>
													</tr>
												</thead>
												<tbody>
												<tr class="week">
													<td></td>
													<td></td>
													<td></td>
													<td class="date disabled">1</td>
													<td class="date disabled">2</td>
													<td class="date disabled">3</td>
													<td class="date disabled">4</td>
												</tr>
												<tr class="week">
													<td class="date disabled">5</td>
													<td class="date disabled">6</td>
													<td class="date disabled">7</td>
													<td class="date disabled">8</td>
													<td class="date disabled">9</td>
													<td class="date disabled">10</td>
													<td class="date disabled">11</td>
												</tr>
												<tr class="week"><td class="date disabled">12</td>
													<td class="date">13</td>
													<td class="date">14</td>
													<td class="date">15</td>
													<td class="date">16</td>
													<td class="date">17</td>
													<td class="date">18</td>
												</tr>
												<tr class="week">
													<td class="date">19</td>
													<td class="date">20</td>
													<td class="date">21</td>
													<td class="date">22</td>
													<td class="date">23</td>
													<td class="date">24</td>
													<td class="date last-row">25</td>
												</tr><tr class="week">
													<td class="date last-row">26</td>
													<td class="date last-row">27</td>
													<td class="date last-row">28</td>
													<td class="date last-row">29</td>
													<td class="date last-row">30</td>
													<td class="date last-row last-date">31</td>
													<td></td>
												</tr>
											</tbody>
										</table>
									</div>
								</dd>
							<dt class="field-title">시간
								<span class="description">참여 가능한 시간을 알려주세요! <span class="orange">복수 선택</span>이 가능해요!</span>
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
						</form>				
				</div>
			</div>
		</div>
		

</body>
</html>