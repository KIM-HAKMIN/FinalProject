<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% String ctxPath = request.getContextPath(); %> 

<meta name="viewport" content="width=device-width, initial-scale=1">

<style type="text/css">

.form {
	width: 90%;
	margin: 0 auto;
	padding: 3% 0 3% 0;
}


.card {
  width: 40%;
  margin-left: 3%;
}

.cr {
	margin-bottom: 8%;
	font-size: 12pt;
}


/* Style the tab */
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #ffd9b3;
}

/* Style the buttons inside the tab */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ffbf80;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #ffa64d;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
}


.btn {
  border: 2px solid black;
  border-radius: 10px;
  background-color: white;
  color: black;
  padding: 10px 20px;
  font-size: 14px;
  font-weight: bold;
  cursor: pointer;
}

/* Orange */
.warning {
  border-color: #ff9800;
  color: orange;
}

.warning:hover {
  background: #ff9800;
  color: white;
}


.rectangle {
  height: 50%;
  width: 100%;
  border-radius: 50px;
  background-color: white;
  margin: 0 auto;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 80%;
}

th, td {
  text-align: center;
  padding: 16px;
}

</style>

<script type="text/javascript" src="/Semi_Team1/js/jquery-3.3.1.min.js"></script>


<script type="text/javascript">

	$(document).ready(function() {

		/*유효성 검사  */	
		$("#profileEdit").click(function(){  

			//비밀번호 검사하기 
			var pwd = $("#pwd").val();
			var regExp = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{6,}$/;
			var bool = regExp.test(pwd);
			
			if(bool == false){
				alert("비밀번호를 조건에 맞도록 올바르게 입력해주세요.");
				$("#pwd").val("");
				
				return false;
			}
			
			var pwdCheck = $("#pwdCheck").val();
			
			if( pwdCheck != pwd){
				alert("비밀번호를 다시 확인해주세요.");
				$("#pwdCheck").val("");
				
				return false;
			}
		
			// 휴대폰 숫자 검사하기
			var phone = $("#phone").val();
		
			var regExp = /^[0-9]{10,11}$/; 
			var bool = regExp.test($("#phone").val().trim())
			
			if(bool == false){
				alert("휴대폰 번호를 -를 제외하여 다시 입력해주세요.");
				$("#phone").focus();
				
				return false;
			}

			// 회원정보 수정하기	
			var frm = document.formhorizontal;			
			frm.action = "/studytrip/member_edit.st";
			frm.method = "post";
			frm.submit();
			
		}); // end of 유효성 검사 -----------------------------------------------------------------
		
	}); // end of $(document).ready ---------------------------------------------------------------------

	
	function goDetail(){
		location.href="/studytrip/studyDetail.st?study_num="+$('#study_num').val();		
	}
	
	function profileDel(){
		location.href="/studytrip/myPage_del.st";		
	}

</script>

