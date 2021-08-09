<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<c:set var="cpath" value="${pageContext.request.contextPath}"/> 
<!DOCTYPE html>
<html lang="en">
  <head>
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
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/button1.css">
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/flaticon.css">
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/Font.css">
    
    <style>
     body{
    	font-family: 'NEXON Lv1 Gothic OTF';
    }
    .ftco-footer .ftco-footer-widget ul li {
    	margin-bottom: 0;
	}
    </style>
  </head>
  <body>

    <div class="wrap" >
			<div class="container" >
				<div align="right">
					<a class="hov" href="logout.do" style="color:white;">로그아웃</a>
				</div>
			</div>
		</div>
    
     <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand title" href="/nahonsan/noin_main.do"><img height="60px" src="${cpath}/resources/images/title.png"></a>
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
           <span class="oi oi-menu"></span> 메뉴
         </button>

         <div class="collapse navbar-collapse" id="ftco-nav">
           <ul class="navbar-nav ml-auto">
             <li class="nav-item hov"><a href="noin_main.do" class="nav-link">홈</a></li>
             <li class="nav-item hov"><a href="noin_help.do" class="nav-link">복지사 호출</a></li>
             <li class="nav-item hov"><a href="noin_friend.do" class="nav-link">친구 찾기</a></li>
           </ul>
         </div>
       </div>
     </nav>
    <!-- END nav -->
        
             <div class="text w-100" align="center" >
               <h1 class="mb-4">무슨 도움이 필요하세요 ?</h1>
               <p class="mb-4">필요하신 서비스 버튼을 클릭하시면 복지사에게 메시지가 전달 됩니다.</p>
            </div>
       
   	<div align="center">
   		<button type=submit style="WIDTH: 175pt; HEIGHT: 175pt; border-radius:12px; font-size:30px; background-color:white; border:0" id="btn-together"><img style="border-radius: 12px; width:230px; height:230px;" src="${cpath}/resources/images/goout.png"></button> &nbsp;&nbsp;&nbsp;
   		<button type=submit style="WIDTH: 175pt; HEIGHT: 175pt; border-radius:12px; font-size:30px; background-color:white; border:0" id="btn-song"><img style="border-radius: 12px; width:230px; height:230px;" src="${cpath}/resources/images/songyoung.png"></button>
   	</div><br>
   	<div align="center">
   		<button type=submit style="WIDTH: 175pt; HEIGHT: 175pt; border-radius:12px; font-size:30px; background-color:white; border:0" id="btn-home"><img style="border-radius: 12px; width:230px; height:230px;" src="${cpath}/resources/images/housekeeping.png"></button> &nbsp;&nbsp;&nbsp;
   		<button type=submit style="WIDTH: 175pt; HEIGHT: 175pt; border-radius:12px; font-size:30px; background-color:white; border:0" id="btn-welfare"><img style="border-radius: 12px; width:230px; height:230px;" src="${cpath}/resources/images/hochul2.png"></button>
   	</div>
    

    <br><br>

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
  <script src="${cpath}/resources/js/jquery-3.6.0.js"></script>

<script type="text/javascript">
  function sendemail(){
     $.ajax({
         url : "http://211.105.165.117:9000/email",
         type : "post",
         data : {"email" : "wodnd1593@naver.com",
               "content" : $(this).html()},
         success : (res) =>{
            console.log(res);
         },
         error : () => {
            alert("fail");
         }
      })
     
  }
  $("#btn-together").on("click", sendemail)
  $("#btn-song").on("click", sendemail)
  $("#btn-home").on("click", sendemail)
  $("#btn-welfare").on("click", sendemail)
  </script>
 	
  
  </body>
</html>