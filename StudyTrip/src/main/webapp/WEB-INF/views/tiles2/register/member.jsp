<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">

.form-group {
	margin-bottom: 4%;
}

form {
	background-color: #ffd9b3;
	padding: 30px 0 30px 0;
	margin-bottom: 40px;
}

.rdlb {
	color: #666666;
	font-size: 11pt;
}

</style>

<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" /> 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>

<script type="text/javascript">

	$(document).ready(function() {

		/*유효성 검사  */	
		$("#submitBtn").click(function(){  

			// 이름 검사하기
			var name = $("#name").val();
			var regExp = /^[가-힣]+$/;
			var bool1 = regExp.test(name);
			regExp = /[a-zA-Z]/;
			var bool2 = regExp.test(name);
			
			if(bool1 == false && bool2 == false){
				
				swal("이름은 한글 혹은 영문자만 가능합니다.");
				$("#name").focus();
				
				return false;
			}
			
			// 이메일 검사하기
			var email = $("#email").val();
			
			if(email == "") {
				swal("이메일을 입력하고 인증해주세요.");
				
				return false;
			}
			
			// 인증번호 검사하기
			var emailCheck = $("#emailCheck").val();
			
			if(emailCheck == "") {
				swal("인증번호를 입력해주세요.");
				
				return false;
			}
			
			if(emailCheck != "2020") {
				swal("올바른 인증번호를 쓰시고 인증해주세요");
				$("#emailCheck").val("");
				
				return false;
			}
			
			//비밀번호 검사하기 
			var pwd = $("#pwd").val();
			var regExp = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{6,}$/;
			var bool = regExp.test(pwd);
			
			if(bool == false){
				swal("비밀번호를 조건에 맞도록 올바르게 입력해주세요.");
				$("#pwd").val("");
				
				return false;
			}
			
			var pwdCheck = $("#pwdCheck").val();
			
			if( pwdCheck != pwd){
				swal("비밀번호를 다시 확인해주세요.");
				$("#pwdCheck").val("");
				
				return false;
			}
		
			// 휴대폰 숫자 검사하기
			var hp = $("#hp").val();
		
			var regExp = /^[0-9]{10,11}$/; 
			var bool = regExp.test($("#hp").val().trim())
			
			if(bool == false){
				swal("휴대폰 번호를 -를 제외하여 다시 입력해주세요.");
				$("#hp").focus();
				
				return false;
			}

 			// 라디오버튼 선택 검사하기		
			var radioBool = $("input:radio[name=route]").is(":checked"); 
			
			if(!radioBool) {  
				swal("StudyTrip을 알게된 경로를 선택해주세요.");
				
				return false; 
			}

			// 회원가입 	
			var frm = document.form-horizontal;			
			frm.action = "";
			frm.method = "post";
			frm.submit();
			
		}); // end of 유효성 검사 -----------------------------------------------------------------
			
	}); // end of $(document).ready ---------------------------------------------------------------------

	
	function dupCheck() {	
		if($("#email").val() == "") {
			swal("이메일을 입력해주세요.");			
			return false;
		}
		else{
			$.ajax({                                                       
				url:"<%= request.getContextPath()%>/emailExist.st",   
				type: "POST",  
				data: {'email' : $("#email").val().trim()},  
				dataType: "json",
				success: function(json) {  
					var isExist = json.isEmailExist;  
					if(isExist == true) { 
						swal("이미 존재하는 이메일은 사용할 수 없습니다");
						$("#email").val("");
					}
					else { 
						swal("인증번호를 보냈습니다");  // 이메일 보내는 기능 만들기
					}
				},
				error: function(request, status, error){
					alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
				}
			});				
		}
	} // end of function dupCheck()-------------------------
	
	
	function noCheck() {
 		if($("#emailCheck").val() != "2020") {  // 위에도 "2020" 수정
			swal("올바른 인증번호를 쓰세요");
			$("#emailCheck").val("");			
			return false;
		} 
 		else {
 			swal("인증되었습니다");
 		}
	} // end of functionnoCheck()-------------------------
	
</script>

</head>
<body>

<div class="container" align="center">

  <form class="form-horizontal">
    
    <div class="form-group">
      <label class="control-label col-sm-4" for="name">이름</label>
      <div class="col-sm-4">
     	<input type="text" class="form-control" id="name" placeholder="이름을 쓰세요"  name="name">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-4" for="email">이메일</label>
      <div class="col-sm-4">
        <input type="email" class="form-control" id="email" placeholder="이메일을 쓰세요(중복된 이메일 사용 불가)" name="email">
      </div>
	   <input type="button" value="인증번호 발송" onclick="dupCheck();" class="col-sm-2 btn btn-default"/>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-4" for="emailCheck">인증번호</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="emailCheck" placeholder="인증번호를 쓰세요" name="emailCheck">
      </div>
      	<input type="button" value="인증번호 검사" onclick="noCheck();" class="col-sm-2 btn btn-default"/>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-4" for="pwd">비밀번호</label>
      <div class="col-sm-4">          
        <input type="password" class="form-control" id="pwd" placeholder="숫자,영문자,특수문자가 각 1개씩 포함 6자리 이상" name="pwd">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-4" for="pwdCheck">비밀번호 확인</label>
      <div class="col-sm-4">          
        <input type="password" class="form-control" id="pwdCheck" placeholder="다시 한번 비밀번호를 쓰세요" name="pwdCheck">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-4" for="hp">핸드폰</label>
      <div class="col-sm-4">  
      	<input type="tel" class="form-control" placeholder="-를 제외한 핸드폰번호를 쓰세요" id="hp" name="hp">
      </div>
    </div>
    
    <div class="form-group">
    	<label class="control-label col-sm-4">프로필사진 등록(선택)</label>
    	<input type="file" class="col-sm-4" name="profile"/>
    </div>
    
    <div class="form-group">
    	<label class="control-label col-sm-4">StudyTrip을 알게된 경로를 선택해주세요</label>
		
		<div class="col-sm-4">
			<label for="rd1" class="rdlb">유튜브</label>
			<input type="radio" name="route" id="rd1" value="유튜브"/>
			&nbsp;&nbsp;
			<label for="rd2" class="rdlb">지면광고</label>
			<input type="radio" name="route" id="rd2" value="지면광고" />
			&nbsp;&nbsp;
			<label for="rd3" class="rdlb">TV광고</label>
			<input type="radio" name="route" id="rd3" value="TV광고" />	
			&nbsp;&nbsp;
			<label for="rd4" class="rdlb">지인</label>
			<input type="radio" name="route" id="rd4" value="지인" />
			&nbsp;&nbsp;
			<label for="rd5" class="rdlb">SNS</label>
			<input type="radio" name="route" id="rd5" value="SNS" />
		</div>
    </div>

	<div align="center" style="margin-top: 5%;">
    	<button type="submit" class="btn btn-default" id="submitBtn">회원가입</button>
    </div>
  </form>
  
</div>
