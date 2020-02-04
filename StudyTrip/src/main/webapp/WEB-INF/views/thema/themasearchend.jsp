<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String ctxPath = request.getContextPath();
%>
    

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

.viewFormContentHeader {   /* --------- */
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

</style>

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
								종료된 파티입니다. T.T <br>아쉽지만, 다음 파티에 참여해주요!!
								</div>
							</div>
							<div class="headerTitleProduct">
							[공지사항]<br>신청이 모두 마감되었습니다! ❤️<br>남은 연말 잘보내시고
							내년 연말파티에서 다시 만나요~ Happy New Year! 🎉
							</div>

							<div class="headerTitleBanner">
							</div>
							<div class="headerTitleLegend" aria-hidden="true" dir="auto">
							</div>
						</div>
												
					</div>
					<button type="button"><a class="previous" href="/studytrip/thema.st">뒤로</a></button>					
				</div>													
			</form>		
		</div>		
	</div>	
</body>
</html>