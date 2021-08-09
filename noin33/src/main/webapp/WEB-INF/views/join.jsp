<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<c:set var="cpath" value="${pageContext.request.contextPath}"/> 
<!DOCTYPE html>
<html lang="en">
 <head>
    <title>나혼자산DAY - 독거노인 낙상 감지 서비스</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" type="image/x-icon" href="${cpath}/resources/images/logo.jpg">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/animate.css">
    
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/magnific-popup.css">
    
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/flaticon.css">
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/Font.css">
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/button1.css">
    
    <style>
    body{
    	font-family: 'NEXON Lv1 Gothic OTF';
    	color:#000000;
    }
    table{
    	width:600px; 
    	height:400px;
    	margin-left:auto; 
    	margin-right:auto;
    	border-top:3px solid black;
    	border-bottom:3px solid black;
    }
    .col1{
    	width: 30%;
    	text-align:left;
    	font_weight:bold;
    }
    .col2{
    	text-align=left;
    }
    input, select{
    	width:400px;
    }
    td{
    	border-bottom:1px dotted black;
    }
    </style>
  </head>
  <body>
  
  	<div class="wrap" >
			<div class="container" >
				<div align="right">
					<a href="#" style="color:white;"></a>&emsp;
					<a href="#" style="color:white;"></a>
				</div>
			</div>
	</div>
    
     <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="/nahonsan/firstpage.do"><img height="60px" src="${cpath}/resources/images/title.png"></a>
		</div>
	  </nav>
    <!-- END nav -->
    
   <div align="center">
      <h1 style="color:black;">회원가입 </h1>
      <form action="${cpath}/join_welfare.do" method="post" id="form">
      
      
      <table >
      	<tr >
      		<td class="col1">구분</td>
      		<td class="col2">
      			<select id='selector'>
      			<option>선택</option>
           		<option value='${cpath}/join_welfare.do'>복지사</option>
        	    <option value='${cpath}/join_guardian.do'>보호자</option>
         		</select>
      		</td>
      	</tr>
      	<tr>
      		<td class="col1">이메일</td>
      		<td class="col2"><input style="width:60%;"type="text" name="email" id="" placeholder="Email을 입력하세요">
      		<button type='button' id="btn1" style="width:30%; height:36px;" class="btn btn-primary px-4 joinbtn">중복 확인</button></td>
      	</tr>
      	<tr>
      		<td class="col1">비밀번호</td>
      		<td class="col2"><input type="password" name="password" id="" placeholder="password를 입력하세요"></td>
      	</tr>
      	<tr>
      		<td class="col1">이름</td>      	
      		<td class="col2"><input type="text" name="name" id="" placeholder="이름을 입력하세요"></td>
      	</tr>
      	<tr>
      		<td class="col1">연락처</td>
      		<td class="col2"><input type="text" name="phone" id="" placeholder="전화번호를 입력하세요."></td>
      	</tr>
      	<tr>
      		<td class="col1">주소</td>
      		<td class="col2"><input type="text" name="address" id="" placeholder="주소를 입력하세요"></td>
      	</tr>
      </table>
      <br><br>
      <span> <button type="submit" class="btn btn-primary py-3 px-4 joinbtn">확인</button> </span>
      <span> <button class="btn btn-white py-3 px-4 joinbtn" onclick="location.href='firstpage.do'">메인으로</button> </span>
      </form>
   </div> <br><br>
   
   
   
	<footer class="ftco-footer" id="footbg" style="width:100%; spadding: 6em 0 0 0;">
      <div class="container-fluid px-0 py-5 bg-black" style="background:#589167;">
      	<div class="container">
      		<div class="row">
	          <div class="col-md-12" style="display: flex; justify-content: center; align-items: center;">
      		<div style="float:left; margin-right:20px; "><img src="${cpath}/resources/images/123123.png" width="100px"></div>
      		<div style="display:inline;  float:left;">
				<p style="line-height: 0.5em; font-size:15px;"><span style="font-weight:bold;">나혼자산DAY</span></p>
                <p style="line-height: 0.5em; font-size:10px;"><span>광주광역시 남구 송암로60 광주CGI센터 2층</span></p>
                <p style="line-height: 0.5em; font-size:10px;"><span>대표자 : 김인겸</span><p>
                <p style="line-height: 0.5em; font-size:10px;"><span>TEL. 010-6626-8171  /  E-Mail : ruaql2@naver.com</span></p>
	            <p style="line-height: 0.5em; font-size:10px;"><span style="color:black;">opyright © 2021 SMHRD Co.,Ltd All rights Reserved</span></p>
	        </div>
      		<div style="display:inline;  float:left; margin-left:20%;" align="center">
				<p style="line-height: 0.5em; font-size:15px;"><span style="font-weight:bold;">문의</span></p>
               <ul class="ftco-footer-social list-unstyled mt-2">
                <li class="ftco-animate"><a href="#"><span class="fa fa-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="fa fa-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="fa fa-instagram"></span></a></li>
              </ul>
	        </div>
	          </div>
	        </div>
      	</div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

  
  <script src="${cpath}/resources/js/jquery-3.6.0.js"></script>
  <script src="${cpath}/resources/js/jquery.min.js"></script>
  <script src="${cpath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${cpath}/resources/js/popper.min.js"></script>
  <script src="${cpath}/resources/js/bootstrap.min.js"></script>
  <script src="${cpath}/resources/js/jquery.easing.1.3.js"></script>
  <script src="${cpath}/resources/js/jquery.waypoints.min.js"></script>
  <script src="${cpath}/resources/js/jquery.stellar.min.js"></script>
  <script src="${cpath}/resources/js/owl.carousel.min.js"></script>
  <script src="${cpath}/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="${cpath}/resources/js/jquery.animateNumber.min.js"></script>
  <script src="${cpath}/resources/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${cpath}/resources/js/google-map.js"></script>
  <script src="${cpath}/resources/js/main.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script type="text/javascript">
        $('#selector').on('change', function(){
           $('#form').attr('action', $('#selector').val())
        })
        
        
        //이메일 중복확인
        $('#btn1').on('click',function(){
        	$.ajax({
        		url : "idCheck.do",
        		type : 'POST',
        		data : {
        			'id' : $('input[name="email"]').val()
        		},
        		success(res){
        			if(res){
        				alert("중복된 아이디 입니다.")
        			}else{
        				alert("사용가능한 아이디 입니다.")
        			}
        		},
        		error(){
        			console.log("연결 실패")
        		}
        	})
        })
  </script>
  </body>
</html>