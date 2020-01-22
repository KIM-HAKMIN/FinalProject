<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<% String ctxPath = request.getContextPath(); %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

<script src='//cdn.rawgit.com/fgelinas/timepicker/master/jquery.ui.timepicker.js'></script>


<!-- 스피터 라이브러리 -->
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/jquery-ui-1.12.1.custom/jquery-ui.css" />
<script type="text/javascript" src="<%= request.getContextPath() %>/resources/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<!-- 스피너 라이브러리 종료  -->

<script type="text/javascript">

	$(document).ready(function(){
 		
		
	    $('#fromTime').timepicker();
	    $('#toTime').timepicker();
		
 		$("#spinnerOqty").spinner({
	  	      spin: function( event, ui ) {
	  	        if( ui.value > 10 ) {
	  	          $( this ).spinner( "value", 0 ); 
	  	          return false;
	  	        } 
	  	        else if ( ui.value < 0 ) {
	  	          $( this ).spinner( "value", 10 );
	  	          return false;
	  	        }
	  	      }
	  	    });
			
			
			$("#spinnerOqty").bind("spinstop", function(){
				// 스핀너는 이벤트가 "change" 가 아니라 "spinstop" 이다.
				var html = "";
				
				var spinnerOqtyVal = $("#spinnerOqty").val();
				
				if(spinnerOqtyVal == "0") {
					$("#divFileattach").empty();
					return;
				}
				else
				{
					for(var i=0; i<parseInt(spinnerOqtyVal); i++) {
						html += "<br/>";
						html += "<input type='file' name='attach' class='btn btn-default' />";
					}
					
					$("#divFileattach").empty();
					$("#divFileattach").append(html);	
				}
			});	  
		
		     //캘린더 시작~~~~~~~~~~~~
		        $('#fromDate').datepicker({
		           showOn: "both",                     // 달력을 표시할 타이밍 (both: focus or button)
		           buttonText: "시작",             // 버튼의 대체 텍스트
		           dateFormat: "yy-mm-dd",             // 날짜의 형식
		           changeMonth: true,                  // 월을 이동하기 위한 선택상자 표시여부
		           onClose: function( selectedDate ) {    

		               $("#toDate").datepicker( "option", "minDate", selectedDate );
		           }                
		       });

		       //종료일
		       $('#toDate').datepicker({
		           showOn: "both", 
		           buttonText: "종료",
		           dateFormat: "yy-mm-dd",
		           changeMonth: true,
		           onClose: function( selectedDate ) {

		               $("#fromDate").datepicker( "option", "maxDate", selectedDate );
		           }                
		       });   // 캘린더 종료-------------------------------------- 
			
			
			
	});



</script>
<style type="text/css">

.studyLabel{
	margin-left: 50px;
}

.studyWeek{
	width: 15px;
	height: 15px;
	margin-left: 20px;
}

.studyCheck{
	display: inline-block;
	margin-left: 15px;
}

.ui-datepicker-month{

	color: black;
}

.btn {
  border: 2px solid black;
  background-color: white;
  color: black;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
}

/* Green */
.success {
  border-color: #4CAF50;
  color: green;
}

.success:hover {
  background-color: #4CAF50;
  color: white;
}

/* Blue */
.info {
  border-color: #2196F3;
  color: dodgerblue;
}

.info:hover {
  background: #2196F3;
  color: white;
}

/* Orange */
.warning {
  border-color: #ff9800;
  color: orange;
}

.warning:hover {
  background: #ff9800;
  color: white;
}

/* Red */
.danger {
  border-color: #f44336;
  color: red;
}

.danger:hover {
  background: #f44336;
  color: white;
}

.ui-timepicker-hour-cell:hover{
	cursor: pointer;
}
.ui-state-default:hover{
	cursor: pointer;
}
</style>




</head>
<body>
<div align="center">
	<h1 style="color: orange;">스터디 등록하기</h1>
	<div align="center">
		<div style="width: 75%; padding-bottom: 50px;" align="center">
		
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
						<td><textarea class="form-control" rows="5" cols="10"></textarea></td>
					</tr>
					<tr>
						<th>리더소개</th>
						<td><textarea class="form-control" rows="5" cols="10"></textarea></td>
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
							<div style="display: inline-block;"><input type="text" id="fromDate" /></div>&nbsp~&nbsp<div style="display: inline-block;"><input type="text" id="toDate" /></div>							
						</td>
					</tr>
					
					<tr>
						<th>스터디 주</th>
						<td>
							<input type="text" />
						</td>
					</tr>


					<tr>
						<th>스터디 요일</th>
						<td>
							<div>
								<div class="studyCheck"><input type="checkbox" name="studyWeek" class="studyWeek" id="mon"><label for="mon" style="margin-left: 10px;">월</label></div>
								<div class="studyCheck"><input type="checkbox" name="studyWeek" class="studyWeek" id="tue"><label for="tue" style="margin-left: 10px;">화</label></div>
								<div class="studyCheck"><input type="checkbox" name="studyWeek" class="studyWeek" id="wed"><label for="wed" style="margin-left: 10px;">수</label></div>
								<div class="studyCheck"><input type="checkbox" name="studyWeek" class="studyWeek" id="thu"><label for="thu" style="margin-left: 10px;">목</label></div>
								<div class="studyCheck"><input type="checkbox" name="studyWeek" class="studyWeek" id="fri"><label for="fri" style="margin-left: 10px;">금</label></div>
								<div class="studyCheck"><input type="checkbox" name="studyWeek" class="studyWeek" id="sat"><label for="sat" style="margin-left: 10px;">토</label></div>
								<div class="studyCheck"><input type="checkbox" name="studyWeek" class="studyWeek" id="sun"><label for="sun" style="margin-left: 10px;">일</label></div>
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
						<th>주당 수업일수</th>
						<td>
							<div style="width: 30%;">
								<input type="text" />
							</div> 						
						</td>
					</tr>
					

					<tr>
						<th>스터디 시간</th>
						<td>
							<div style="display: inline-block;"><input type="text" id="fromTime" lang="5"/></div>&nbsp~&nbsp<div style="display: inline-block;"><input id="toTime" type="text"/></div>							
						</td>
					</tr>
					

		         	
		         	<%-- ==== 다중첨부파일 타입 추가하기 ===== --%>
		         	<tr>
		         		<th>이미지 파일 첨부</th>
		         		<td>
		         		    <label for="spinnerOqty">파일갯수 : </label>
		  		            <input id="spinnerOqty" value="0" style="width: 30px; height: 20px;">
		         		    <div id="divFileattach"></div>
		         		</td>
		         	</tr>
				</table>
				<br/>
				
				<button type="button" class="btn warning" style="margin-right: 10px;" onClick="goAdd();">스터디등록</button>
				<button type="button" class="btn warning" style="margin-right: 10px;" onClick="goReset();">취소</button>
			
			</form>		

		
		</div>
	</div>	
		


				


		


		


		
		
	
	</form>
</div>


</body>
</html>