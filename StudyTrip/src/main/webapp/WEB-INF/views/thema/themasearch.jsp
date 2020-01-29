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

.contentView {
    margin: auto;
    max-width: 90vw;
    width: 640px;
}

div {
	display: block;
}

form {
    display: block;
    margin-top: 0em;
}

.exportForm{
	margin-top: 16px;
}

.viewFormContent{
    color: #202124;
    padding: 0;
}

.viewFormContentHeader {
    padding: 0;
}

.viewFormContentHeaderMain {
    margin-top: 12px;
    background-color: #fff;
    border: 1px solid #dadce0;
    border-radius: 8px;
    margin-bottom: 12px;
    padding: 24px;
    padding-top: 22px;
    position: relative;
}

.headerLine {
    border-top-left-radius: 8px;
    border-top-right-radius: 8px;
    height: 10px;
    left: -1px;
    position: absolute;
    top: -1px;
    width: calc(100% + 2px);
}


.headerTitle {
    font-family: 'Google Sans',Roboto,Arial,sans-serif;
    font-size: 32px;
    font-weight: 400;
    line-height: 40px;
    color: #202124;
    line-height: 135%;
    max-width: 100%;
    min-width: 0%;
}

.headerTitleProduct {
    font-family: Roboto,Arial,sans-serif;
    font-size: 14px;
    font-weight: 400;
    letter-spacing: .2px;
    line-height: 20px;
    color: #202124;
    margin-top: 12px;
}

.headerTitleBanner > div {
    padding-left: 0;
    padding-right: 0;
}

.headerTitleLegend {
    font-family: Roboto,Arial,sans-serif;
    font-size: 14px;
    font-weight: 400;
    letter-spacing: .2px;
    line-height: 20px;
    margin-top: 12px;
}

.viewTitleList {
    padding: 0;
}
.themasearch-labelcontainer  {
    background-color: #fff;
    border: 1px solid #dadce0;
    border-radius: 8px;
    margin-bottom: 12px;
    padding: 24px;
    margin-top: 0;
    page-break-inside: avoid;
}

.viewTitleListItemItem {
    background-color: #fff;
    border: 1px solid #dadce0;
    border-radius: 8px;
    margin-bottom: 12px;
    padding: 24px;
    margin-top: 0;
    page-break-inside: avoid;
}

.viewTitleListItemHeader {    
    -webkit-box-pack: justify;    
    justify-content: space-between;
    margin-bottom: 16px;
}

.viewTitleListItemHeaderContainer {
	display: flex;
    width: 100%;
}

.viewTitleListItemHeaderbox {
	font-family: 'Google Sans',Roboto,Arial,sans-serif;
    font-size: 16px;
    letter-spacing: .1px;
    line-height: 24px;
    color: #202124;
    font-weight: 400;
    width: 100%;
    word-break: break-word;
    justify-content: space-between;
    margin-bottom: 16px;
}

.viewTitleListItemHeaderCenter {
	text-align: center;
}

.viewTitleListItemHeaderCenterImage {
	display: inline-block;
    max-width: 100%;
    text-align: center;
}

.viewTitleListItemItemQ{
    font-family: 'Google Sans',Roboto,Arial,sans-serif;
    font-size: 16px;
    font-weight: 500;
    letter-spacing: .1px;
    line-height: 24px;
    color: #202124;
}



.dayChoice {
padding: 0;
}

.dayChoice-day{
align-items: flex-start;
}

.themasearch-labelcontainer{
    margin-left: 0;
    margin-right: 0;
}

.themasearch-itemcontainer {   /* --------- */
	border-top: none;
    border-top-left-radius: 0;
    border-top-right-radius: 0;
    background-color: #fff;
    border: 1px solid #dadce0;
    border-radius: 8px;
    margin-bottom: 12px;
    padding: 24px;
    margin-top: 0;
    page-break-inside: avoid;
}

.themasearch-itemitem {
	font-family: 'Google Sans',Roboto,Arial,sans-serif;
    font-size: 16px;
    font-weight: 500;
    letter-spacing: .1px;
    line-height: 24px;
    color: #202124;
}

.themasearch-itemitme2 {
	font-family: Roboto,Arial,sans-serif;
    font-size: 12px;
    font-weight: 400;
    letter-spacing: .3px;
    color: #202124;
    line-height: 135%;
    margin-top: 0;
    white-space: pre-wrap;
}


.themasearch-name{
	font-family: 'Google Sans',Roboto,Arial,sans-serif;
    font-size: 16px;
    font-weight: 500;
    letter-spacing: .1px;
    line-height: 24px;
    color: #202124;
}

.themasearch-noparty1 {
	display: block;
}

