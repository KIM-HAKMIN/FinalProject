<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<% String ctxPath = request.getContextPath(); %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="<%= ctxPath%>/resources/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript">





</script>
<style type="text/css">

.studyLabel{
	margin-left: 50px;
}

</style>




</head>
<body>
<div align="center">
	<h1 style="color: orange;">스터디 등록하기</h1>
		<div style="border: solid 1px gray; width: 80%;" align="left">
		
			<form name="addFrm" method="post" enctype="multipart/form-data" >
				<table id="table" class="table table-bordered" style="width: 70%; margin-top: 50px;">
					<tr>
						<th>스터디 타이틀</th>
						<td>
						    <div style="width: 50%;">
								<input type="text" class="form-control" />
							</div>
						</td>
					</tr>
					<tr>
						<th>스터디소개</th>
						<td><textarea class="form-control" rows="5"></textarea></td>
					</tr>
					<tr>
						<th>리더소개</th>
						<td><textarea class="form-control" rows="5"></textarea></td>
					</tr>
					
					<tr>
						<th>스터디 지역</th>
						<td>
							<div style="width: 30%;">
							  <select class="form-control">
								<option>강남</option>
								<option>신촌</option>
								<option>홍대</option>
								<option>부평</option>
								<option>종각</option>
								<option>노원</option>
							  </select>
							</div> 						
						</td>
					</tr>
					<tr>
						<th>스터디 난이도</th>
						<td>
							<div style="width: 30%;">
							  <select class="form-control">
								<option>입문</option>
								<option>초급</option>
								<option>중급</option>
								<option>고급</option>
							  </select>
							</div> 						
						</td>
					</tr>					
					
					<tr>
						<th>스터디 주말 유무</th>
						<td>
							<div style="width: 30%;">
							  <select class="form-control">
								<option>주말</option>
								<option>평일</option>
							  </select>
							</div> 						
						</td>
					</tr>						
					
					<tr>
						<th>장소비</th>
						<td>
							<div style="width: 30%;">
							  <select class="form-control">
								<option>포함</option>
								<option>미포함</option>
							  </select>
							</div> 						
						</td>
					</tr>	
					
					<tr>
						<th>참가비</th>
						<td>
							<div style="width: 30%; border: solid 0px red; display: inline-block;">
								<input type="text" name="saleprice" class="form-control" />
							</div>
							<div style="width: 5%; border: solid 0px red; display: inline-block;">
								원
							</div>						
						</td>
					</tr>
					
					<tr>
						<th>스터디 기간</th>
						<td>
							<div id="fromDate"></div>							
						</td>
					</tr>
					<tr>
		            	<th>제품설명</th>
		            	<td><textarea name="prodcontent" class="form-control" rows="5"></textarea></td>
		         	</tr>
		         	<tr>
						<th>제품포인트</th>
						<td>
							<div style="width: 30%; border: solid 0px red; display: inline-block;">
								<input type="text" name="prodpoint" class="form-control" />
							</div>
							<div style="width: 10%; border: solid 0px red; display: inline-block;">
								POINT
							</div>						
						</td>
					</tr>
		         	
		         	<%-- ==== 다중첨부파일 타입 추가하기 ===== --%>
		         	<tr>
		         		<th>제품이미지 파일 첨부</th>
		         		<td>
		         		    <label for="spinnerOqty">파일갯수 : </label>
		  		            <input id="spinnerOqty" value="0" style="width: 30px; height: 20px;">
		         		    <div id="divFileattach"></div>
		         		</td>
		         	</tr>
				</table>
				<br/>
				
				<button type="button" class="btn btn-primary" style="margin-right: 10px;" onClick="goAdd();">제품등록</button>
				<button type="button" class="btn btn-primary" style="margin-right: 10px;" onClick="goReset();">취소</button>
				<button type="button" class="btn btn-primary" style="margin-right: 10px;" onClick="javascript:location.href='<%= request.getContextPath() %>/product/listProduct.action'">제품목록</button> 
			
			</form>		

		
		</div>
		
		


				


		
		
		<select>
			<% for(int i=1; i<31;i++ ) {%>
				<option><%= i%></option>
			<%} %>
		</select>
		
		
		주당수업일수
		<select>
			<option>1</option>
			<option>2</option>
			<option>3</option>	
			<option>4</option>
			<option>5</option>
			<option>6</option>
			<option>7</option>
		</select>
		
		<label>시작일</label>
		<input type="text" />
		
		<label>종료일</label>
		<input type="text"/>
		
		<label>수업시간</label>
		<input type="text"/>
		
		<label>스터디기간</label>
		<select>
		<% for(int i=1; i<51;i++ ) {%>
				<option><%= i%>주</option>
		<%} %>
		</select>

		
		
	
	</form>
</div>


</body>
</html>