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
    
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/button1.css">
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/flaticon.css">
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/Font.css">
    
    <style>
    h1{
    	font-family: 'NEXON Lv1 Gothic OTF Bold';
    	color:#000000;
    }
    body{
    	font-family: 'NEXON Lv1 Gothic OTF';
    }
    </style>
  </head>
  <body>

  	<div class="wrap" >
			<div class="container" >
				<div align="right">
					<c:if test="${vore ne null}"><a class="hov" href="logout.do" style="color:white;">로그아웃</a></c:if> 
					<c:if test="${vore eq null}"><a class="hov" href="gologin.do" style="color:white;">로그인</a></c:if> 
				</div>
			</div>
		</div>
    
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand title" href="/nahonsan/main.do"><img height="60px" src="${cpath}/resources/images/title.png"></a>
	      
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> 메뉴
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav" style="font-size:30px">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item hov"><a href="main.do" class="nav-link">홈</a></li>
	          <li class="nav-item hov"><a href="blog.do" class="nav-link">서비스 소개</a></li>
	          <li class="nav-item hov"><a href="counselor.do" class="nav-link">복지사 소개</a></li>
	          <c:if test="${vore ne null}">
	          <c:if test="${vore.seperator eq 3}">
	          <li class="nav-item hov"><a href="manage.do" class="nav-link">관리</a></li>
	          </c:if>
	          </c:if>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2" data-stellar-background-ratio="0.5" style="height:200px !important;">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate mb-5 text-center">
          	<p class="breadcrumbs mb-0"><span class="mr-2"><a href="firstpage.do">메인 <i class="fa fa-chevron-right"></i></a></span> </p>
            <h1 class="mb-0 bread">서비스 소개</h1>
          </div>
        </div>
      </div>
    </section>

		<section class="ftco-section ftco-no-pb ftco-no-pt">
			<div class="container">
				<div class="row" style="background-color: #fff !important">
					<div class="col-md-6 img img-3 d-flex justify-content-center align-items-center"><img style="width:100%;"  src="${cpath}/resources/images/blog_image.jpg">
					</div>
					<div class="col-md-6 wrap-about px-md-5 ftco-animate py-5 ">
	          <div class="heading-section py-md-5">
	          	<span class="subheading">나혼자 산Day의 서비스를 소개합니다.</span>
	            <h2 class="mb-4">꾸준한 관심이 필요한<br>독거노인 어르신들을 위한<br>낙상 감지 서비스</h2>

	            <p>저희 서비스는 독거노인 어르신 분들을 위한 서비스 입니다. <br>복지 소외계층에 계신 어르신들 집에 낙상을 감지하기 위한 cctv를 설치하여 응급상황을 대비합니다. <br>cctv는 움직임 추출이 목적이며 낙상 감지가 되지 않은 영상은 삭제됩니다.</p>
	            <p>이외에도 복지사가 필요하실 때 호출하실수 있는 서비스와 <br>각 시, 도, 군별 시행하는 독거노인 친구만들기 사업에 연계한 서비스도 있습니다.</p>

	          </div>

					</div>
				</div>
			</div>
		</section>	
		
   <section class="ftco-section bg-light">
    	<div class="container">
    		<div class="row justify-content-center pb-5">
          <div class="col-md-10 heading-section text-center ftco-animate">
            <h2>나혼자 산Day의 서비스</h2>
          </div>
        </div>
    	</div>
    	<div class="container-fluid px-0">
    		<div class="row no-gutters" style="max-width:100%">
    			<div class="col-md-6">
    				<div class="services-wrap d-flex same" style="height:320px; background-color:white;" >
    					<div class="img" style="background-image:url('${cpath}/resources/images/naksang.png');background-size:320px;"></div>
    					<div class="text" style="height:320px">
    						<h2>낙상 감지<br> 서비스</h2>
    						<p>독거노인 어르신분의 집에 cctv를 설치하여, 낙상 상황 발생시 복지사에게 이메일을 통해 알림이 가서 빠른 대처를 도와줍니다.</p>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-6">
    				<div class="services-wrap d-flex same" style="height:320px; background-color:white;">
    					<div class="img" style="background-image:url('${cpath}/resources/images/helping.png');background-size:320px;"></div>
    					<div class="text" style="height:320px">
    						<h2>복지사 호출 <br>서비스</h2>
    						<p>독거노인 어르신분이 필요하신 서비스에 맞게 버튼을 클릭하면 복지사에게 이메일을 통해 알림이 가서 빠른 서비스를 도와줍니다.</p>
    					</div>
    				</div>
    			</div>

    			<div class="col-md-6">
    				<div class="services-wrap d-flex same" style="height:320px; background-color:white;">
    					<div class="img order-md-last" style="background-image:url('${cpath}/resources/images/friends.png');background-size:320px;"></div>
    					<div class="text" style="height:320px">
    						<h2>친구만들기<br> 서비스</h2>
    						<p>각 지역에서 시행하는 독거노인 친구만들기 프로그램을 하는 장소를 알려주고, 참여 할 수 있게 도와주는 서비스 입니다.</p>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-6">
    				<div class="services-wrap d-flex same" style="height:320px; background-color:white;">
    					<div class="img order-md-last" style="background-image:url('${cpath}/resources/images/deep.jpg');background-size:320px;"></div>
    					<div class="text" style="height:320px">
    						<h2>딥러닝 기반<br> 서비스</h2>
    						<p>독거노인 어르신의 집에 설치된 cctv에서 녹화되는 영상을 초 단위로 추출해 낙상 데이터 모델에 적용하여 낙상을 감지 하는 딥러닝 기반 서비스 입니다.</p>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </section>
   
   
   
   
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
    
  </body>
</html>