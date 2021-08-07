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
    #tlscjd{
    	border:2px solid; border-collapse:collapse; text-align;center;
    	width : 100%;
    		
    }
    
     body, textarea{
    	font-family: 'NEXON Lv1 Gothic OTF';
    }
    table{
    	width:800px; 
    	height:500px;
    	margin-left:auto; 
    	margin-right:auto;
    	border-top:3px solid black;
    	border-bottom:3px solid black;
    }
    td{
    	border-bottom:1px dotted black;
    }
    input{
    	width:698.25px;
    }
    h1{
    	font-family: 'NEXON Lv1 Gothic OTF Bold';
    }
    ul{
    	list-style:none;
    }
    ul a{
    	text-decoration:none;
    	color:black;
    }
    ul a:hover{
    	color:#589167;
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
					<div style="width:20%; margin-top:50px;">
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
			<!--  신청 -->		
			<div class="" style="width:75%">
	          <div class="heading-section py-md-5" >
	          	<span class="subheading">메인<i class="fa fa-chevron-right"></i></span>
	          	<span class="subheading">관리<i class="fa fa-chevron-right"></i></span>
	            <h2 class="mb-4">관리 신청</h2>
	            
				<div class="heading-section py-md-5" >
				
	       		  <form action = "${cpath}/noinsert.do" method="post">
	       		  <table>
	       		  	<tr>
						<td>이름</td>
						<td><input type="text" name ="name"></td>	       		  	
	       		  	</tr>
	       		  	<tr>
						<td>나이</td>
						<td><input type="text" name = "age"></td>	       		  	
	       		  	</tr>
	       		  	<tr>
						<td>주민등록번호</td>
						<td><input type="text" name = "regi_number"></td>
	       		  	</tr>
	       		  	<tr>
						<td>주소</td>
						<td><input type="text" name = "adress"></td>	       		  	
	       		  	</tr>
	       		  	<tr>
						<td>연락처</td>
						<td><input type="text" name = "phone"></td>	       		  	
	       		  	</tr>
	       		  	<tr>
	       		  	<td>특이사항</td>
	       		  	<td >
	       		  		<textarea name="uniqueness" class="form-control"  cols="30" rows="6" ></textarea>
	       		  	</td>
	       		  	</tr>
	       		  </table><br>
					<div align="center">
						<button type="submit" class="btn btn-primary py-3 px-4 joinbtn" disabled="disabled">등록</button>
						<button type="button" class="btn btn-primary py-3 px-4 checknbtn" id="contentCheck">검사</button>
					</div>  
			 	  </form>
				</div>
			  </div>

					
				
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
  	function nullCheck(){
  		let cnt = 0;
  		array = $('input[type="text"]');
  		for(let i =0; i < array.length; i++){
  			if($(array[i]).val() == ""){
  				alert($(array[i]).attr('name') + '는 비워둘 수 없습니다.');
  				$('.joinbtn').attr('disabled', true);
  				cnt++;
  				break;
  			}
  				
  		}
  		if (cnt == 0){
  			alert('신청 가능합니다.')  			
  			$('.joinbtn').attr('disabled', false);
  		}
  		
  	}
  	
  	$('#contentCheck').on('click', nullCheck);
  
  </script>
    
  </body>
</html>