<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
   
<style type="text/css">
	
table {
    width: 80%; 
    border-collapse: collapse; 
    margin-top: 10%;
}

th, td {
	padding: 10px;
	border: 1px solid;
}

th{
	width: 10%; 
	background-color: #DDDDDD;
	text-align: center;
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

	<table id="table" style="word-wrap: break-word; table-layout: fixed;">
		<tr>
           	<th>제목</th>
           	<%-- <td>${boardvo.subject}</td> --%>
           	<td>글제목</td>
        </tr>
		<tr>
			<th>내용</th>
			<%-- <td>${boardvo.content}</td> --%>
			<td>글내용</td>
		</tr>		
	</table>
</div>
	
	<div class="m n" style="margin-bottom: 1%;">이전글 : <span class="move" onClick="javascript:location.href='FAQ_view.st?seq=${boardvo.previousseq}'">${boardvo.previoussubject}</span></div>
	<div class="m" style="margin-bottom: 1%;">다음글 : <span class="move" onClick="javascript:location.href='FAQ_view.st?seq=${boardvo.nextseq}'">${boardvo.nextsubject}</span></div>
	
	<br/>
	
	<button class="m" type="button" onClick="javascript:location.href='<%= request.getContextPath() %>/FAQ_list.st'">목록</button> 
	
	<button class="a" type="button" onClick="javascript:location.href='<%= request.getContextPath() %>/FAQ_edit.st?seq=${boardvo.seq}'">수정</button>
	<button type="button" onClick="javascript:location.href='<%= request.getContextPath() %>/FAQ_del.st?seq=${boardvo.seq}'">삭제</button>
