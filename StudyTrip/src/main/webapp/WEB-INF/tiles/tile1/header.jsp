<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.net.InetAddress"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String ctxPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>

.topnav {
  overflow: hidden;
  margin: 0 auto;
}

.topnav a {
  float: left;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  margin: 0 auto;
}

.topnav a.active {
  color: orange;
  font-weight: bolder;
}
.searchbar{
	float:right;
  display: block;
}
#mypage{
	float:right;
}

input[name=search] {
  width: 15px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  background-color: white;
  background-image: url('./resources/images/search.png');
  background-position: 10px 10px; 
  background-repeat: no-repeat;
  padding: 12px 20px 12px 40px;
  -webkit-transition: width 0.4s ease-in-out;
  transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
  width: 200px;
}

</style>

</head>
<body>
	<div class="topnav">
	  <a class="active" href="<%=ctxPath%>/main.st">스터디서치</a>
	  <a href="#">스터디찾기</a>
	  <a href="#">추천받기</a>
	  <a href="#">스터디후기</a>
	  <a href="#">테마스터디</a>
	  <a href="#">후기</a>
	  <div class="searchbar">
		<form>
		  <input type="text" name="search" placeholder="검색">
		</form>
	</div>
	<div class="topnav" id="mypage">
	  <c:if test="${sessionScope.loginuser == null}">
		 <a href="<%=ctxPath%>/login.st">로그인 </a>
		 <a href="#">회원가입</a>
	  </c:if>   
				
	  <c:if test="${sessionScope.loginuser != null}">
		  <a href="#">나의정보</a>
		  <a href="<%=ctxPath%>/logout.st">로그아웃 </a>
	  </c:if>
	 <!--테스트  -->
	</div>
	</div>
</body>
</html>