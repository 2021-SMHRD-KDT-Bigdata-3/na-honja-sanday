<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
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
	<c:set var="session" value="${vore}"/> 
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
	        <span class="oi oi-menu"></span> 메뉴
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
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
	          <li class="nav-item hov"><a href="about3.do" class="nav-link">관리</a></li>
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
					<div style="width:20%; margin-top:50px; margin-left:50px;">
						<h1 class="">관리</h1>
                <ul class="">
                    <li class="">
                        <a class="" href="${cpath}/about3.do">
                            	관리 목록
                            <i class=""></i>
                        </a>
                    </li>
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
                </ul>
					</div>
					
			<div class="" style="width:75%">
	          <div class="heading-section py-md-5" >
	          	<span class="subheading">메인<i class="fa fa-chevron-right"></i></span>
	          	<span class="subheading">관리<i class="fa fa-chevron-right"></i></span>
	            <h2 class="mb-4">관리 목록</h2>
				<div class="heading-section py-md-5">
				    <section class="ftco-section bg-light">
         <div class="container">
            <div class="row">
					<c:forEach var="vo" items="${list}" >
             		<c:set var="imgName" value="${vo.regi_number}"></c:set>
               <div class="col-md-6 col-lg-3 ftco-animate" style="-webkit-box-flex: 0 !important; -ms-flex: 0 0 33% !important; flex: 0 0 33% !important; max-width:33% !important; ">
                  <div class="staff">
                     <div class="img-wrap d-flex align-items-stretch">
                        <div class="img align-self-stretch" style="background-image: url(${cpath}/resources/images/${imgName}.jpg); position:reletive;">
                     <div style="position:absolute; top:20px; "> <button class="camOn btn btn-primary ">cam on</button> </div></div>
                     </div>
                     <div class="pt-3 px-3 pb-4 text-center">
                        <h3> ${vo.name}</h3>
                        <span class="position mb-2">${vo.phone}</span>
                        <br>
                        <span class="position mb-2"> ${vo.address}</span>
                        <div class="faded">
                           <p> <a href="${cpath}/delnoin.do?idx=${vo.idx}">관리 해제</a> </p>
                           
                 		</div>
                     </div>
                  </div>
               </div>
               </c:forEach> 
                </div>
      </div>
      </section>
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
  <script src="${cpath}/resources/js/jquery-3.6.0.js"> </script>
  <script type="text/javascript">
  function camOn(){
	  console.log('${vore.id}')
	  if($(".camOn").html() == 'cam on'){
		  $(".camOn").html('cam off')
	  }else{
		  $(".camOn").html('cam on')
	  }
	  
	  $.ajax({
			url : " http://221.156.60.21:9000/posedetection",
			type : 'POST',
			data : {
				'email' : '${vore.id}',
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