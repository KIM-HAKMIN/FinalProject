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


.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  transition: background-color .3s;
}

.pagination a.active {
  background-color: #ffa64d;
  color: white;
}

.pagination a:hover:not(.active) {
  background-color: #ffd9b3;
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
		frm.action = "FAQ_view.st";
		frm.submit();
	}
	
</script>    

<div style="padding-left: 3%;">
	<img src="/studytrip/resources/images/FAQ/headFAQ.PNG" style="margin-top: -40px; width: 100%;">
	
	<table id="table">
		<c:forEach var="boardvo" items="${boardList}" varStatus="status">
			<tr>
			   <td align="left">
			   	<img src="/studytrip/resources/images/FAQ/chat-bubbles.png" style="width: 3%;">
			   	<span class="subject" onclick="goView('${boardvo.seq}');" style="color: orange; font-weight: bold;">[ ${boardvo.kind} ]</span>
				<span class="subject" onclick="goView('${boardvo.seq}');">${boardvo.subject}</span>
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
	
	<%-- <c:if test="${sessionScope.loginuser.userid == 'admin'}"> --%>
		<button type="button" onClick="javascript:location.href='<%= request.getContextPath() %>/FAQ_add.st'">글쓰기</button>
	<%-- </c:if> --%>
	
</div>