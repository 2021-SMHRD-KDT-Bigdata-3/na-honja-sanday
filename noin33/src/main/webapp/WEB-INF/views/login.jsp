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
 	.modal_wrap1{
        display: none;
        position: absolute;
        top:50%;
        left: 50%;
        margin: -80px 0 0 -200px;
        z-index: 2;
        background:#eee;
        width: 400px;
        height: 160px;
        
    }
    #footbg{
    	 background: #ffffff;
    }
    body{
    	font-family: 'NEXON Lv1 Gothic OTF';
    }
    .log{
    	display:flex;
    	flex-wrap:wrap;
    	margin-right: 10%;
    	margin-left : 10%;
    }
    #modal_btn3{
    	
    	background: url('${cpath}/resources/images/qhrwl.png') no-repeat;
    	border:3px solid #000000 !important;
    	width:256px;
    	height:250px;
    }
    #modal_btn3:hover{
    	
    	background: url('${cpath}/resources/images/qhrwlhover.png') no-repeat;
    	border:3px solid #589167 !important;
    	width:256px;
    	height:250px;
    }
    #modal_btn2{
    	
    	background: url('${cpath}/resources/images/prot.png') no-repeat;
    	border:3px solid #000000 !important;
    	width:256px;
    	height:250px;
    }
    #modal_btn2:hover{
    	
    	background: url('${cpath}/resources/images/prothover.png') no-repeat;
    	border:3px solid #589167 !important;
    	width:256px;
    	height:250px;
    }
     #modal_btn1{
    	
    	background: url('${cpath}/resources/images/noin.png') no-repeat;
    	border:3px solid #000000 !important;
    	width:256px;
    	height:250px;
    }
    #modal_btn1:hover{
    	
    	background: url('${cpath}/resources/images/noinhover.png') no-repeat;
    	border:3px solid #589167 !important;
    	width:256px;
    	height:250px;
    }
 </style>
 
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 
 
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
	 <br><br><br>
	 <div align="center"><h1 style="color:black !important; font-size:70px; font-weight:700;">로그인</h1> <br>
	 </div> 
	
	
	
	<div class="justify-content-center log">
		<div class="col-md-4 d-flex align-items-stretch ftco-animate">
			<div class="services-2 text-center">
			<button type='button' id="modal_btn2" class="btn btn-primary btnlo" form="loginForm"></button>
			</div>
		</div>
		<div class="col-md-4 d-flex align-items-stretch ftco-animate">
			<div class="services-2 text-center ">
			<button type='button' id="modal_btn1" class="btn btn-primary btnlo" form="loginForm"></button>
			</div>
		</div>
		<div class="col-md-4 d-flex align-items-stretch ftco-animate">
			<div class="services-2 text-center">
			<button type='button' id="modal_btn3" class="btn btn-primary btnlo" form="loginForm"></button>
			</div>
		</div>
    </div>
    <br><br>
    <div align="center">
		<button class="btn btn-primary py-3 px-4 joinbtn" onclick="location.href='goJoin.do'">회원가입</button>
	</div>
    <br><br>
		
		
  
  	<!-- modal -->
			<div class="black_bg"></div>
					<div class="modal_wrap1" id = "modal_temp">
    				<div class="modal_close"><a href="#">close</a></div>
    				<div align="center">
    				<form action="/login.do" method="post" id="loginForm">
    					 <%-- form 태그 경로 줄때는 예를들어 index라는 컨트롤러를 쓸거다 하면 index.do
								이런식으로 주고
								Controller에 가보면
								RequestMapping() <-- 이거 있잖아
								여기 안에가다 "index.do" 이런식으로 맵핑해주면 돼
								파일 경로를 적는게 아니라
								저렇게			
						
						--%><br>
        				 <table>
					<tr>
						<td>
							<input type="text" name=id id=id size="30" placeholder="아이디">
						</td>
					</tr>
					<tr>	
						<td>
							<input type="password" name=pw id=pw size="30" placeholder="비밀번호">
						</td>
					</tr>
					</table>
					<!-- 여기는 수정해야댈듯 일단 보류 -->
					<button class="btn btn-success" style="width : 250px" type="submit" form="loginForm">로그인</button>
			</form>
    				</div>
					</div>
  
  
 <footer class="ftco-footer" id="footbg" style="width:100%; spadding: 6em 0 0 0;">
      <div class="container-fluid px-0 py-5 bg-black" style="background:#589167;">
      	<div class="container">
      		<div class="row">
	          <div class="col-md-12">
		
	            <p class="mb-0" style="color: rgba(255,255,255,.5);"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib.com</a>
	  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
	          </div>
	        </div>
      	</div>
      </div>
    </footer>




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

   <script>
  window.onload = function() {

  function onClick() {
      document.querySelector('.modal_wrap1').style.display ='block';
      document.querySelector('.black_bg').style.display ='block';
  }   
  function offClick() {
      document.querySelector('.modal_wrap1').style.display ='none';
      document.querySelector('.black_bg').style.display ='none';
  }

  
  document.getElementById('modal_btn1').addEventListener('click', onClick);
  document.getElementById('modal_btn2').addEventListener('click', onClick);
  document.getElementById('modal_btn3').addEventListener('click', onClick);
  document.querySelector('.modal_close').addEventListener('click', offClick);

  };
  </script>
</body>
</html>