<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
    <!-- nahonsanController의 위치를 알려주는 코드 : loginTEST.do가 컨트롤러에 있으니까 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- 제이쿼리를 쓰려고 가져오는 스크립트 -->

</head>
<body>
<form action="${cpath}/loginTEST.do"> <!-- 액션값과 컨트롤러에 있는 사용하는 맵핑값과 주소를 일치시켜주어야 한다 -->
<input type = "text" name = "name">
<input type = "text" name = "birth">
<input type = "submit" >
</form>
</body>
</html>