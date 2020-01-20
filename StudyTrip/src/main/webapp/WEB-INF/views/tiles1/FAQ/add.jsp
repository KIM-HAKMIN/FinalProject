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
	 
		<%-- === 스마트에디터 구현 시작 === --%>
		//전역변수
	    var obj = [];
	    
	    //스마트에디터 프레임생성
	    nhn.husky.EZCreator.createInIFrame({
	        oAppRef: obj,
	        elPlaceHolder: "content",
	        sSkinURI: "<%= request.getContextPath() %>/resources/smarteditor/SmartEditor2Skin.html",
	        htParams : {
	            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
	            bUseToolbar : true,            
	            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
	            bUseVerticalResizer : true,    
	            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
	            bUseModeChanger : true,
	        }
	    });
	    <%-- === 스마트에디터 구현 끝 === --%>
	 
		//수정완료버튼
		$("#btnUpdate").click(function(){
			
			<%-- === 스마트에디터 구현 시작 === --%>
	        obj.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
	        <%-- === 스마트에디터 구현 끝 === --%>
			
			// 글제목 유효성 검사
			var subjectval = $("#subject").val().trim();
			if(subjectval == "") {
				alert("글제목을 입력하세요!!");
				return;
			}
			
			<%-- === 스마트에디터 구현 시작 === --%>
			//스마트에디터 사용시 무의미하게 생기는 p태그 제거
	        var contentval = $("#content").val();

	        // 스마트에디터 사용시 무의미하게 생기는 p태그 제거하기전에 먼저 유효성 검사를 하도록 한다.
	        // 글내용 유효성 검사 
	        if(contentval == "" || contentval == "<p>&nbsp;</p>") {
	        	alert("글내용을 입력하세요!!");
	        	return;
	        }
	        
	        // 스마트에디터 사용시 무의미하게 생기는 p태그 제거하기
	        contentval = $("#content").val().replace(/<p><br><\/p>/gi, "<br>"); 
	        contentval = contentval.replace(/<\/p><p>/gi, "<br>"); 
	        contentval = contentval.replace(/(<\/p><br>|<p><br>)/gi, "<br><br>"); 
	        contentval = contentval.replace(/(<p>|<\/p>)/gi, ""); 
	    
	        $("#content").val(contentval);
	        // alert(contentval);
		    <%-- === 스마트에디터 구현 끝 === --%>			
		
			// 글암호 유효성 검사
			var pwval = $("#pw").val().trim();
			if(pwval == "") {
				alert("글암호를 입력하세요!!");
				return;
			}
			
			
			// 폼을 submit
			var frm = document.editFrm;
			frm.method = "POST";
			frm.action = "<%= ctxPath%>/editEnd.action";
			frm.submit();
		});
		
 });
</script>

<div style="padding-left: 10%; margin-bottom: -2%; border: solid 0px red;">
	
	<form name="editFrm">
		<table id="table">
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
			<tr>
				<th>글암호</th>
				<td><input type="password" name="pw" id="pw" class="short" /></td>
			</tr>
		</table>
		
		<div style="margin: 20px;">
			<button type="button" id="btnUpdate">완료</button>
			<button type="button" onclick="javascript:history.back();">취소</button>
		</div>
		
	</form>
</div>