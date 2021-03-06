<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
				<c:set var="idName" value="${fn:split(vore.id,'///@')}"></c:set>
					<c:if test="${vore ne null}">
					<span style="color:white;"> ${idName[0]} 님 안녕하세요~   </span>
					<a class="hov" href="logout.do" style="color:white;"> &emsp;&emsp; 로그아웃</a>
					</c:if> 
					<c:if test="${vore eq null}">
					<a class="hov" href="gologin.do" style="color:white;">로그인</a>
					</c:if> 
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
	          <li class="nav-item hov"><a href="about3.do" class="nav-link">관리</a></li>
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
    					<c:if test="${vore eq null}">
    					<a href="/nahonsan/sinchung.do">
    						<div class="icon-wrap">
    							<div class="number d-flex align-items-center justify-content-center"><span>01</span></div>
	    						<div class="icon d-flex align-items-center justify-content-center">
	    							<span class="flaticon-calendar"></span>
	    						</div>
    						</div>
    					</a>
    					</c:if>
    					<c:if test="${vore ne null}">
				        <c:if test="${vore.seperator eq 3}">
				        <a href="/nahonsan/about2.do">
    						<div class="icon-wrap">
    							<div class="number d-flex align-items-center justify-content-center"><span>01</span></div>
	    						<div class="icon d-flex align-items-center justify-content-center">
	    							<span class="flaticon-calendar"></span>
	    						</div>
    						</div>
    					</a>
				        </c:if>
				        <c:if test="${vore.seperator eq 2}">
				        <a href="/nahonsan/sinchung.do">
				        <div class="icon-wrap">
    						<div class="number d-flex align-items-center justify-content-center"><span>01</span></div>
	    					<div class="icon d-flex align-items-center justify-content-center">
	    						<span class="flaticon-calendar"></span>
	    					</div>
    					</div>
    					</a>
				        </c:if>
				        </c:if>
    					<h2>관리 신청</h2>
    				</div>
    			</div>
    			<div class="col-md-4 d-flex align-items-stretch ftco-animate">
    				<div class="services-2 text-center">
    				<!-- 위험분석은 아직 -->
    				<c:if test="${vore eq null || vore.seperator eq 2}">
    				<a href="#">
    					<div class="icon-wrap">
    						<div class="number d-flex align-items-center justify-content-center"><span>02</span></div>
	    					<div class="icon d-flex align-items-center justify-content-center">
	    						<span class="flaticon-qa"></span>
	    					</div>
    					</div></a>
    					<h2>위험 분석(예정)</h2>
    				</c:if>
    				<c:if test="${vore.seperator eq 3}">
    				<a href="${cpath}/about3.do">
    					<div class="icon-wrap">
    						<div class="number d-flex align-items-center justify-content-center"><span>02</span></div>
	    					<div class="icon d-flex align-items-center justify-content-center">
	    						<span class="flaticon-qa"></span>
	    					</div>
    					</div></a>
    					<h2>관리 목록</h2>
    				</c:if>
    				
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
            <h2 class="mb-3">자주 찾는 질문</h2>
          </div>
        </div>
        <div class="row ftco-animate">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel ftco-owl">
              <div class="item">
                <div class="testimony-wrap py-4">
                	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                  <div class="text" style="height:300px;">
		                    <p class="name">Q. 운영인력은 어떻게 되나요?</p>
                    <div class="d-flex align-items-center">
                    	<div class="pl-3">
                    	<p class="mb-4">  </p>
		                    <span class="position">A. 사회복지사, 간호조무사, 요양보호사 등 자격을 갖춘 분들이 상시 근무 중입니다.</span>
		                  </div>
	                  </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap py-4">
                	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                  <div class="text" style="height:300px;">
		                    <p class="name">Q. 기초생활수급자도 관리를 받을 수 있나요?</p>
                    <div class="d-flex align-items-center">
                    	<div class="pl-3">
                    	<p class="mb-4">  </p>
		                    <span class="position">A. 가능합니다. 자세한 사항은 지역 관할센터에 문의 바랍니다.</span>
		                  </div>
	                  </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap py-4">
                	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                  <div class="text" style="height:300px;">
		                    <p class="name">Q. 어떤 서비스를 제공해 주나요?</p>
                    <div class="d-flex align-items-center">
                    	<div class="pl-3">
                    	<p class="mb-4">  </p>
		                    <span class="position">A. 보호대상의 동의하에 AI가 형체만 인식가능한 카메라를 통해 위험상황을 감지합니다. 만약 위험하다고 생각되는 상황이 발생하면, 복지사와 보호자에게 알림이 가고 복지사는 그 즉시 카메라를 통해 상황을 판단할 수 있도록 합니다. </span>
		                  </div>
	                  </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap py-4">
                	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                  <div class="text" style="height:300px;">
		                    <p class="name">Q. 해당 서비스는 왜 만들었나요?</p>
                    <div class="d-flex align-items-center">
                    	<div class="pl-3">
                    	<p class="mb-4">  </p>
		                    <span class="position">A. 우리나라는 2021년 올해 기준 전체인구 대비 고령인구비율이 16.5%로 고령사회입니다. 이에따라 국가에서 노인 돌봄 복지서비스를 제공하나 실상 아쉬운 부분이 많은 것이 사실입니다. 이러한 아쉬움을 조금이나마 채워보기 위해 노약자에게 가장 취약한 위험상황에 대한 대처를 보다 빠르게 하기 위해 착안해낸 아이디어 입니다.</span>
		                  </div>
	                  </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap py-4">
                	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                 <div class="text" style="height:300px;">
		                    <p class="name">Q. 운영인력은 어떻게 되나요?</p>
                    <div class="d-flex align-items-center">
                    	<div class="pl-3">
                    	<p class="mb-4">  </p>
		                    <span class="position">A. 사회복지사, 간호조무사, 요양보호사 등 자격을 갖춘 분들이 상시 근무 중입니다.</span>
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

	<section class="ftco-appointment ftco-section img" >
		<div class="overlay"></div>
    	<div class="container">
    		<div class="row">
    			<div class="half ftco-animate">
    				<h2  style="font-family: 'NEXON Lv1 Gothic OTF Bold'; color:#fff;">모션 인식을 활용한 낙상 감지</h2>
    					<div >
		    			<img src="${cpath}/resources/images/banner123.png" style="max-width:100%;">
		    			
						
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
  <script type="text/javascript">
  </script>
    
  </body>
</html>