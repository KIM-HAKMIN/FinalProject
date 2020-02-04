<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
   
<style type="text/css">
	
table {
    width: 80%; 
    border-collapse: collapse; 
    margin-top: 5%;
}

th, td {
	padding: 10px;
	border: 1px solid;
	background-color: white;
}

th{
	width: 10%; 
	text-align: center;
	background-color: #ffa64d;
}
	
.move {
	cursor: pointer;
}

.moveColor {
	color: orange; 
	font-weight: bold;
}
	
a {
	text-decoration: none !important;
}

.m {
	margin-left: 10%;
}

.n {
	margin-top: 2%;
}

.a{
	margin-left:10%;
}

.h {
	color: white;
	font-size: 13pt;
}

</style>

<script type="text/javascript">
    
	$(document).ready(function(){
	
		$(".move").hover(function(){
						   $(this).addClass("moveColor");	
						 },
				         function(){
						   $(this).removeClass("moveColor");
		});
			
		
	});// end of $(document).ready()----------------------
    	
	
</script>

<div align="center">
	<img src="/studytrip/resources/images/FAQ/headFAQ.PNG" style="margin-top: -40px; width: 100%;">

	<table id="table" style="word-wrap: break-word; table-layout: fixed;">
		<tr>
           	<th><span class="h">제목</span></th>
           	<td>${boardvo.subject}</td>
        </tr>
        <tr>
           	<th><span class="h">분류</span></th>
           	<td>${boardvo.kind}</td>
        </tr>
		<tr>
			<th><span class="h">내용</span></th>
			<td>${boardvo.content}</td> 
		</tr>		
	</table>
</div>
	
	<div class="m n" style="margin-bottom: 1%;">이전글 : <span class="move" onClick="javascript:location.href='FAQ_view.st?seq=${boardvo.previousseq}'">${boardvo.previoussubject}</span></div>
	<div class="m" style="margin-bottom: 1%;">다음글 : <span class="move" onClick="javascript:location.href='FAQ_view.st?seq=${boardvo.nextseq}'">${boardvo.nextsubject}</span></div>
	
	<br/>
	
	<button class="m" type="button" onClick="javascript:location.href='<%= request.getContextPath() %>/FAQ_list.st'">목록으로</button> 
	
	<%-- <c:if test="${sessionScope.loginuser.userid == 'admin'}"> --%>
		<button class="a" type="button" onClick="javascript:location.href='<%= request.getContextPath() %>/FAQ_edit.st?seq=${boardvo.seq}'">수정</button>
		<button type="button" onClick="javascript:location.href='<%= request.getContextPath() %>/FAQ_del.st?seq=${boardvo.seq}'">삭제</button>
	<%-- </c:if> --%>