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
    
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/flaticon.css">
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/Font.css">
    
    <style>
    h1{
    	font-family: 'SDSamliphopangche_Outline';
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
    	width:800px;
    }
    </style>
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
	 <div align="center"><h1 style="color:#000000; ">관리 신청</h1> <br>
	 <!--  
	 <form action="" method="get" id="loginForm">
	 -->
 	<form action="${cpath}/noinsert.do" method = "post">
	 <table>
	<tr>
		<td class="col2">
			<input type="text" name=name  placeholder="이름">
		</td>
	</tr>
	<tr>
		<td class="col2">
			<input type="text" name=age  placeholder="나이">
		</td>
	</tr>
	<tr>	
		<td class="col2">
			<input type="password" name= regi_number  placeholder="주민등록번호 (-빼고)">
		</td>
	</tr>
	<tr>
		<td class="col2">
			<input type="text" name=adress  placeholder="주소">
		</td>
	</tr>
	<tr>
		<td class="col2">
			<input type="text" name=phone  placeholder="전화번호 (-빼고)">
		</td>
	</tr>	
	<tr>	
		<td class="col2">
			<textarea name="uniqueness" class="form-control"  cols="30" rows="4" placeholder="특이사항"></textarea>
		</td>
	</tr>
	</table>
	<br><br>
	<span><button type= "submit" class="btn btn-primary py-3 px-4 joinbtn">신청하기</button></span>
	</form>
	<span><button class="btn btn-white py-3 px-4 joinbtn"  onclick="location.href='/nahonsan/firstpage.do'">메인으로</button></span>
	 </div> <br><br><br><br><br><br><br><br>
  
  
  
  
  
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

</body>
</html>