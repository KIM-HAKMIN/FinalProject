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
								[스터디서치] 234기 신규멤버 Welcome Party 신청서🎉
								</div>
							</div>
							<div class="headerTitleProduct">
							<div class="freebirdFormviewerViewResponseConfirmationMessage">웰컴파티에서 만나요 여러분! :)<br><br>**앞으로 남은 일**<br>1. 지금 바로 참가비 입금까지 완료한다.<br>**신청 후 24시간 내 미입금시** 신청이 취소됩니다.<br>**입금 후 24시간 내에 확정 메시지**가 발송됩니다.<br>2. D-1, 자세한 장소와 준비물을 안내받는다.<br>3. 웰컴파티에 즐겁게 참여한다❤️<br><br>**입금 정보**<br>- 047-105629-04-030 기업 (주)펜브코퍼레이션<br>- 참가비: 30,000원<br><br>⚠️ 이후의 모든 공지는<br>등록하신 메일을 통해서만 받으실수 있으니<br>꼭! 메일확인 해주세요!!!<br><br>
							</div>
							</div>

							<div class="headerTitleBanner">
							</div>
							<div class="headerTitleLegend" aria-hidden="true" dir="auto">
							</div>
						</div>
						
						<button type="button">뒤로</button>	
						
						<!--------------------- 댓글창 ---------------------------->

						<div class="viewFormContentHeader">
						   <h1>댓글쓰기</h1>
						   
						<%-- <form name="addFrm"> --%>
						<%-- 
						   === #137. 파일첨부하기 ===
						   먼저 위의 문장을 주석처리한 후 아래와 같이 해야 한다.
						   enctype="multipart/form-data" 를 해주어야만 파일첨부가 되어진다.
						 --%>
						    <form name="addFrm" enctype="multipart/form-data"> 
						      <table id="table">
						         <tr>
						            <th>성명</th>
						            <td>   
						                <input type="hidden" name="fk_userid" value="${sessionScope.loginuser.userid}" readonly />
						               <input type="text" name="name" value="${sessionScope.loginuser.name}" class="short" readonly />          
						            </td>
						         </tr>
						         <tr>
						            <th>제목</th>
						            <td><input type="text" name="subject" id="subject" class="long" /></td>
						         </tr>
						         <tr>
						            <th>내용</th>
						            <td>
						            <textarea name="content" id="content" rows="10" cols="100" style="width: 95%; height: 412px;"></textarea>   
						            </td>
						         </tr>
						         
						         <%-- === #138. 파일첨부 타입 추가하기 === --%>
						         <tr>
						            <th>파일첨부</th>
						            <td><input type="file" name="attach" /></td>
						         </tr>
						         
						         
						         <tr>
						            <th>글암호</th>
						            <td><input type="password" name="pw" id="pw" class="short" /></td>
						         </tr>
						      </table>
						      
						      <%-- === #131. 답변글쓰기인 경우 ===
						               부모글(원글)의 seq값인 fk_seq 값과 
						               부모글(원글)의 groupno 값과
						               부모글(원글)의 depthno 값을 hidden 타입으로 보내준다.
						       --%>
						       
						       <input type="hidden" name="fk_seq" value="${fk_seq}" />
						       <input type="hidden" name="groupno" value="${groupno}" />
						       <input type="hidden" name="depthno" value="${depthno}" />
						      
						      <div style="margin: 20px;">
						         <button type="button" id="btnWrite">쓰기</button>
						         <button type="button" onclick="javascript:history.back();">취소</button>
						      </div>
						      
						   </form>
						</div>										
						
						<!--------------------- 댓글목록 ---------------------------->
						<div style="padding-left: 3%;" class="viewFormContentHeader">
						<h2 style="margin-bottom: 30px;">댓글목록</h2>
						
						<table id="table">
							<tr>
								<th style="width: 70px;  text-align: center;">글번호</th>
								<th style="width: 360px; text-align: center;">제목</th>
								<th style="width: 70px;  text-align: center;">성명</th>
								<th style="width: 180px; text-align: center;">날짜</th>
								<th style="width: 70px;  text-align: center;">조회수</th>
								
								<%-- === #148. 파일과 크기를 보여주도록 수정 === --%>
								<th style="width: 70px;  text-align: center;">파일</th>
								<th style="width: 100px; text-align: center;">크기(bytes)</th>
							</tr>	
							<c:forEach var="boardvo" items="${boardList}" varStatus="status">
								<tr>
									<td align="center">${boardvo.seq}</td>
									<td align="left"> 
									<%-- === 댓글쓰기가 없는 게시판 ===  
									   <span class="subject" onclick="goView('${boardvo.seq}');">${boardvo.subject}</span>
									--%>
									
									<%-- === 댓글쓰기가 있는 게시판 ===  --%>
									<%-- 
								         <c:if test="${boardvo.commentCount > 0}">	
									   	    <span class="subject" onclick="goView('${boardvo.seq}');">${boardvo.subject}&nbsp;<span style="vertical-align: super;">[<span style="color: red; font-size: 9pt; font-style: italic; font-weight: bold;">${boardvo.commentCount}</span>]</span></span>
									     </c:if>
									     <c:if test="${boardvo.commentCount == 0}">
									   	    <span class="subject" onclick="goView('${boardvo.seq}');">${boardvo.subject}</span>
									     </c:if>
									--%>    
									     
									<%-- === 댓글쓰기 및 답변형 게시판 === 
									                 답변글인 경우 글제목 앞에 공백(여백)과 함께 └Re 라는 글자를 붙이도록 하겠다. 
									--%>
									<%-- 답변글이 아닌 원글인 경우 --%>
									<c:if test="${boardvo.depthno == 0}">
										 <c:if test="${boardvo.commentCount > 0}">	
									   	    <span class="subject" onclick="goView('${boardvo.seq}');">${boardvo.subject}&nbsp;<span style="vertical-align: super;">[<span style="color: red; font-size: 9pt; font-style: italic; font-weight: bold;">${boardvo.commentCount}</span>]</span></span>
									     </c:if>
									     <c:if test="${boardvo.commentCount == 0}">
									   	    <span class="subject" onclick="goView('${boardvo.seq}');">${boardvo.subject}</span>
									     </c:if>
									</c:if>
									     
								    <%-- 답변글인 경우 --%>
								    <c:if test="${boardvo.depthno > 0}">
									     <c:if test="${boardvo.commentCount > 0}">	
									   	    <span class="subject" onclick="goView('${boardvo.seq}');"><span style="color: red; font-style: italic; padding-left: ${boardvo.depthno * 20}px;">└Re&nbsp;</span>${boardvo.subject}&nbsp;<span style="vertical-align: super;">[<span style="color: red; font-size: 9pt; font-style: italic; font-weight: bold;">${boardvo.commentCount}</span>]</span></span>
									     </c:if>
									     <c:if test="${boardvo.commentCount == 0}">
									   	    <span class="subject" onclick="goView('${boardvo.seq}');"><span style="color: red; font-style: italic; padding-left: ${boardvo.depthno * 20}px;">└Re&nbsp;</span>${boardvo.subject}</span>
									     </c:if>
									</c:if>
								    
									</td>
									<td align="center">${boardvo.name}</td>
									<td align="center">${boardvo.regDate}</td>
									<td align="center">${boardvo.readCount}</td>
									
									<%-- === #149. 파일과 크기를 보여주도록 수정 === 
									         /Board/src/main/webapp/resources/images/disk.gif 이미지 파일을 사용하여 첨부파일의 유무를 보여주도록 한다.  
									--%>
									<td align="center">
										<c:if test="${not empty boardvo.fileName}">
											<img src="<%= request.getContextPath()%>/resources/images/disk.gif" />
										</c:if>
									</td>
									<td align="center">
										<c:if test="${not empty boardvo.fileSize}">
											${boardvo.fileSize} <%-- 파일크기 --%>
										</c:if>
									</td>
									
							    </tr>
							</c:forEach>
						</table>
						<br/>
						
						<form name="goViewFrm">
							<input type="hidden" name="seq" />
							<input type="hidden" name="gobackURL" value="${gobackURL}" /> 
						</form>

												
					</div>
									
				</div>													
			</form>		
		</div>		
	</div>	
</body>
</html>