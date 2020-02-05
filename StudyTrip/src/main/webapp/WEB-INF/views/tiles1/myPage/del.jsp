<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% String ctxPath = request.getContextPath(); %>

<style type="text/css">
.long {
	width: 470px;
}

.short {
	width: 200px;
} 
</style>

<script type="text/javascript">
	$(document).ready(function(){
		
		$("#btnDelete").click(function(){
			
			var pwdval = $("#pwd").val().trim();
			if(pwdval == "") {
				alert("비밀번호를 입력해주세요!");
				return;
			}
			
		
			var frm = document.delFrm;
			frm.method = "POST";
			frm.action = "<%= ctxPath%>/myPage_delEnd.st";
			frm.submit();
		});
		
	});
</script>

<div style="padding-left: 10%; margin-bottom: -2%; text-align: center;">
	<h2 style="margin-bottom: 2%;">회원탈퇴를 위해 비밀번호를 입력해주세요.</h2>
	
	<form name="delFrm">
		<div id="table">
			<input type="password" name="pwd" id="pwd" class="short" />
			<input type="hidden"   name="email" value="${useremail}" />
			<input type="text" style="display: none;" />
		</div> 
		
		<div style="margin-top: 1%;">
			<button type="button" id="btnDelete">회원탈퇴</button>
			<button type="button" onclick="javascript:history.back();">취소</button>
		</div>
		
	</form>
</div>