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

<!-- swal 라이브러리 -->
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" /> 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>


<!-- 스피터 라이브러리 -->
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/jquery-ui-1.12.1.custom/jquery-ui.css" />
<script type="text/javascript" src="<%= request.getContextPath() %>/resources/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<!-- 스피너 라이브러리 종료  -->

<script type="text/javascript">

	$(document).ready(function(){
 		
		/* swal("ㅇㅇ"); */
		
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
			

				<%-- === #153. 스마트에디터 구현 시작 ===--%>
			    //전역변수
			    var obj = [];
			    
			    //스마트에디터 프레임생성
			    nhn.husky.EZCreator.createInIFrame({
			        oAppRef: obj,
			        elPlaceHolder: "content",
			        sSkinURI: "<%= ctxPath%>/resources/smarteditor/SmartEditor2Skin.html",
			        htParams : {
			            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
			            bUseToolbar : true,            
			            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
			            bUseVerticalResizer : true,    
			            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
			            bUseModeChanger : true,
			        }
			    });
			    
				<%-- === #153. 스마트에디터 구현 끝 === --%>
				
				<%-- === #153. 스마트에디터 구현 시작 ===--%>
			    //전역변수
			    
			    //스마트에디터 프레임생성
			    nhn.husky.EZCreator.createInIFrame({
			        oAppRef: obj,
			        elPlaceHolder: "introduce",
			        sSkinURI: "<%= ctxPath%>/resources/smarteditor/SmartEditor2Skin.html",
			        htParams : {
			            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
			            bUseToolbar : true,            
			            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
			            bUseVerticalResizer : true,    
			            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
			            bUseModeChanger : true,
			        }
			    });
			    
				<%-- === #153. 스마트에디터 구현 끝 === --%>
				
		<%-- 일주일에 몇일 수업하는지 가져오기 --%>
		$('.studyWeek').click(function(){
				
			
			if($("input:checkbox[id=sun]").is(":checked") == true ||$("input:checkbox[id=sat]").is(":checked") == true ){
				$('#selectDay').val("주말"); 	

			}
			else{
				$('#selectDay').val("평일"); 					
			}

		});
		
		
		$("#btnRegister").click(function(){
			
			swal("등록버튼을 누르셨습니다.");	
			
		});
		
		$("#btnCancel").click(function(){
						
			history.go(-1);
		});
	
		// 체크박스 여러개중 하나만 선택가능하게 하는것
		 $("input:checkbox[name=studyWeek]").click(function(){
			 /*	
		    	var bool = $(this).is(":checked");
		    	        // $(this).is(":checked"); 은 체크박스에 체크가 되어진 경우라면 true 
		    	        // $(this).is(":checked"); 은 체크박스에 체크가 해제되어진 경우라면 false 
		    	if(bool) {
		    		alert( $(this).val() );
		    	}
		    */	 
		    	$("input:checkbox[name=studyWeek]").prop("checked", false);
		        $(this).prop("checked", true);
		 });
		
		
		
		
}); // end of $(document).ready(function(){--------------------------------------------------



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
				<table id="table" class="table table-bordered" style="width: 80%; margin-top: 50px;">
					<tr>
						<th>스터디 타이틀</th>
						<td>
						    <div style="width: 50%;">
								<input type="text" class="form-control" name="title" />
							</div>
						</td>
					</tr>
					<tr>
						<th>스터디소개</th>
						<td><textarea name="content" id="content" class="form-control" style="min-height: 200px;"></textarea></td>
					</tr>
					<tr>
						<th>리더소개</th>
						<td><textarea name="introduce" id="introduce" class="form-control"  style="min-height: 200px;"></textarea></td>
					</tr>
					
					<tr>
						<th>스터디 지역</th>
						<td>
							<div style="width: 30%;">
							  <select class="form-control" name="area">
							  	<option value ="" selected="selected">선택</option>
								<option value="강남">강남</option>
								<option value="신촌">신촌</option>
								<option value="홍대">홍대</option>
								<option value="부평">부평</option>
								<option value="종각">종각</option>
								<option value="노원">노원</option>
							  </select>
							</div> 						
						</td>
					</tr>
					<tr>
						<th>스터디 난이도</th>
						<td>
							<div style="width: 30%;">
							  <select class="form-control" name="level">
							  	<option value="" selected="selected">선택</option>
								<option value="입문">입문</option>
								<option value="초급">초급</option>
								<option value="중급">중급</option>
								<option value="고급">고급</option>
							  </select>
							</div> 						
						</td>
					</tr>					
					
						
					
					<tr>
						<th>장소비</th>
						<td>
							<div style="width: 30%;">
							  <select class="form-control">
							  	<option selected="selected">선택</option>
							  	<option value="포함">포함</option>
								<option value="미포함">미포함</option>
							  </select>
							</div> 						
						</td>
					</tr>	
					
					<tr>
						<th>참가비</th>
						<td>
							<div style="width: 30%; border: solid 0px red; display: inline-block;">
								<input type="text" name="price" class="form-control" />
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
							<input type="text" name="week" id="week" />
						</td>
					</tr>


					<tr>
						<th>스터디 요일</th>
						<td>
							<div>
								<div class="studyCheck"><input type="checkbox" name="studyWeek" class="studyWeek" id="mon" value="월"><label for="mon" style="margin-left: 10px;">월</label></div>
								<div class="studyCheck"><input type="checkbox" name="studyWeek" class="studyWeek" id="tue" value="화"><label for="tue" style="margin-left: 10px;">화</label></div>
								<div class="studyCheck"><input type="checkbox" name="studyWeek" class="studyWeek" id="wed" value="수"><label for="wed" style="margin-left: 10px;">수</label></div>
								<div class="studyCheck"><input type="checkbox" name="studyWeek" class="studyWeek" id="thu" value="목"><label for="thu" style="margin-left: 10px;">목</label></div>
								<div class="studyCheck"><input type="checkbox" name="studyWeek" class="studyWeek" id="fri" value="금"><label for="fri" style="margin-left: 10px;">금</label></div>
								<div class="studyCheck"><input type="checkbox" name="studyWeek" class="studyWeek" id="sat" value="토"><label for="sat" style="margin-left: 10px;">토</label></div>
								<div class="studyCheck"><input type="checkbox" name="studyWeek" class="studyWeek" id="sun" value="일"><label for="sun" style="margin-left: 10px;">일</label></div>
							</div>							
						</td>
					</tr>		

					<tr>
						<th>스터디 주말 유무</th>
						<td>
							<div style="width: 30%;">
							  <select class="form-control" id="selectDay">
							   	<option selected="selected">선택</option>
							  	<option value="주말">주말</option>
								<option value="평일">평일</option>
							  </select>
							</div> 						
						</td>
					</tr>
					
					<tr>
						<th>스터디 시간</th>
						<td>
							<div style="display: inline-block;"><input type="text" name="fromTime" id="fromTime" lang="5"/></div>&nbsp~&nbsp<div style="display: inline-block;"><input name="toTime" id="toTime" type="text"/></div>							
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
				
				<button type="button" class="btn warning" style="margin-right: 10px;" id="btnRegister">스터디등록</button>
				<button type="button" class="btn warning" style="margin-right: 10px;" id="btnCancel">취소</button>
			
			</form>		

		
		</div>
	</div>	
		


				


		


		


		
		
	
	</form>
</div>


</body>
</html>