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
     body{
    	font-family: 'NEXON Lv1 Gothic OTF';
    }
    .str{
    	font-family: 'TmonMonsori';
    	font-size:80px;
    	color:#589172;
    	-webkit-text-stroke-width: 2px;
		-webkit-text-stroke-color: white;
    }
    .week{
    	font-family: 'TmonMonsori';
    	color:#000000;
    	-webkit-text-stroke-width: 1px;
		-webkit-text-stroke-color: white;
    	font-size:45px;
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
	        <span class="oi oi-menu"></span> Menu
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
	          <c:if test="${vore.seperator eq 2}">
	          <li class="nav-item hov"><a href="sinchung.do" class="nav-link">신청</a></li>
	          </c:if>
	          </c:if>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
     
    <div class="hero-wrap" style="background-image: url('${cpath}/resources/images/ban.png'); height: 500px; position: relative; max-width:100%;" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center">
          <div style="width:100%;" class="col-md-6 ftco-animate d-flex align-items-end ">
          	<div class="text w-100" >
	            <span class="mb-4 str">어르신</span><span class="week">들의</span><br><span class="str">행복한</span><span class="week">삶을 응원합니다</span>
	            <p class="mb-4" style="background-image: url('${cpath}/resources/images/ban3.png'); height:70px; position:relative; background-repeat:no-repeat;"></p>
            </div>
          </div>
          
        </div>
      </div>
    </div>
	
    

		<section class="ftco-intro">
    	<div class="container">
    		<div class="row justify-content-center pb-5">
          <div class="col-md-7 heading-section text-center ftco-animate">
          	<br>
            <h2  style="font-family: 'NEXON Lv1 Gothic OTF Bold'; color:#589172;">Services</h2>
          </div>
        </div>
    		<div class="row justify-content-center">
    			<div class="col-md-4 d-flex align-items-stretch ftco-animate">
    				<div class="services-2 text-center ">
    					<a href="/nahonsan/about2.do">
    					<div class="icon-wrap">
    						<div class="number d-flex align-items-center justify-content-center"><span>01</span></div>
	    					<div class="icon d-flex align-items-center justify-content-center">
	    						<span class="flaticon-calendar"></span>
	    					</div>
    					</div></a>
    					<h2>관리 신청</h2>
    				</div>
    			</div>
    			<div class="col-md-4 d-flex align-items-stretch ftco-animate">
    				<div class="services-2 text-center">
    				<!-- 위험분석은 아직 -->
    				<a href="#">
    					<div class="icon-wrap">
    						<div class="number d-flex align-items-center justify-content-center"><span>02</span></div>
	    					<div class="icon d-flex align-items-center justify-content-center">
	    						<span class="flaticon-qa"></span>
	    					</div>
    					</div></a>
    					<h2>위험 분석</h2>
    				</div>
    			</div>
    			
    		</div>
    	</div>
    </section>
    <br><br>

    

		  
    <section class="ftco-section testimony-section">
    	<div class="img img-bg border" style="background-image: url(${cpath}/resources/images/gmdp.png);"></div>
    	<div class="overlay"></div>
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
            <h2 class="mb-3"></h2>
          </div>
        </div>
        <div class="row ftco-animate">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel ftco-owl">
              <div class="item">
                <div class="testimony-wrap py-4">
                	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                  <div class="text">
                    <p class="mb-4">간단한 소개?</p>
                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(${cpath}/resources/images/person_1.jpg)"></div>
                    	<div class="pl-3">
		                    <p class="name">이름</p>
		                    <span class="position">뭐 쓸지 고민중</span>
		                  </div>
	                  </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap py-4">
                	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                  <div class="text">
                    <p class="mb-4">간단한 소개?</p>
                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(${cpath}/resources/images/person_2.jpg)"></div>
                    	<div class="pl-3">
		                    <p class="name">이름</p>
		                    <span class="position">뭐 쓸지 고민중</span>
		                  </div>
	                  </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap py-4">
                	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                  <div class="text">
                    <p class="mb-4">간단한 소개?</p>
                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(${cpath}/resources/images/person_3.jpg)"></div>
                    	<div class="pl-3">
		                    <p class="name">이름</p>
		                    <span class="position">뭐 쓸지 고민중</span>
		                  </div>
	                  </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap py-4">
                	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                  <div class="text">
                    <p class="mb-4">간단한 소개?</p>
                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(${cpath}/resources/images/person_1.jpg)"></div>
                    	<div class="pl-3">
		                    <p class="name">이름</p>
		                    <span class="position">뭐 쓸지 고민중</span>
		                  </div>
	                  </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap py-4">
                	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                  <div class="text">
                    <p class="mb-4">간단한 소개?</p>
                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(${cpath}/resources/images/person_2.jpg)"></div>
                    	<div class="pl-3">
		                    <p class="name">이름</p>
		                    <span class="position">뭐 쓸지 고민중</span>
		                  </div>
	                  </div>
                  </div>
                </div>
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
	          <div class="col-md-12">
		
	            <p class="mb-0" style="color: rgba(255,255,255,.5);"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib.com</a>
	  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
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
  <script type="text/javascript">
  </script>
    
  </body>
</html>