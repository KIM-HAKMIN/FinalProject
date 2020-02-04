<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String ctxPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>

<head>
<style>
.box_login {
    margin: 35px auto;
    border: 1px solid #ddd;
    width:250px;
    border-radius: 3px;
    background-color: #fff;
    box-sizing: border-box;
}
.inp_text {
    position: relative;
    border: 1px solid #ddd;
    width: 100%;
    margin: 0;
    padding: 18px 19px 19px;
    box-sizing: border-box;
}
input {
    display: block;
    width: 250px;
    height: 100%;
    font-size: 13px;
    color: #000;
    border: none;
    outline: 0;
    background-color: transparent;
}
.screen_out {
    position: absolute;
    width: 0;
    height: 0;
    overflow: hidden;
    line-height: 0;
    text-indent: -9999px;
}

.btn_login {
    margin: 20px 43.5%;
    padding: 0;
    width: 250px;
    height: 48px;
    border-radius: 10px;
    font-size: 16px;
    color: #fff;
    background-color: orange;
    box-shadow: none;
}

.btn_login:hover {
  background-color: gold;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript">
 
     $(document).ready(function(){
    	 
    	 $("#btnLOGIN").click(function() {
    		 func_Login();
    	 }); // end of $("#btnLOGIN").click();-----------------------
    	 
    	 $("#pwd").keydown(function(event){
  			
  			if(event.keyCode == 13) { // 엔터를 했을 경우
  				func_Login();
  			}
    	 }); // end of $("#pwd").keydown();-----------------------	
    	 
    }); // end of $(document).ready()---------------------------	 

    
    function func_Login() {
    		 
		 var userid = $("#userid").val(); 
		 var pwd = $("#pwd").val(); 
		
		 if(userid.trim()=="") {
		 	 alert("아이디를 입력하세요!!");
			 $("#userid").val(""); 
			 $("#userid").focus();
			 return;
		 }
		
		 if(pwd.trim()=="") {
			 alert("비밀번호를 입력하세요!!");
			 $("#pwd").val(""); 
			 $("#pwd").focus();
			 return;
		 }

		 var frm = document.loginFrm;
		 
		 frm.action = "<%=ctxPath%>/loginEnd.st";
		 frm.method = "POST";
		 frm.submit();
		 
    } // end of function func_Login(event)-----------------------------
     
</script>

<body>
<div>
<form name="loginFrm">
	<div class="box_login">
	                <div class="inp_text">
	                <label for="loginId" class="screen_out">아이디</label>
	                <input type="text" name="userid" id="userid" value="" placeholder="ID"/>
	                </div>
	                <div class="inp_text">
	                <label for="loginPw" class="screen_out">비밀번호</label>
	                <input type="password" name="pwd" id="pwd" value="" placeholder="Password"/> 
	                </div>
	            </div>
	            
	<div style="margin: 0 auto; width: 100%; border: 1px solid red;">            
		<button type="button" class="btn_login" id="btnLOGIN" >로그인</button>
	</div>
</form>
</div>

</body>
</html>