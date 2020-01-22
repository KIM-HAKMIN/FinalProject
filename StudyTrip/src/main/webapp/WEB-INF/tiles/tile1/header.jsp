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
}

.topnav a {
  float: left;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a.active {
  color: orange;
  font-weight: bolder;
}
</style>

</head>
<body>

<div class="topnav">
  <a class="active" href="#home">스터디서치</a>
  <a href="/studytrip/search.st">스터디찾기</a>
  <a href="#">추천받기</a>
  <a href="#">스터디후기</a>
  <a href="#">테마스터디</a>
  <a href="#">후기</a>
</div>

</body>
</html>