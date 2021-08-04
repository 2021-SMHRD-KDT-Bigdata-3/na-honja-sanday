<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<c:set var="cpath" value="${pageContext.request.contextPath}"/> 
<!DOCTYPE html>
<html lang="en">
 <head>
   <title>Counselor - Free Bootstrap 4 Template by Colorlib</title>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   
   <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">

   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

   <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/animate.css">
   
   <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/owl.carousel.min.css">
   <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/owl.theme.default.min.css">
   <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/magnific-popup.css">
   <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/button1.css">
   <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/flaticon.css">
   <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/style.css">
   <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/button1.css">
 </head>
 
 <style>
 	.modal_wrap1{
        display: none;
        position: absolute;
        top:50%;
        left: 50%;
        margin: -250px 0 0 -250px;
        background:#eee;
        z-index: 2;
    }
 </style>
 <body>

 	<div class="wrap">
		<div class="container">
			<div class="row">
				<div class="col-md-6 d-flex align-items-center">
					<p class="mb-0 phone pl-md-2">
						<a href="#" class="mr-2"><span class="fa fa-phone mr-1"></span> +00 1234 567</a> 
						<a href="#"><span class="fa fa-paper-plane mr-1"></span> youremail@email.com</a>
					</p>
				</div>
				<div class="col-md-6 d-flex justify-content-md-end">
					<div class="social-media">
		    		<p class="mb-0 d-flex">
		    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
		    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
		    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
		    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>
		    		</p>
	        </div>
				</div>
			</div>
		</div>
	</div>
	
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="/nahonsan/firstpage.do">나혼자산Day</a>
		</div>
	  </nav>
	 <br><br><br>
	 <div align="center"><h1>로그인</h1> <br>
	 </div> 
	<div>
	
	
	
	<div class="row justify-content-center">
		<div class="col-md-4 d-flex align-items-stretch ftco-animate">
			<div class="services-2 text-center ">
				<button style="width:250px;height:250px" type='button' id="modal_btn1" class="btn btn-primary py-3 px-4" style="width : 100%" form="loginForm">노인</button>
			</div>
		</div>
		<div class="col-md-4 d-flex align-items-stretch ftco-animate">
			<div class="services-2 text-center">
			<button style="width:250px;height:250px" type='button' id="modal_btn2" class="btn btn-primary py-3 px-4" style="width : 100%" form="loginForm">보호자</button>
			</div>
		</div>
		<div class="col-md-4 d-flex align-items-stretch ftco-animate">
			<div class="services-2 text-center">
			<button style="width:250px;height:250px" type='button' id="modal_btn3" class="btn btn-primary py-3 px-4" style="width : 100%" form="loginForm">복지사</button>
			</div>
		</div>
    </div>
    <br><br>
    <div align="center">
		<button class="btn btn-primary py-3 px-4" onclick="location.href='/nahonsan/goJoin.do'">회원가입</button>
	</div>
    <br><br>
		
		
  	</div>
  
  	<!-- modal -->
			<div class="black_bg"></div>
					<div class="modal_wrap1" id = "modal_temp">
    				<div class="modal_close"><a href="#">close</a></div>
    				<div>
    				<form action="login.do" method="get" id="loginForm">
    					 <%-- form 태그 경로 줄때는 예를들어 index라는 컨트롤러를 쓸거다 하면 index.do
								이런식으로 주고
								Controller에 가보면
								RequestMapping() <-- 이거 있잖아
								여기 안에가다 "index.do" 이런식으로 맵핑해주면 돼
								파일 경로를 적는게 아니라
								저렇게			
						
						--%>
        				 <table>
					<tr>
						<td>
							<input type="text" name=id id=id size="25" placeholder="아이디">
						</td>
					</tr>
					<tr>	
						<td>
							<input type="password" name=pw id=pw size="25" placeholder="비밀번호">
						</td>
					</tr>
					</table>
					</form>
					<!-- 여기는 수정해야댈듯 일단 보류 -->
					<button class="btn btn-success" style="width : 250px" type="submit" form="loginForm">로그인</button>
    				</div>
					</div>
  
  
  <footer class="ftco-footer">
      <div class="container">
        <div class="row mb-5">
          <div class="col-sm-12 col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2 logo"><a href="#">Counselor</a></h2>
              <p>Far far away, behind the word mountains, far from the countries.</p>
              <ul class="ftco-footer-social list-unstyled mt-2">
                <li class="ftco-animate"><a href="#"><span class="fa fa-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="fa fa-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="fa fa-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-12 col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Explore</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>About</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Contact</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>What We Do</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Plans &amp; Pricing</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-12 col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Legal</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Join us</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Blog</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Privacy &amp; Policy</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Term &amp; Conditions</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-12 col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Company</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>About Us</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Blog</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Contact</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Careers</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-12 col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon fa fa-map marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon fa fa-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon fa fa-paper-plane pr-4"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
      </div>
      <div class="container-fluid px-0 py-5 bg-black">
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