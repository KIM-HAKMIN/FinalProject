<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<style type="text/css">

#table {
    width: 90%; 
    border-collapse: collapse;
    background-color: white;
    border-radius: 20px;
}
     
.subjectStyle {
	font-weight: bold;
    color: orange;
    cursor: pointer;
} 

.subject {
	font-size: 13pt;
}

td {
	padding: 10px;
}

img {
	margin: 0 5px 0 7px ;
}

</style>

<script type="text/javascript">

	$(document).ready(function(){
		
		$(".subject").bind("mouseover", function(event){
			var $target = $(event.target);
			$target.addClass("subjectStyle");
		});
		
		$(".subject").bind("mouseout", function(event){
			var $target = $(event.target);
			$target.removeClass("subjectStyle");
		});	
		
	}); // end of $(document).ready()------------------

	
	function goView(seq) {
		
		var frm = document.goViewFrm;
		frm.seq.value = seq;
		
		frm.method = "GET";
		frm.action = "view.action";
		frm.submit();
	}
	
</script>    

<div style="padding-left: 3%;">
	<h2 style="margin-bottom: 30px;">자주 묻는 질문</h2>
	
	<table id="table">
	    <c:forEach begin="1" end="3">
		<%-- <c:forEach var="boardvo" items="${boardList}" varStatus="status"> --%>
			<tr>
			   <td align="left">
			   	<img src="/studytrip/resources/images/FAQ/chat-bubbles.png" style="width: 3%;">
			   	<span class="subject" onclick="goView('${boardvo.seq}');">글제목</span>
				<%-- <span class="subject" onclick="goView('${boardvo.seq}');">${boardvo.subject}</span> --%>
			   </td>				
		    </tr>
		</c:forEach>
	</table>
	<br/>
	
	<form name="goViewFrm">
		<input type="hidden" name="seq" />
		<input type="hidden" name="gobackURL" value="${gobackURL}" /> 
	</form>
	
	<%-- === 페이지바 === --%>
	<div align="center" style="">
		${pageBar}
	</div>
	
</div>