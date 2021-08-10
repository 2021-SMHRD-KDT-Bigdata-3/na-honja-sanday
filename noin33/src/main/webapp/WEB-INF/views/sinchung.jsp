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
    	font-family: 'NEXON Lv1 Gothic OTF Bold';
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
	 <div align="center" ><h1 style="color:#000000; font-size:70px;" >관리 신청</h1> <br>
	 <!--  
	 <form action="" method="get" id="loginForm">
	 -->
 	<form action="${cpath}/noinsert.do" method = "post" >
	 <table style="font-size:40px;">
	<tr>
		<td class="col2">
			<input type="text" name=name  placeholder="이름">
			<c:if test="${name eq null}"></c:if>
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
			<input type="text" name=address  placeholder="주소">
		</td>
	</tr>
	<tr>
		<td class="col2">
			<input type="text" name=phone  placeholder="전화번호 (-빼고)">
		</td>
	</tr>	
	<tr>	
		<td class="col2">
			<textarea name="uniqueness" class="form-control"  cols="30" rows="4" placeholder="특이사항" style="font-size:40px;"></textarea>
		</td>
	</tr>
	</table>
	<br><br>
	<span><button type="submit" class="btn btn-primary py-3 px-4 joinbtn" disabled="disabled" style="font-size:25px;">신청하기</button></span>
	<span><button type="button" class="btn btn-primary py-3 px-4 checkbtn" id='contentCheck' style="font-size:25px;">검사하기</button></span>
	</form>
	<c:if test="${vore eq null}">
	<span><button class="btn btn-white py-3 px-4 joinbtn"  onclick="location.href='/nahonsan/firstpage.do'" style="font-size:25px;">메인으로</button></span>
	</c:if> 
	<c:if test="${vore ne null}">
	<span><button class="btn btn-white py-3 px-4 joinbtn"  onclick="location.href='/nahonsan/main.do'" style="font-size:25px;">메인으로</button></span>
	</c:if> 
	 </div> <br><br><br><br><br><br><br><br>
  
  
  
  
  
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