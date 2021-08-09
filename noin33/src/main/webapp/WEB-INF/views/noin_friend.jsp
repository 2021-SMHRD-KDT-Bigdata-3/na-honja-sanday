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
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/button1.css">
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/flaticon.css">
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/Font.css">
    <style>
     .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
#mapwrap{position:relative;overflow:hidden;}
.category, .category *{margin:0;padding:0;color:#000;}   
.category {position:absolute;overflow:hidden;top:10px;left:10px;width:100px;height:50px;z-index:10;border:1px solid black;font-family:'Malgun Gothic','맑은 고딕',sans-serif;font-size:10px;text-align:center;background-color:#fff;}
.category .menu_selected {background:#FF5F4A;color:#fff;border-left:1px solid #915B2F;border-right:1px solid #915B2F;margin:0 -1px;} 
.category li{list-style:none;float:left;width:50px;height:45px;padding-top:5px;cursor:pointer;} 
.category .ico_comm {display:block;margin:0 auto 2px;width:22px;height:26px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/category.png') no-repeat;} 
.category .ico_noin {background-position:-10px 0;}  
.category .ico_store {background-position:-10px -36px;}

</style>
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/css/Font.css">
    
    <style>
     body{
    	font-family: 'NEXON Lv1 Gothic OTF';
    }
    </style>
  </head>
  <body>

     <div class="wrap" >
			<div class="container" >
				<div align="right">
					<a class="hov" href="logout.do" style="color:white;">로그아웃</a>
				</div>
			</div>
		</div>
    
     <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand title" href="/nahonsan/noin_main.do"><img height="60px" src="${cpath}/resources/images/title.png"></a>
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
           <span class="oi oi-menu"></span> 메뉴
         </button>

         <div class="collapse navbar-collapse" id="ftco-nav">
           <ul class="navbar-nav ml-auto">

             <li class="nav-item hov"><a href="noin_main.do" class="nav-link">홈</a></li>
             <li class="nav-item hov"><a href="noin_help.do" class="nav-link">복지사 호출</a></li>
             <li class="nav-item hov"><a href="noin_friend.do" class="nav-link">친구 찾기</a></li>
           </ul>
         </div>
       </div>
     </nav>
    <!-- END nav -->
        <section class="ftco-section bg-light">
			<div class="container">
        <div>
        	<h1 align="center">친구 만들기 프로그램 찾기</h1> <br>
        </div>
				<div class="row justify-content-center">
		    <div id= "message">원하시는 프로그램을 신청하시면 복지사에게 메시지가 갑니다. </div>
		<div id="mapwrap"> 
		    <!-- 지도가 표시될 div -->
		    <div id="map" style="width:1000px;height:700px;"></div>
		    <!-- 지도 위에 표시될 마커 카테고리 -->
		    <div class="category">
		        <ul>
		            <li id="noinMenu" onclick="changeMarker('noin')">
		                <span class="ico_comm ico_noin"></span>
		                경로당
		            </li>
		            <li id="storeMenu" onclick="changeMarker('store')">
		                <span class="ico_comm ico_store"></span>
		                공원
		            </li>
		        </ul>
		    </div>
		</div>
							
						</div>
									</div>
					</section>







<!-- footer 시작  -->
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
  <script src="${cpath}/resources/js/main.js"></script>
  <script src="${cpath}/resources/js/jquery-3.6.0.js"></script>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=08ced0a2a4c09e8ee9cc8eea5d689577"></script>
  <script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
mapOption = { 
    center: new kakao.maps.LatLng(35.13658426616493, 126.9203265865165), // 지도의 중심좌표 
    level: 5 // 지도의 확대 레벨 
}; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//경로당 마커가 표시될 좌표 배열입니다
var noinPositions = [ 
	
new kakao.maps.LatLng(35.15205488354517, 126.9314715086977),
new kakao.maps.LatLng(35.15205488354517, 126.9314715086977),
new kakao.maps.LatLng(35.157247851668096, 126.9242617313759),
new kakao.maps.LatLng(35.16047574586923, 126.91533534040606),
new kakao.maps.LatLng(35.15042719828431, 126.91317107466634),
new kakao.maps.LatLng(
		35.14287316121635, 126.91620241261866),
new kakao.maps.LatLng(35.138151531996364, 126.91562501491347),
new kakao.maps.LatLng(35.134846228471154, 126.92717296977357),
new kakao.maps.LatLng(35.12882550961276, 126.93511218822017),
new kakao.maps.LatLng(35.131258678916204, 126.90981613039034),
new kakao.maps.LatLng(35.13728214670875, 126.90574401555246),
new kakao.maps.LatLng(35.132023321948814, 126.90860198857507),
new kakao.maps.LatLng(35.13991618223983, 126.88859502960473),
new kakao.maps.LatLng(35.13177289324984, 126.8959452509035),
new kakao.maps.LatLng(35.12910160587189, 126.89972185811196),
new kakao.maps.LatLng(35.125929338297674, 126.89665974415915)
];

//공원 마커가 표시될 좌표 배열입니다
var storePositions = [
	new kakao.maps.LatLng(35.12118505499457, 126.93374446037717),
	new kakao.maps.LatLng(35.125192342701176, 126.91496349606864),
	new kakao.maps.LatLng(35.134708860836554, 126.91149310048989),
	new kakao.maps.LatLng(35.14274731380111, 126.91140747528983),
	new kakao.maps.LatLng(35.147940875921606, 126.92119217308374),
	new kakao.maps.LatLng(
			35.14784224368837, 126.90887650002263),
	new kakao.maps.LatLng(35.15094892740322, 126.91598737807918),
	new kakao.maps.LatLng(35.15053164284243, 126.92160125328009),
	new kakao.maps.LatLng(35.15328568139752, 126.92956274901958),
	new kakao.maps.LatLng(35.15637343209564, 126.92772548107541)
];


var markerImageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/category.png';  // 마커이미지의 주소입니다. 스프라이트 이미지 입니다
noinMarkers = [], // 경로당 마커 객체를 가지고 있을 배열입니다
storeMarkers = [], // 공원 마커 객체를 가지고 있을 배열입니다


createnoinMarkers(); // 경로당 마커를 생성하고 커피숍 마커 배열에 추가합니다
createStoreMarkers(); // 공원 마커를 생성하고 편의점 마커 배열에 추가합니다

changeMarker('noin'); // 지도에 처음 나타낼 떄, 경로당 마커가 보이도록 설정합니다    


//마커이미지의 주소와, 크기, 옵션으로 마커 이미지를 생성하여 리턴하는 함수입니다
function createMarkerImage(src, size, options) {
var markerImage = new kakao.maps.MarkerImage(src, size, options);
return markerImage;            
}

//좌표와 마커이미지를 받아 마커를 생성하여 리턴하는 함수입니다
function createMarker(position, image) {
var marker = new kakao.maps.Marker({
    position: position,
    image: image
});

return marker;  
}   

//경로당 마커를 생성하고 경로당 마커 배열에 추가하는 함수입니다
function createnoinMarkers() {

for (var i = 0; i < noinPositions.length; i++) {  
    
    var imageSize = new kakao.maps.Size(22, 26),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(10, 0),    
            spriteSize: new kakao.maps.Size(36, 98)  
        };     
    
    // 마커이미지와 마커를 생성합니다
    var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
        marker = createMarker(noinPositions[i], markerImage);  
    
    // 생성된 마커를 경로당 마커 배열에 추가합니다
    noinMarkers.push(marker);
}     
}

//경로당 마커들의 지도 표시 여부를 설정하는 함수입니다
function setnoinMarkers(map) {        
for (var i = 0; i < noinMarkers.length; i++) {  
    noinMarkers[i].setMap(map);
}        
}

//공원 마커를 생성하고 공원 마커 배열에 추가하는 함수입니다
function createStoreMarkers() {
for (var i = 0; i < storePositions.length; i++) {
    
    var imageSize = new kakao.maps.Size(22, 26),
        imageOptions = {   
            spriteOrigin: new kakao.maps.Point(10, 36),    
            spriteSize: new kakao.maps.Size(36, 98)  
        };       
 
    // 마커이미지와 마커를 생성합니다
    var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
        marker = createMarker(storePositions[i], markerImage);  

    // 생성된 마커를 공원 마커 배열에 추가합니다
    storeMarkers.push(marker);    
}        
}

//공원 마커들의 지도 표시 여부를 설정하는 함수입니다
function setStoreMarkers(map) {        
for (var i = 0; i < storeMarkers.length; i++) {  
    storeMarkers[i].setMap(map);
}        
}


//카테고리를 클릭했을 때 type에 따라 카테고리의 스타일과 지도에 표시되는 마커를 변경합니다
function changeMarker(type){

var noinMenu = document.getElementById('noinMenu');
var storeMenu = document.getElementById('storeMenu');







// 경로당 카테고리가 클릭됐을 때
if (type === 'noin') {

    // 경로당 카테고리를 선택된 스타일로 변경하고
    noinMenu.className = 'menu_selected';
    
    // 공원 카테고리는 선택되지 않은 스타일로 바꿉니다
    storeMenu.className = '';
    
    // 경로당 마커들만 지도에 표시하도록 설정합니다
    setnoinMarkers(map);
    setStoreMarkers(null);
} else if (type === 'store') { // 공원 카테고리가 클릭됐을 때

    // 공원 카테고리를 선택된 스타일로 변경하고
    noinMenu.className = '';
    storeMenu.className = 'menu_selected';
    
    // 공원 마커들만 지도에 표시하도록 설정합니다
    setnoinMarkers(null);
    setStoreMarkers(map);
    
}}

var array = [['지산 1동','광주광역시 동구 지산1동','062-228-1741','나들이','무료','20','0'],
	['산수2동경로당','광주광역시 동구 산수동','062-263-2710','자조모임','무료','20','1'],
	['정암경로당','광주광역시 동구 산수1동','062-223-1838','난타교실','무료','10','2'],
	['만승경로당','광주광역시 동구 계림동','062-223-6366','한지공예','무료','15','3'],
	['삼성경로당','광주광역시 동구 호남동','062-225-3565','노래교실','무료','20','4'],
	['양림오거리 경로당','광주광역시 남구 양림동','N/A','화초키우기','무료','10','5'],
	['양림2휴먼시아경로당','광주광역시 남구 양림동','062-654-9090','요리교실','무료','15','6'],
	['숙실 경로당','광주광역시 동구 학동','062-227-4632','문화체험','무료','20','7'],
	['석천경로당','광주광역시 동구 소태동 512-11','062-226-4564','건강체조','무료','20','8'],
	['봉선모아1단지2차경로당','광주광역시 남구 봉선동 984','062-653-1616','피아노교실','무료','10','9'],
	['남관경로당','광주광역시 남구 백운동 614-19','062-232-0339','국안반','무료','15','10'],
	['라인하이츠경로당','광주광역시 남구 봉선동 988','062 -654-7177','한글반','무료','20','11'],
	['주월동명지맨션경로당','광주광역시 남구 주월동 700','062-363-9346','미술치료','무료','10','12'],
	['남구거점경로당','광주광역시 남구 주월동 472','062-672-5080','원예치료','무료','15','13'],
	['신천경로당','광주광역시 남구 주월동 1240-1','062-654-8333','화초키우기','무료','20','14'],
	['광진경로당','광주광역시 남구 진월동 320-3','062-651-6114','나들이','무료','15','15']
	]
	
var array2 = [];
for(var i =0;i<16;i++){
var co = array[i][0];
var pr = array[i][3];
	var content = '<div class="wrap">' + 
'    <div class="info">' + 
'        <div class="title">' + 
'            '+array[i][0]+
'        </div>' + 
'        <div class="body">' + 
'           </div>' + 
'            <div>' + 
'                <div ">'+'주소 : '+array[i][1] + '<br>'+'연락처: '+array[i][2]+'<br>'+'진행중인 행사 : '+array[i][3]+'  이용비: '+array[i][4]+'<br>'+'수용인원 : '+array[i][5]+'       '+'<button type="submit" class="btn-friend" onclick="sendemail(\''+co+'\''+","+'\''+pr+'\')">'+
'신청</button>'+'</div>'

'            </div>' +
'        </div>' + 
'    </div>' +    
'</div>';
array2.push(content);
}
//공원 배열 생성
var array3 = [['용산생활체육공원','광주광역시 동구 소태동'],
	['봉산어린이공원','광주광역시 남구 봉선동'],
	['봉선공원','광주광역시 남구 봉선동 대남대로117번길40'],
	['사직전망타워','광주광역시 남구 사직길 49'],
	['아시아문화광장','광주광역시 동구 광산동 13'],
	['광주공원','광주광역시 남구 중앙로107번길 15'],
	['금남로공원','광주광역시 동구 금남로3가'],
	['ACC 하늘마당','광주광역시 동구 충장동 47-2'],
	['무등산','광주광역시 북구 지산동'],
	['산수공원','광주광역시 동구 산수1동 경양로'],
	]
	
var array4 = [];
for(var i =0;i<10;i++){

var content = '<div class="wrap">' + 
'    <div class="info">' + 
'        <div class="title">' + 
'            '+array3[i][0]+
'        </div>' + 
'        <div class="body">' + 
'           </div>' + 
'            <div>' + 
'                <div>'+'주소 : '+array3[i][1] + 
'</div>'+

'            </div>' +
'        </div>' + 
'    </div>' +    
'</div>';
array4.push(content);
}
//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var array = [];
for(var i = 0;i<noinMarkers.length;i++){
var overlay = new kakao.maps.CustomOverlay({
content: array2[i],
map: null,
position: noinMarkers[i].getPosition()       
});
array.push(overlay);




kakao.maps.event.addListener(noinMarkers[i], 'mouseover', makeOverListener(array[i]));
kakao.maps.event.addListener(noinMarkers[i], 'click', makeOutListener(array[i]));
}

var array = [];
for(var i = 0;i<storeMarkers.length;i++){
var overlay = new kakao.maps.CustomOverlay({
content: array4[i],
map: null,
position: storeMarkers[i].getPosition()       
});
array.push(overlay);




kakao.maps.event.addListener(storeMarkers[i], 'mouseover', makeOverListener(array[i]));
kakao.maps.event.addListener(storeMarkers[i], 'click', makeOutListener(array[i]));
}

// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
function makeOutListener(infowindow) {
    return function() {
        infowindow.setMap(null);
    };
}
function makeOverListener(infowindow) {
    return function() {
        infowindow.setMap(map);
    };
}
function sendemail(co2,pr){
	console.log(co2);
	console.log(pr);
	  $.ajax({
			url : "http://211.105.165.117:9000/email",
			type : "post",
			data : {"email" : "wodnd1593@naver.com",
				"title" : "${noin.id}"+"님이 보낸 메세지",   
				"content" : "${noin.id}님이 "+co2+"에서 \n"+pr+" 를  신청하셨습니다."},
			success : (res) =>{
				alert("신청되셨습니다. 복지사에게 메일이 보내졌습니다.");
			},
			error : () => {
				alert("잘못된 요청입니다. 다시 시도해주세요.");
			}
		})
	  
}
function clickto(){
	console.log("클릭");
}


</script>
  </body>
</html>