</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){	
		
		/* 체크박스 한개만 선택가능하도록 한것. */
		$("input:checkbox[name=area_etc]").click(function(){
			$("input:checkbox[name=area_etc]").prop("checked",false);
			$(this).prop("checked",true);
		});
	
		
	}); //end of $(document).ready -------

</script>

</head>
<body>
	<div class="contentWrapper">
		<div class="contentView">
			<form>
				<div class="exportForm">
					<div class="viewFormContent">
						<!----------------- 해더타이틀 ------------------->
						<div class="viewFormContentHeader">
							<div class="headerLine">
							</div>
							<div class="headerTitle">
								<div class="headerTitleView">
								[스터디서치] 234기 신규멤버 Welcome Party 신청서🎉
								</div>
							</div>
							<div class="headerTitleProduct">
							[공지사항]<br>🔥선착순 마감임박 Hurry-up!🔥<br>해당 폼이 닫히면 더이상 신청이 불가합니다.
							</div>
							<div class="headerTitleBanner">
							</div>
							<div class="headerTitleLegend" aria-hidden="true" dir="auto">* 필수항목
							</div>
						</div>
						<!----------------- 신청서 --------------------->
						
						<div class="themasearchTitle">
							<div class="themasearch-container">
								<div class="themasearch-labelcontainer" style="size: 20px;">[234기 Welcome Party 신청서]
								</div>
								<div class="themasearch-itemcontainer">
									<div class="themasearch-item">
										<div class="themasearch-itemitem">앞으로 남은일!</div>										
									</div>										
										<div class="themasearch-itemitme2">1. 아래 신청서를 쓰고 **참가비를 바로 입금**한다!<br>2. 24시간 이내로 확정 멤버로 안내받는다!<br>3. 웰컴파티에 즐겁게 참가한다🧡<br>*안타깝게도 해당 일정에 인원초과시...ㅠㅠ<br>시작 전, 입금하신 금액이 전액 환불됩니다.
										</div>
								</div>
								<div class="themasearch-itemcontainer">
									<div class="themasearch-item">
										<div class="themasearch-itemitem">												
											<div class="themasearch-name">이름을 알려주세요! 													
											</div>
											<div>이름:
											<input type="text">
											</div>																																																								
										</div>									
									</div>
								</div>
								
								<div class="themasearch-itemcontainer">
									<div class="themasearch-item">
										<div class="themasearch-itemitem">
											<div class="themasearch-gender">성별을 알려주세요!											
											</div>
											<div>																									
												<label class="themasearch-genderchoice">
													<input type="checkbox" name="area_etc" value="">
													<span class="mock-radio"></span>
													<span class="label-text">남</span>															
												</label>
												<label class="themasearch-genderchoice">
													<input type="checkbox" name="area_etc" value="">
													<span class="mock-radio"></span>
													<span class="label-text">여</span>														
												</label>											
											</div>																																		
										</div>									
									</div>
								</div>
								
								<div class="themasearch-itemcontainer">
									<div class="themasearch-item">
										<div class="themasearch-itemitem">
											<div class="themasearch-age">나이대를 알려주세요!										
											</div>
											<div>																									
												<label class="themasearch-agechoice">
													<input type="checkbox" name="area_etc" value="">
													<span class="mock-radio"></span>
													<span class="label-text">20-24</span>															
												</label>
												<label class="themasearch-agechoice">
													<input type="checkbox" name="area_etc" value="">
													<span class="mock-radio"></span>
													<span class="label-text">24-29</span>														
												</label>
												<label class="themasearch-agechoice">
													<input type="checkbox" name="area_etc" value="">
													<span class="mock-radio"></span>
													<span class="label-text">30-34</span>														
												</label>
												<label class="themasearch-agechoice">
													<input type="checkbox" name="area_etc" value="">
													<span class="mock-radio"></span>
													<span class="label-text">35-39</span>														
												</label>											
											</div>																				
										</div>									
									</div>
								</div>
								
								<div class="themasearch-itemcontainer">
									<div class="themasearch-item">
										<div class="themasearch-itemitem">
											<div class="themasearch-level">스터디레벨을 알려주세요!						
											</div>
											<div>																									
												<label class="themasearch-levelchoice">
													<input type="checkbox" name="area_etc" value="">
													<span class="mock-radio"></span>
													<span class="label-text">입문</span>															
												</label>
												<label class="themasearch-levelchoice">
													<input type="checkbox" name="area_etc" value="">
													<span class="mock-radio"></span>
													<span class="label-text">초급</span>														
												</label>
												<label class="themasearch-levelchoice">
													<input type="checkbox" name="area_etc" value="">
													<span class="mock-radio"></span>
													<span class="label-text">중급</span>														
												</label>
												<label class="themasearch-levelchoice">
													<input type="checkbox" name="area_etc" value="">
													<span class="mock-radio"></span>
													<span class="label-text">고급</span>														
												</label>											
											</div>																							
										</div>									
									</div>
								</div>
								
								<div class="themasearch-itemcontainer">
									<div class="themasearch-item">
										<div class="themasearch-itemitem">
											<div class="themasearch-number" >*꼭* 정확한 연락처를 알려주세요! (연락받으실) *
												<div style="font-size: 8pt;"> 예) 01012345678('-' 제외) / 작성 후 한번 더 확인!! 가끔 잘못적어 연락을 못받는 분들이 계십니다ㅠㅠ </div>												
											</div>
											<div> 
												<input type="text">
											</div>																					
										</div>									
									</div>
								</div>
								
								<div class="themasearch-itemcontainer">
									<div class="themasearch-item">
										<div class="themasearch-itemitem">
											<div class="themasearch-MoneyNumber" >입금확인 & 환불시 필요한 계좌정보를 알려주세요! (예금주) *
												<div style="font-size: 8pt;"> *정확한* 예금주를 알려주세요. </div>												
											</div>
											<div> 
												<input type="text">
											</div>																					
										</div>									
									</div>
								</div>
								
								<div class="themasearch-itemcontainer">
									<div class="themasearch-item">
										<div class="themasearch-itemitem">
											<div class="themasearch-MoneyNumber2" >입금확인 & 환불시 필요한 계좌정보를 알려주세요! (은행명) *
												<div style="font-size: 8pt;"> *정확한* 예금주를 알려주세요. </div>												
											</div>
											<div> 
												<input type="text">
											</div>																					
										</div>									
									</div>
								</div>
								
								<div class="themasearch-itemcontainer">
									<div class="themasearch-item">
										<div class="themasearch-itemitem">
											<div class="themasearch-MoneyNumber3" >입금확인 & 환불시 필요한 계좌정보를 알려주세요! (계좌번호) *
												<div style="font-size: 8pt;"> 이렇게 적어주세요 ※ 110123112345 ('-' 제외) </div>												
											</div>
											<div> 
												<input type="text">
											</div>																					
										</div>									
									</div>
								</div>
								
								<div class="themasearch-itemcontainer">
									<div class="themasearch-item">
										<div class="themasearch-itemitem">
											<div class="themasearch-noparty">부득이한 경우엔 웰컴파티 **3일 전**까지 꼭 신청취소 해주세요! 이후에 취소하시면 환불이 불가합니다. *								
											</div>
											<div style="font-size: 8pt;">취소신청은 이쪽 링크에서 ☞ https://forms.gle/fmH8iy4fctaWmqW17
											</div>
											<div class= "themasearch-noparty">																									
												<label class="themasearch-noparty1">
													<input type="checkbox" name="area_etc" value="">
													<span class="mock-radio"></span>
													<span class="label-text">네, 이를 숙지했으며 동의합니다!</span>															
												</label>
												<label class="themasearch-noparty1">
													<input type="checkbox" name="area_etc" value="">
													<span class="mock-radio"></span>
													<span class="label-text">**입금까지 바로 완료해주셔야** 신청이 완료 됩니다.</span>														
												</label>
												<label class="themasearch-noparty1">
													<input type="checkbox" name="area_etc" value="">
													<span class="mock-radio"></span>
													<span class="label-text">계좌정보는 저장해두셨죠? 😉 [기업은행 047-105629-04-030 (주)펜브코퍼레이션]</span>														
												</label>																					
											</div>																				
										</div>									
									</div>
								</div>
								
								<div class="themasearch-itemcontainer">
									<div class="themasearch-item">
										<div class="themasearch-itemitem">
											<div class="themasearch-friend">⚠️ 이후 모든 안내는 개별연락되오니 2틀내로 연락이 안오면 꼭!연락바랍니다!							
											</div>
											<div style="font-size: 10pt;">🚨 일주일까지 연락이 없어 참여불가능하는 문제는 책임지지 않습니다ㅠㅠ...!
											</div>
											<!-- <div class= "themasearch-friend">																									
												<label class="themasearch-friend1">
													<input type="checkbox" name="area_etc" value="">
													<span class="mock-radio"></span>
													<span class="label-text">네, 플러스친구 추가하겠습니다!</span>															
												</label>
												<label class="themasearch-friend1">
													<input type="checkbox" name="area_etc" value="">
													<span class="mock-radio"></span>
													<span class="label-text">(신청서를 제출하시면 @플러스친구 친구추가 URL이 안내됩니다)</span>														
												</label>
																															
											</div> -->																				
										</div>									
									</div>
								</div>
								
							</div>
						</div>
						<button type="button">뒤로</button>
						<button type="button"><a class="start-link" href="<%=ctxPath%>/themasearchcheck.st">제출</button>	
					</div>
																	
				</div>											
			</form>		
		</div>		
	</div>	
</body>
</html>