</head>
<body>

	<div class="form">
		<div class="card">
		  <img src="/studytrip/resources/images/myPage/anonymous.png" alt="Avatar" style="width:20%; margin-bottom: 5px;">
		  <div class="cr">
		    <h4 style="margin-top: 1%;">${sessionScope.loginuser.useremail}</h4>
		    <p>${sessionScope.loginuser.name}</p>
		  </div>
		</div>
		
	
		<div class="tab">
		  <button class="tablinks" onclick="openCity(event, 'mystudy')" id="defaultOpen">내 스터디</button>
		  <button class="tablinks" onclick="openCity(event, 'payment')">결제 내역</button>
		  <button class="tablinks" onclick="openCity(event, 'coupon')">보유 쿠폰</button>
		  <button class="tablinks" onclick="openCity(event, 'wishlist')">위시리스트</button>
		  <button class="tablinks" onclick="openCity(event, 'profile')">내 프로필</button>
		</div>
		
		<div id="mystudy" class="tabcontent">
			<c:if test="${not empty studyList}">
		    <c:forEach var="studyvo" items="${studyList}" varStatus="status"> 
				<input type="hidden" id="study_num" name="study_num" value="${studyList.study_num}"/>
				<div id style=" width: 290px; display: inline-block; margin-bottom: 30px; margin-left: 42px; cursor: pointer;" onclick="goDetail()">
					<div align="center" style="background-color:white; width: 100%; height: 50px; text-align: center;">
						<div style="padding-top: 20px;"><span style="color: #4c8def; font-weight: bold;">${studyList.startday} (${studyList.study_day})</span> <span style= "color: #787878;font-weight: bold;"> ${studyList.study_time} 첫 시작</span></div>
						<div style="border-top: solid 0.5px gray; width: 90%; margin: 0 auto; margin-top: 14px; position: relative;"></div>
					</div>
					<div style="height: 50px; background-color: white; text-align: center;">
						<div><span style="margin-top:10px; color: #A0A0A0; font-size: 10pt; position: relative;top: 40px;">${studyList.area}&nbsp; | &nbsp;${studyList.lv}</span></div>
					</div>
					<div style="height: 110px; text-align: center; background-color: white; padding-top: 10px;">
						<div style="margin-top: 20px;"><span style="color: #3c3c3c; font-size: 14pt; font-weight: bold;">${studyList.title}</span></div>
					</div>	
					<div style="height: 80px; background-color: white; text-align: center;">
						<span style="color: #f48210; font-weight: 700; font-size: 14pt;">${studyList.price}원 </span><span style="color: #a0a0a0; font-size: 10pt;">${studyList.study_week }주</span>
					</div>	
		
					<c:if test="${studyList.studyStatus==0}">
					<div align="center" style="height: 220px; width: 100%; background-image:url('<%= ctxPath%>/resources/files/${studyList.title_img}'); background-size:cover; background-position: center;">
						<img src="<%= ctxPath%>/resources/files/${studyList.profile}" style="height: 100px; width: 100px; border-radius: 100px; position: relative; bottom: 35px; border: solid 2px white;"/>
						<div style="width: 100%; height: 50px; background-color: rgba(0,0,0,.5); margin-top: 70px; text-align: center;"><div style="color: white; font-size: 11pt; font-weight:bold; position: relative; top: 13px;">마감 되었습니다.</div></div>		
					</div>
					</c:if>
					<c:if test="${studyList.studyStatus==2}">
					<div align="center" style="height: 220px; width: 100%; background-image:url('<%= ctxPath%>/resources/files/${studyList.title_img}');background-size:cover; background-position: center;">
						<img src="<%= ctxPath%>/resources/files/${studyList.profile}" style="height: 100px; width: 100px; border-radius: 100px; position: relative; bottom: 35px; border: solid 2px white;"/>
						<div style="width: 100%; height: 50px; background-color: rgba(220,0,0,.6); margin-top: 70px; text-align: center;"><div style="color: white; font-size: 11pt; font-weight: bold; position: relative; top: 13px;">마감임박</div></div>		
					</div>
					</c:if>
					<c:if test="${studyList.studyStatus==1}">
					<div align="center" style="height: 220px; width: 100%; background-image:url('<%= ctxPath%>/resources/files/${studyList.title_img}');background-size:cover; background-position: center;">
						<img src="<%= ctxPath%>/resources/files/${studyList.profile}" style="height: 100px; width: 100px; border-radius: 100px; position: relative; bottom: 35px; border: solid 2px white;"/>
						<div style="width: 100%; height: 50px; background-color: rgba(239,108,0,.6); margin-top: 70px; text-align: center;"><div style="color: white; font-size: 11pt; font-weight: bold; position: relative; top: 13px;">신규모집</div></div>		
					</div>
					</c:if>
				</div>
		    </c:forEach>
			</c:if>
			
			<c:if test="${not studyList}">
				<div style="font-size: 15pt; text-align: center; font-weight: bold;">신청한 스터디가 없습니다.</div>
			</c:if>
		</div>
		
		<div id="payment" class="tabcontent">
		  <div class="rectangle">
		  	<table style="margin: 0 auto;">
			  <tr style="border-bottom: solid 2px black;">
			    <th>스터디명</th>
			    <th>결제액</th>
			    <th>결제일</th>
			  </tr>
			 <%--  <c:if test="${not empty requestScope.paymentList}">
			  <c:forEach var="paymentvo" items="${paymentList}">		  
				<tr>
				    <td>${study_name}</td> 
				    <td>${price}</td>
				    <td>${pay_date}</td>
				</tr>
			 </c:forEach>
			 </c:if> 
			 <c:if test="${empty requestScope.paymentList}""> --%>
				 <tr><td colspan="3" style="font-size: 13pt;">결제 내역이 없습니다.</td></tr>
			<%-- </c:if> --%>
			</table> 		
		  </div>
		</div>
		
		<div id="coupon" class="tabcontent">
		  <div class="rectangle">
			  <table style="margin: 0 auto;">
				  <tr style="border-bottom: solid 2px black;">
				    <th>쿠폰명</th>
				    <th>발급일</th>
				    <th>만료일</th>
				  </tr>
			<%--  <c:if test="${not empty requestScope.couponList}">
				  <c:forEach var="couponvo" items="${couponList}">			  
					<tr>
					    <td>${coupon_name}</td> 
				    	<td>${issudate}</td>
				    	<td>${expi_date}</td>
					</tr>
				 </c:forEach>
				 </c:if> 
				 <c:if test="${empty requestScope.couponList}""> --%>
					 <tr><td colspan="3" style="font-size: 13pt;">발급된 쿠폰이 없습니다.</td></tr>
				<%-- </c:if> --%>		  
			</table> 
		  </div>
		</div>
		
		<div id="wishlist" class="tabcontent">
		  <c:if test="${not empty wishList}">
		  <c:forEach var="studyvo" items="${wishList}" varStatus="status"> 
			<input type="hidden" id="study_num" name="study_num" value="${wishList.study_num}"/>
				<div id style=" width: 290px; display: inline-block; margin-bottom: 30px; margin-left: 42px; cursor: pointer;" onclick="goDetail()">
					<div align="center" style="background-color:white; width: 100%; height: 50px; text-align: center;">
						<div style="padding-top: 20px;"><span style="color: #4c8def; font-weight: bold;">${wishList.startday} (${wishList.study_day})</span> <span style= "color: #787878;font-weight: bold;"> ${wishList.study_time} 첫 시작</span></div>
						<div style="border-top: solid 0.5px gray; width: 90%; margin: 0 auto; margin-top: 14px; position: relative;"></div>
					</div>
					<div style="height: 50px; background-color: white; text-align: center;">
						<div><span style="margin-top:10px; color: #A0A0A0; font-size: 10pt; position: relative;top: 40px;">${wishList.area}&nbsp; | &nbsp;${wishList.lv}</span></div>
					</div>
					<div style="height: 110px; text-align: center; background-color: white; padding-top: 10px;">
						<div style="margin-top: 20px;"><span style="color: #3c3c3c; font-size: 14pt; font-weight: bold;">${wishList.title}</span></div>
					</div>	
					<div style="height: 80px; background-color: white; text-align: center;">
						<span style="color: #f48210; font-weight: 700; font-size: 14pt;">${wishList.price}원 </span><span style="color: #a0a0a0; font-size: 10pt;">${wishList.study_week }주</span>
					</div>	
					
					<c:if test="${wishList.studyStatus==0}">
					<div align="center" style="height: 220px; width: 100%; background-image:url('<%= ctxPath%>/resources/files/${wishList.title_img}'); background-size:cover; background-position: center;">
						<img src="<%= ctxPath%>/resources/files/${wishList.profile}" style="height: 100px; width: 100px; border-radius: 100px; position: relative; bottom: 35px; border: solid 2px white;"/>
						<div style="width: 100%; height: 50px; background-color: rgba(0,0,0,.5); margin-top: 70px; text-align: center;"><div style="color: white; font-size: 11pt; font-weight:bold; position: relative; top: 13px;">마감 되었습니다.</div></div>		
					</div>
					</c:if>
					<c:if test="${wishList.studyStatus==2}">
					<div align="center" style="height: 220px; width: 100%; background-image:url('<%= ctxPath%>/resources/files/${wishList.title_img}');background-size:cover; background-position: center;">
						<img src="<%= ctxPath%>/resources/files/${studyList.profile}" style="height: 100px; width: 100px; border-radius: 100px; position: relative; bottom: 35px; border: solid 2px white;"/>
						<div style="width: 100%; height: 50px; background-color: rgba(220,0,0,.6); margin-top: 70px; text-align: center;"><div style="color: white; font-size: 11pt; font-weight: bold; position: relative; top: 13px;">마감임박</div></div>		
					</div>
					</c:if>
					<c:if test="${wishList.studyStatus==1}">
					<div align="center" style="height: 220px; width: 100%; background-image:url('<%= ctxPath%>/resources/files/${wishList.title_img}');background-size:cover; background-position: center;">
						<img src="<%= ctxPath%>/resources/files/${studyList.profile}" style="height: 100px; width: 100px; border-radius: 100px; position: relative; bottom: 35px; border: solid 2px white;"/>
						<div style="width: 100%; height: 50px; background-color: rgba(239,108,0,.6); margin-top: 70px; text-align: center;"><div style="color: white; font-size: 11pt; font-weight: bold; position: relative; top: 13px;">신규모집</div></div>		
					</div>
					</c:if>
				</div>
			</c:forEach>
			</c:if>
			
			<c:if test="${empty wishList}">
				<div style="font-size: 15pt; text-align: center; font-weight: bold;">찜한 스터디가 없습니다.</div>
			</c:if>
		</div>
		
		<div id="profile" class="tabcontent">
		  
			<form class="form-horizontal" name="formhorizontal" style="padding: 3% 3% 1% 3%;">
			    
			    <div class="form-group">
			      <label class="control-label col-sm-4" for="name">이름</label>
			      <div class="col-sm-4">
			     	<input type="text" class="form-control" id="name" value="${sessionScope.loginuser.name}"  name="name" readonly> 
			      </div>
			    </div>
			    
			    <div class="form-group">
			      <label class="control-label col-sm-4" for="email">이메일</label>
			      <div class="col-sm-4">
			        <input type="email" class="form-control" id="email" value="${sessionScope.loginuser.useremail}" name="email" readonly>
			      </div>
			    </div>
			    
			    <div class="form-group">
			      <label class="control-label col-sm-4" for="pwd">비밀번호</label>
			      <div class="col-sm-4">          
			        <input type="password" class="form-control" id="pwd" value="" placeholder="숫자,영문자,특수문자가 각 1개씩 포함 6자리 이상" name="pwd">
			      </div>
			    </div>
			    
			    <div class="form-group">
			      <label class="control-label col-sm-4" for="pwdCheck">비밀번호 확인</label>
			      <div class="col-sm-4">          
			        <input type="password" class="form-control" id="pwdCheck" placeholder="다시 한번 비밀번호를 쓰세요" name="pwdCheck">
			      </div>
			    </div>
			    
			     <div class="form-group">
			      <label class="control-label col-sm-4" for="phone">핸드폰</label>
			      <div class="col-sm-4">  
			      	<input type="tel" class="form-control" placeholder="-를 제외한 핸드폰번호를 쓰세요" id="phone" name="hp">
			      </div>
			    </div>	
			    		    
			</form>

			<div align="center" style="margin-bottom: 3%;">
		   		<input type="button" value="내 프로필 수정" id="profileEdit" class="btn warning" style="margin: 0; width: 150px;" id="submitBtn"/>
		   		<input type="button" value="회원탈퇴" onclick="profileDel();" class="btn warning" style="margin-left:5px; width: 150px;" id="delBtn"/>
			</div>
		</div>
	</div>

<script>
	function openCity(evt, cityName) {
	  var i, tabcontent, tablinks;
	  tabcontent = document.getElementsByClassName("tabcontent");
	  for (i = 0; i < tabcontent.length; i++) {
	    tabcontent[i].style.display = "none";
	  }
	  tablinks = document.getElementsByClassName("tablinks");
	  for (i = 0; i < tablinks.length; i++) {
	    tablinks[i].className = tablinks[i].className.replace(" active", "");
	  }
	  document.getElementById(cityName).style.display = "block";
	  evt.currentTarget.className += " active";
	}
	
	// Get the element with id="defaultOpen" and click on it
	document.getElementById("defaultOpen").click();
</script>