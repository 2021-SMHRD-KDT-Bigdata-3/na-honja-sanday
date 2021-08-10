<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
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
     body, h1{
    	font-family: 'NEXON Lv1 Gothic OTF';
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
	      <a class="navbar-brand title" href="/nahonsan/firstpage.do"><img height="60px" src="${cpath}/resources/images/title.png"></a>
	      
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> 메뉴
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav" style="font-size:30px">
	        <ul class="navbar-nav ml-auto">
	          <c:if test="${vore eq null}">
	          <li class="nav-item hov"><a href="firstpage.do" class="nav-link">홈</a></li>
	          <li class="nav-item hov"><a href="blog.do" class="nav-link">서비스 소개</a></li>
	          <li class="nav-item hov"><a href="counselor.do" class="nav-link">복지사 소개</a></li>
	          </c:if>
	          <c:if test = "${vore ne null}">
	          <c:if test="${vore.seperator eq 2}">
	          <li class="nav-item hov"><a href="main.do" class="nav-link">홈</a></li>
	          <li class="nav-item hov"><a href="blog.do" class="nav-link">서비스 소개</a></li>
	          <li class="nav-item hov"><a href="counselor.do" class="nav-link">복지사 소개</a></li>
	          <li class="nav-item hov"><a href="about2.do" class="nav-link">신청</a></li>
	          </c:if>
	          <c:if test="${vore.seperator eq 3}">
	          <li class="nav-item hov"><a href="main.do" class="nav-link">홈</a></li>
	          <li class="nav-item hov"><a href="blog.do" class="nav-link">서비스 소개</a></li>
	          <li class="nav-item hov"><a href="counselor.do" class="nav-link">복지사 소개</a></li>
	          <li class="nav-item hov"><a href="manage.do" class="nav-link">관리</a></li>
	          </c:if>
	          </c:if>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
 
    
    <div class="hero-wrap"  data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center">
          <div class="col-md-6 ftco-animate d-flex align-items-end" style="position:absolute; top:25%; left:25%;">
          	<div class="text w-100">
	            	<h1 class="mb-4" style="width:1110px;max-width:100%">이름 : <input style="max-width:100%" class="mb-4" type="text" name = "name"></h1> 
	            	<h1 class="mb-4" style="width:1110px;max-width:100%">주민등록번호 : <input style="max-width:100%" class="mb-4" type="password" name = "regi_number"> </h1>
	            	<div class="mb-4" style="width:1110px;  max-width:100%" align="right">
	            	<input type="button" value = "조회" class="btn btn-primary py-3 px-4" id="modal_btn" style="font-size:25px" >
	            	<button type='button' class="btn  py-3 px-4" onclick="location.href='firstpage.do'" style="font-size:25px">돌아가기</button>
	            	</div>
            </div>
          </div>
        </div>
      </div>
    </div>





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

	<!-- modal -->
         <div class="black_bg"></div>
               <div class="modal_wrap" id = "modal_temp">
                <div class="modal_close"><a href="#">close</a></div>
                <div align="center" style="margin-top:25%;margin-bottom:25%;">
                    <h1 class="mb-4" id="modal_name" style="font-size:20px;">(이름)님은</h1>
                     <p class="mb-4" id="modal_status" style="font-size:2.5rem;">(신청중입니다, 거절되었습니다, 등록되었습니다.)</p>
                </div>
               </div>


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
   <script>
  window.onload = function() {
	  
  function ajaxConn(){
	  console.log($('input[name="name"]').val());
	  console.log($('input[name="regi_number"]').val())
	  $.ajax({
		  url : 'checkStatus.do',
		  type : 'post',
		  data : {
			  'name' : $('input[name="name"]').val(),
			  'regi_number' : $('input[name="regi_number"]').val(),
		  },
		  datatype : 'json',
		  success(res){
			  isChecked(res);
		  },
		  error(){
			alert('실패');
		  }
	  })
  }
  
  function isChecked(res){
	  console.log(res)
	  if (res.length == 0){
		  $('#modal_name').html($('input[name="name"]').val() + '님은');
		  $('#modal_status').html('신청 내역이 없습니다.');
	  }else{
		  $('#modal_name').html(res[0].name  + '님은');
		  $('#modal_status').html('이미 신청하셨습니다.');
	  }
	  
  }

	  
  function onClick() {
	  ajaxConn()
      $('.modal_wrap').css('display', 'block');;
      $('.black_bg').css('display', 'block');;
      
  }   
  function offClick() {
	  $('.modal_wrap').css('display', 'none');
      $('.black_bg').css('display', 'none');
  }

  $('#modal_btn').on('click', onClick);
  $('.modal_close').on('click', offClick);

  }

  </script>

  </body>
</html>