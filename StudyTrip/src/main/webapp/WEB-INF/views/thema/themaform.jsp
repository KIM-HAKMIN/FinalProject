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
.viewTitleListItem  {
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

.viewTitleListItemItemChoice {
    font-family: Roboto,Arial,sans-serif;
    font-size: 12px;
    font-weight: 400;
    letter-spacing: .3px;
    line-height: 16px;
    color: #70757a;
    color: #202124;
    line-height: 135%;
    margin-top: 0;
    white-space: pre-wrap;
}


.dayChoice {
padding: 0;
}

.dayChoice-day{
align-items: flex-start;
}
</style>

</head>
<body>
	<div class="contentWrapper">
		<div> ? </div>
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
						
						<!----------------- 타이틀리스트 ------------------->
						<div class="viewTitleList">
							<div class="viewTitleListContainer">
								<div class="viewTitleListItem">
									<div class="viewTitleListItemContainer">
										<div class="viewTitleListItemItem">
											<div class="viewTitleListItemHeader">
												<div class="viewTitleListItemHeaderContainer">
													<div class="viewTitleListItemHeaderbox">
													</div>
												</div>
												<div class="viewTitleListItemHeaderCenter">
													<div class="viewTitleListItemHeaderCenterImage" style="width: 540px; ">
														<img src="https://lh5.googleusercontent.com/xz_aXhWy1IIWqS3LjF4z6emGyF1R1wCtL9Srhi1xTegvG0yLdKA5OXEiQondqm0J-MR0eOleqipRmBiWlVcr5p-HSp8OTAx9OSa8LfJL26sq8JqR-PLWXgEhnkqy=w680" style="width: 540px;">												
													</div>
												</div>											
											</div>
										</div>
									</div>									
									<!-- 신청란  -->
									<div class= "viewTitleListItemContainer">
										<div class = "viewTitleListItemItem">
											<div class="viewTitleListItemItemQ" >Q. 신청은 어떻게 하나요?
											</div>
											<div class="viewTitleListItemItemChoice">** 이제 아래 일정 중에 골라주세요😄<br><br>✔️ 지역: 강남/홍대 근처 펍<br>✔️ 일정: 금/토 저녁 8시-11시 (뒷풀이 선택참여)<br>✔️ 참가비: 3만원<br><br>- 무제한 맥주 및 핑거푸드&amp;안주가 제공됩니다🍻<br><br>참! 우린 다들 처음 만나는 사이니까 ㅎㅎ<br>혼자오는거에 부담갖지 마세요~ 😄<br>그럼 파티에서 만나요! 🙌<br><br>** 1:1 문의는 여기서! &gt; <a href="https://www.google.com/url?q=http://open.kakao.com/o/sbzL1QNb&amp;sa=D&amp;ust=1579067948449000&amp;usg=AFQjCNGFdUCuMPgWOWL9h4BDHF8xcSl8ag">open.kakao.com/o/sbzL1QNb</a>
											</div>
										</div>
									</div >	
									<!-- 참여가능날짜선택 -->
									<div class= "viewTitleListItemContainer">
										<div class = "viewTitleListItemItem">
											<div class="viewTitleListItemItemQ">
												<div class="viewTitleListItemItemQ">
												참여가능 하신 일정을 선택해주세요. *
												</div>
												<div>
													<div class="dayChoice">
														<span class="appsMaterialWizToggleRadiogroupGroupContent exportGroupContent">
															<div class="freebirdFormviewerViewItemsRadioChoicesContainer">
																<input type="checkbox" class="themachoiceday">
																<div class="freebirdFormviewerViewItemsRadioOptionContainer">
																	<label  class="docssharedWizToggleLabeledContainer freebirdFormviewerViewItemsRadioChoice">																		
																		<div class="docssharedWizToggleLabeledLabelWrapper exportLabelWrapper">
																			<div class="appsMaterialWizToggleRadiogroupElContainer exportContainerEl  docssharedWizToggleLabeledControl freebirdThemedRadio freebirdThemedRadioDarkerDisabled freebirdFormviewerViewItemsRadioControl">
																				<div class="appsMaterialWizToggleRadiogroupEl exportToggleEl isChecked" jscontroller="EcW08c" jsaction="keydown:I481le;dyRcpb:dyRcpb;click:cOuCgd; mousedown:UX7yZ; mouseup:lbsD7e; mouseenter:tfO1Yc; mouseleave:JywGue; focus:AHmuwe; blur:O22p3e; contextmenu:mg9Pef;touchstart:p6p2H; touchmove:FwuNnf; touchend:yfqBxc(preventMouseEvents=true|preventDefault=true); touchcancel:JMtRjd;" jsshadow="" aria-label="1/18 (토) 홍대요!" tabindex="0" data-value="1/18 (토) 홍대요!" aria-describedby="  i11" role="radio" aria-checked="true" aria-posinset="1" aria-setsize="2"><div class="appsMaterialWizToggleRadiogroupInk exportInk">																				
																				</div>
																				<div class="appsMaterialWizToggleRadiogroupInnerBox">
																				</div>
																				<div class="appsMaterialWizToggleRadiogroupRadioButtonContainer">
																					<div class="appsMaterialWizToggleRadiogroupOffRadio exportOuterCircle">
																						<div class="appsMaterialWizToggleRadiogroupOnRadio exportInnerCircle">
																						</div>
																					</div>
																				</div>
																				</div>
																			</div>
																			<div class="docssharedWizToggleLabeledContent">
																				<div class="docssharedWizToggleLabeledPrimaryText">
																				<span dir="auto" class="docssharedWizToggleLabeledLabelText exportLabel freebirdFormviewerViewItemsRadioLabel">1/18 (토) 홍대요!</span>
																				</div>
																			</div>
																		</div>
																	</label>
																</div>
																<input type="checkbox" class="themachoiceday"><div class="freebirdFormviewerViewItemsRadioOptionContainer"> 
																	<label class="docssharedWizToggleLabeledContainer freebirdFormviewerViewItemsRadioChoice">
																		<div class="docssharedWizToggleLabeledLabelWrapper exportLabelWrapper">
																			<div class="appsMaterialWizToggleRadiogroupElContainer exportContainerEl  docssharedWizToggleLabeledControl freebirdThemedRadio freebirdThemedRadioDarkerDisabled freebirdFormviewerViewItemsRadioControl">
																				<div class="appsMaterialWizToggleRadiogroupEl exportToggleEl isCheckedNext" jscontroller="EcW08c" jsaction="keydown:I481le;dyRcpb:dyRcpb;click:cOuCgd; mousedown:UX7yZ; mouseup:lbsD7e; mouseenter:tfO1Yc; mouseleave:JywGue; focus:AHmuwe; blur:O22p3e; contextmenu:mg9Pef;touchstart:p6p2H; touchmove:FwuNnf; touchend:yfqBxc(preventMouseEvents=true|preventDefault=true); touchcancel:JMtRjd;" jsshadow="" aria-label="1/31 (금) 강남이요!" tabindex="-1" data-value="1/31 (금) 강남이요!" aria-describedby="  i14" role="radio" aria-checked="false" aria-posinset="2" aria-setsize="2">
																					<div class="appsMaterialWizToggleRadiogroupInk exportInk">
																					</div>
																					<div class="appsMaterialWizToggleRadiogroupInnerBox">
																					</div>
																					<div class="appsMaterialWizToggleRadiogroupRadioButtonContainer">
																						<div class="appsMaterialWizToggleRadiogroupOffRadio exportOuterCircle">
																							<div class="appsMaterialWizToggleRadiogroupOnRadio exportInnerCircle"></div>
																						</div>
																					</div>
																				</div>
																			</div>
																			<div class="docssharedWizToggleLabeledContent">
																				<div class="docssharedWizToggleLabeledPrimaryText">
																					<span dir="auto" class="docssharedWizToggleLabeledLabelText exportLabel freebirdFormviewerViewItemsRadioLabel">1/31 (금) 강남이요!</span>
																				</div>
																			</div>
																		</div>
																	</label>																	
																</div>
															</div>
														</span>																												
													</div>
												</div>
											</div>
										</div>
										<div>
										
										</div>
									</div>
									<button type="button">다음</button>										
								</div>
							</div>								
						</div>
					</div>				
				</div>				
			</form>		
		</div>		
	</div>
	
</body>
</html>