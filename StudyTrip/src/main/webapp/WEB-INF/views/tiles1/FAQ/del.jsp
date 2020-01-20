<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% String ctxPath = request.getContextPath(); %>

<style type="text/css">
table, th, td, input, textarea {
	border: solid gray 1px;
}
	
table {
	border-collapse: collapse;
	width: 900px;
}

th, td{
	padding: 5px;
}

table th{
	width: 120px; 
	background-color: #DDDDDD; 
	text-align: center;
}

table td{
	width: 860px;
}
	
.long {
	width: 470px;
}

.short {
	width: 120px;
} 
</style>

<script type="text/javascript">
	$(document).ready(function(){
		
		$("#btnDelete").click(function(){
			
			// 글암호 유효성 검사
			var pwval = $("#pw").val().trim();
			if(pwval == "") {
				alert("글암호를 입력하세요!!");
				return;
			}
			
			
			// 폼을 submit
			var frm = document.delFrm;
			frm.method = "POST";
			frm.action = "<%= ctxPath%>/FAQ_delEnd.st";
			frm.submit();
		});
		
	});
</script>

<div style="padding-left: 10%; margin-bottom: -2%; border: solid 0px red;">
	<h2 style="margin-bottom: 2%;">글삭제를 위해 암호를 입력해주세요.</h2>
	
	<form name="delFrm">
		<table id="table">
			<tr>
				<th>글암호</th>
				<td>
					<input type="password" name="pw" id="pw" class="short" />
					<input type="hidden"   name="seq" value="${seq}" />
				</td>
			</tr>
		</table>
		
		<div style="margin: 20px;">
			<button type="button" id="btnDelete">삭제</button>
			<button type="button" onclick="javascript:history.back();">취소</button>
		</div>
		
	</form>
</div>