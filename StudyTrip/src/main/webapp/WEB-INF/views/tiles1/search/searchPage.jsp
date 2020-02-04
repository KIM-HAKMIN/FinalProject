<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<% String ctxPath = request.getContextPath(); %>  
 
    
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">

#theme-title{
    display: inline-block;
    margin-left: 5px;
    padding: 36px 130px 36px 36px;
    background: #fff;
    font-size: 32pt;
    font-weight: 200;
    color: #505050;
    box-shadow: 0 0 10px 0 rgba(0,0,0,.15);
    
    font-family: Apple SD Gothic Neo,notokr,dotum,serif!important; 
    font-weight:bolder;
    
    position: relative;
    top: 90px;
    left: 300px; 
  
}


#theme-bg {

/*     background: rgba(50,50,50,.5); */
    overflow: hidden;
}

.dropbtn {
  background-color: #ffc266;
  color: white;
  padding: 16px;
  font-size: 12pt;
  border: none; 
  margin-left: 40px;
  width: 210px;


}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {

  display: none;
  position: absolute;
  width: 160px;
  z-index: 1;
}

.dropdown-content a {
  color: black;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #ffc266;}

.searchlist {

	font-size: 13pt;
	color: #787878;
	
}
.findCheck{
	width: 20px;
	height: 20px;
}

.magam{
	opacity: 1 !important;
}

.element{
	cursor: pointer;
	margin-bottom: 15px;
}

.element:hover{
	
	color: #4c8def;
}


/* 체크박스 */

.container {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default checkbox */
.container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

/* Create a custom checkbox */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #eee;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.container input:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.container input:checked ~ .checkmark:after {
  display: block;
}

/* Style the checkmark/indicator */
.container .checkmark:after {
  left: 9px;
  top: 5px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 3px 3px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}




</style>

<script type="text/javascript">

 $(document).ready(function(){
	
	 $('#selectCancel').click(function(){
		
		 $("input:checkbox[name=areaCheckbox]").prop("checked", false);
		 $("input:checkbox[name=levelCheckbox]").prop("checked", false);		 
		 $("input:checkbox[name=dayCheckbox]").prop("checked", false); 
	 });
	 
	 
	 
	 $('.btnSearch').click(function(){
		 
			var length = $("input:checkbox[name=areaCheckbox]").length;
		    var checkBoxArr = [];
		    var checkBoxArr1 = [];
		    var checkBoxArr2 = [];

			
			var areastr = null;
			var levelstr = null;
			var daystr = null;
				 
		    for(var i=0; i<length; i++) {
			  if( $("input:checkbox[name=areaCheckbox]").eq(i).is(":checked") ) {
			    checkBoxArr.push( $("input:checkbox[name=areaCheckbox]").eq(i).val() );
			  }
		    }// end of for------------------------------------
		    
		   areastr = checkBoxArr.join(",");
		    
		   
		    
		    
 		   length = $("input:checkbox[name=levelCheckbox]").length;
		    
		   for(var i=0; i<length; i++) {
				  if( $("input:checkbox[name=levelCheckbox]").eq(i).is(":checked") ) {
				    checkBoxArr1.push( $("input:checkbox[name=levelCheckbox]").eq(i).val() );
				}
			}
		   
		   levelstr = checkBoxArr1.join(",");
		   

 		   length = $("input:checkbox[name=dayCheckbox]").length;
		    
		   for(var i=0; i<length; i++) {
				  if( $("input:checkbox[name=dayCheckbox]").eq(i).is(":checked") ) {
				    checkBoxArr2.push( $("input:checkbox[name=dayCheckbox]").eq(i).val() );
				}
			}
		   
		   daystr = checkBoxArr2.join(",");
	 

		   location.href="/studytrip/search.st?areastr="+areastr+"&&levelstr="+levelstr+"&&daystr="+daystr;
		 
	 });
	 
	 
}); 
 
	function goDetail(){
		
		alert("study_num : " + $('#study_num').val());
		
		location.href="/studytrip/studyDetail.st?study_num="+$('#study_num').val();
		
	}
	

</script>



<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<div id="theme-bg" style="background-image:url('<%= ctxPath%>/resources/images/prodtitle.png'); width: 100%; height: 340px; background-size:cover;">
			<div id="theme-title" style="filter: brightness(100%);">
				다양한
				<br/>
				영어회화
			</div> 
		</div>
		
<div style="background-color: white; height: 270px; padding-top: 50px;">		
	<div align="center">
		<div align="left" style="width: 77%;">
			<span style="color: #505050;font-size: 16pt;">Filter</span> 
		</div>
	</div>
		
	<div align="center">	
		<div align="left" style="margin-top: 40px;  width: 77%; background-color: #f2f2f2">			 
			<div class="dropdown" align="left" style="padding: 20px 0 20px 0;">
			  <button class="dropbtn">지역</button>
			  <button class="dropbtn">레벨</button>
			  <button class="dropbtn">평일 / 주말</button>
			<div class="dropdown-content" style=" width:100%; background-color: white; padding-top: 40px;">
				<ul  style="list-style-type: none; display: inline-block; width: 150px;" >
				    <li>
				    	<label for="area1" class="container element">&nbsp;강남
				    	<input type="checkbox" name="areaCheckbox" id="area1" class="findCheck element searchCheckbox" value="강남"/>
				    	<span class="checkmark"></span>
				    	</label>
				    </li>
				    <li>
				    	<label for="area2" class="container element">&nbsp;신촌
				    	<input type="checkbox" name="areaCheckbox" id="area2" class="findCheck element searchCheckbox" value="신촌"/>
				    	<span class="checkmark"></span>
				    	</label>				    			    
				    </li>
				    <li>
				    	<label for="area3" class="container element">&nbsp;홍대
				    	<input type="checkbox" name="areaCheckbox" id="area3" class="findCheck element searchCheckbox" value="홍대"/>
				    	<span class="checkmark"></span>
				    	</label>				    		    
				    </li>
				    <li>
				    	<label for="area4" class="container element">&nbsp;부평
				    	<input type="checkbox" name="areaCheckbox" id="area4" class="findCheck element searchCheckbox" value="부평"/>
				    	<span class="checkmark"></span>
				    	</label>				    
				    </li>
				    <li>
				    	<label for="area5" class="container element">&nbsp;종각
				    	<input type="checkbox" name="areaCheckbox" id="area5" class="findCheck element searchCheckbox" value="종각"/>
				    	<span class="checkmark"></span>
				    	</label>				    
				    </li>
				    <li>
				    	<label for="area6" class="container element">&nbsp;노원
				    	<input type="checkbox" name="areaCheckbox" id="area6" class="findCheck element searchCheckbox" value="노원"/>
				    	<span class="checkmark"></span>
				    	</label>				    
				    </li>						    					    
				  </ul>
				  
				  <ul  style="list-style-type: none;  display: inline-block; width: 150px; margin-left: 102px; position: relative; bottom: 87px;" >
				    <li>
				    	<label for="level1" class="container element">&nbsp;입문
				    	<input type="checkbox" name="levelCheckbox" id="level1" class="findCheck element searchCheckbox" value="입문"/>
				    	<span class="checkmark"></span>
				    	</label>
				    </li>
				    <li>
				    	<label for="level2" class="container element">&nbsp;초급
				    	<input type="checkbox" name="levelCheckbox" id="level2" class="findCheck element searchCheckbox" value="초급"/>
				    	<span class="checkmark"></span>
				    	</label>				    			    
				    </li>
				    <li>
				    	<label for="level3" class="container element">&nbsp;중급
				    	<input type="checkbox" name="levelCheckbox" id="level3" class="findCheck element searchCheckbox" value="중급"/>
				    	<span class="checkmark"></span>
				    	</label>				    		    
				    </li>
				    <li>
				    	<label for="level4" class="container element">&nbsp;고급
				    	<input type="checkbox" name="levelCheckbox" id="level4" class="findCheck element searchCheckbox" value="고급"/>
				    	<span class="checkmark"></span>
				    	</label>				    
				    </li>					    					    
				  </ul>
				  
				  <ul  style="list-style-type: none;  display: inline-block; width: 150px; margin-left: 101px; position: relative; bottom: 170px;" >
				    <li>
				    	<label for="day1" class="container element">&nbsp;평일
				    	<input type="checkbox" name="dayCheckbox" id="day1" class="findCheck element searchCheckbox" value="평일"/>
				    	<span class="checkmark"></span>
				    	</label>
				    </li>
				    <li>
				    	<label for="day2" class="container element">&nbsp;주말
				    	<input type="checkbox" name="dayCheckbox" id="day2" class="findCheck element searchCheckbox" value="주말"/>
				    	<span class="checkmark"></span>
				    	</label>				    			    
				    </li>
				  </ul>
				       <div align="center" style="margin-bottom: 40px; margin-left: 490px;">
				       		<button type="button" class="btn btn-info" id="selectCancel">선택해제</button>
				       		<button type="button" class="btn btn-success btnSearch" style="margin-left: 20px;">필터검색</button>
				       </div>
				</div>		  
			</div>
				<button type="button" class="btnSearch" style="width: 160px; height: 57px; margin-left: 40px; background-color: #ff6600"><span style="color: white; font-size: 12pt; font-weight: bold;">필터검색</span></button>			  		  
		</div>
	</div>	
</div>

<div style="background: #ebebeb; width: 100%;" align="center">
	<div align="left" style="width: 80%;">
		<div style="text-align: left; color: #505050; font-size: 16pt; font-weight: bold; padding: 60px 0 40px 0; margin-left: 38px;"><span>1500개의 스터디</span></div>			
		<c:forEach var="stvo" items="${listst}" >
		<input type="hidden" id="study_num" name="study_num" value="${stvo.study_num}"/>
		<div id style=" width: 290px; display: inline-block; margin-bottom: 30px; margin-left: 42px; cursor: pointer;" onClick="javascript:location.href='<%= request.getContextPath() %>/studyDetail.st?study_num='+ ${stvo.study_num} +''">
			<div align="center" style="background-color:white; width: 100%; height: 50px; text-align: center;">
				<div style="padding-top: 20px;"><span style="color: #4c8def; font-weight: bold;">${stvo.startday} (${stvo.study_day})</span> <span style= "color: #787878;font-weight: bold;"> ${stvo.study_time} 첫 시작</span></div>
				<div style="border-top: solid 0.5px gray; width: 90%; margin: 0 auto; margin-top: 14px; position: relative;"></div>
			</div>
			<div style="height: 50px; background-color: white; text-align: center;">
				<div><span style="margin-top:10px; color: #A0A0A0; font-size: 10pt; position: relative;top: 40px;">${stvo.area}&nbsp; | &nbsp;${stvo.lv}</span></div>
			</div>
			<div style="height: 110px; text-align: center; background-color: white; padding-top: 10px;">
				<div style="margin-top: 20px;"><span style="color: #3c3c3c; font-size: 14pt; font-weight: bold;">${stvo.title}</span></div>
			</div>	
			<div style="height: 80px; background-color: white; text-align: center;">
				<span style="color: #f48210; font-weight: 700; font-size: 14pt;">${stvo.price}원 </span><span style="color: #a0a0a0; font-size: 10pt;">${stvo.study_week }주</span>
			</div>	
			


			<c:if test="${stvo.studyStatus==0}">
			<div align="center" style="height: 220px; width: 100%; background-image:url('<%= ctxPath%>/resources/files/${stvo.title_img}'); background-size:cover; background-position: center;">
				<img src="<%= ctxPath%>/resources/files/${stvo.profile}" style="height: 100px; width: 100px; border-radius: 100px; position: relative; bottom: 35px; border: solid 2px white;"/>
				<div style="width: 100%; height: 50px; background-color: rgba(0,0,0,.5); margin-top: 70px; text-align: center;"><div style="color: white; font-size: 11pt; font-weight:bold; position: relative; top: 13px;">마감 되었습니다.</div></div>		
			</div>
			</c:if>
			<c:if test="${stvo.studyStatus==2}">
			<div align="center" style="height: 220px; width: 100%; background-image:url('<%= ctxPath%>/resources/files/${stvo.title_img}');background-size:cover; background-position: center;">
				<img src="<%= ctxPath%>/resources/files/${stvo.profile}" style="height: 100px; width: 100px; border-radius: 100px; position: relative; bottom: 35px; border: solid 2px white;"/>
				<div style="width: 100%; height: 50px; background-color: rgba(220,0,0,.6); margin-top: 70px; text-align: center;"><div style="color: white; font-size: 11pt; font-weight: bold; position: relative; top: 13px;">마감임박</div></div>		
			</div>
			</c:if>
			<c:if test="${stvo.studyStatus==1}">
			<div align="center" style="height: 220px; width: 100%; background-image:url('<%= ctxPath%>/resources/files/${stvo.title_img}');background-size:cover; background-position: center;">
				<img src="<%= ctxPath%>/resources/files/${stvo.profile}" style="height: 100px; width: 100px; border-radius: 100px; position: relative; bottom: 35px; border: solid 2px white;"/>
				<div style="width: 100%; height: 50px; background-color: rgba(239,108,0,.6); margin-top: 70px; text-align: center;"><div style="color: white; font-size: 11pt; font-weight: bold; position: relative; top: 13px;">신규모집</div></div>		
			</div>
			</c:if>
		</div>
			<c:if test="${status.index == 0}"><div style="width: 100%; border : solid 1px #dcdcdc; margin-bottom: 30px;"></div></c:if>
		</c:forEach>
	</div>
</div>	

	

	

</body>
</html>