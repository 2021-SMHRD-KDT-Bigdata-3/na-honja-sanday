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
    
    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     
     <style>
     	#tlscjd{
     		border:2px solid; border-collapse:collapse; text-align;center;
     		width : 100%;
     		
     	}
    th{border-bottom:1px solid; padding 10px 5px;}
     	
    body{
    	font-family: 'NEXON Lv1 Gothic OTF';
    	color:#000000;
    }
    h1{
    	font-family: 'NEXON Lv1 Gothic OTF Bold';
    }
    table{
    	text-align:center;
    	width:600px; 
    	margin-left:auto; 
    	margin-right:auto;
    	border-top:3px solid black;
    	border-bottom:3px solid black;
    }
    
    td{
    	border-bottom:1px dotted black;
    }
     </style>
  </head>
  <body>
	<c:set var="session" value="${vore}"/> 
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

	      <div class="collapse navbar-collapse" id="ftco-nav">
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
    
    
    
    <section class="ftco-section ftco-no-pb ftco-no-pt" >
			<div class="container">
				<div class="row" >
					<div style="width:25%; margin-top:50px;">
						<h1 class="">관리</h1>
                <ul class="">
                    <li class="">
                         <a class="" href="${cpath}/about2.do">
                            	관리 신청
                            <i class=""></i>
                        </a>
                    </li>
                    <li class="">
                        <a class="" href="${cpath}/manage.do">
                            	관리 등록
                            <i class=""></i>
                        </a>
                    </li>
                    <li class="">
                        <a class="" href="${cpath}/about3.do">
                            	관리 목록
                            <i class=""></i>
                        </a>
                    </li>
                </ul>
					</div>
					
			<div class="" style="width:75%">
	          <div class="heading-section py-md-5" >
	          	<span class="subheading">메인<i class="fa fa-chevron-right"></i></span>
	          	<span class="subheading">관리<i class="fa fa-chevron-right"></i></span>
	            <h2 class="mb-4">관리 목록</h2>
				<div class="heading-section py-md-5">
					<table id="tlscjd" style="max-width:100%;">
						<tr>
							<th width="10%">대기번호</th>
							<th width="10%">이름</th>
							<th width="10%">나이</th>
							<th>주소</th>
							<th width="20%">전화번호</th>
							<th>특이사항</th>
							<th>신청일</th>
							<th width="10%">삭제</th>
							
						</tr>
					<c:forEach var="vo" items="${list}">
						<tr>
							<td>${vo.idx}</td>
							<td>${vo.name}</td>
							<td>${vo.age}</td>
							<td>${vo.adress}</td>
							<td>${vo.phone}</td>
							<td>${vo.uniqueness}</td>
							<td>${vo.aplication_date}</td>
							<td><a href = "${cpath}/delnoin.do?idx=${vo.idx}">관리 해제</a></td>
							<td> <button class='camOn'>On</button> </td>
						</tr>
					</c:forEach>						
					</table>	  
				</div>
			  </div>
			</div>
			
			</div>
					
					
		</div>
		</section>
    
    
  
  

		
		<section class="ftco-appointment ftco-section img" style="background-image: url(${cpath}/resources/images/bg_2.jpg);">
			<div class="overlay"></div>
    	<div class="container">
    		<div class="row">
    			<div class="col-md-6 half ftco-animate">
    				<h2 class="mb-4">Send a Message &amp; Get in touch!</h2>
    				<form action="${cpath}/About.do" class="appointment">
    					<div class="row">
								<div class="col-md-6">
									<div class="form-group">
			              <input type="text" class="form-control" placeholder="Your Name">
			            </div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
			              <input type="text" class="form-control" placeholder="Email">
			            </div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
			    					<div class="form-field">
	          					<div class="select-wrap">
	                      <div class="icon"><span class="fa fa-chevron-down"></span></div>
	                      <select name="" id="" class="form-control">
	                      	<option value="">Services</option>
	                        <option value="">Relation Problem</option>
	                        <option value="">Couple Counseling</option>
	                        <option value="">Depression Treatment</option>
	                        <option value="">Family Problem</option>
	                        <option value="">Personal Problem</option>
	                        <option value="">Business Problem</option>
	                      </select>
	                    </div>
			              </div>
			    				</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
			              <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
			            </div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
			              <input type="submit" value="Send message" class="btn btn-primary py-3 px-4">
			            </div>
								</div>
    					</div>
	          </form>
    			</div>
    		</div>
    	</div>
    </section>

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
  <script src="${cpath}/resources/js/jquery-3.6.0.js"> </script>
  <script type="text/javascript">
  function camOn(){
	  $.ajax({
			url : " http://211.105.165.117:9000/posedetection",
			type : 'POST',
			data : {
				'email' : 'anansi7543@gmail.com',
				'content' : 'content'
			},
			success(){
				alert('Cam On!');
			},
			error(){
				alert('error;;;')
			}
		})
  }
  
  $(".camOn").on('click', camOn);
  
  </script>
    
  </body>
</html>