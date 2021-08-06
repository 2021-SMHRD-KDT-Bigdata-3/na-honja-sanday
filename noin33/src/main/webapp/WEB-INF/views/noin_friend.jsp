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
    <style>
#mapwrap{position:relative;overflow:hidden;}
.category, .category *{margin:0;padding:0;color:#000;}   
.category {position:absolute;overflow:hidden;top:10px;left:10px;width:100px;height:50px;z-index:10;border:1px solid black;font-family:'Malgun Gothic','맑은 고딕',sans-serif;font-size:10px;text-align:center;background-color:#fff;}
.category .menu_selected {background:#FF5F4A;color:#fff;border-left:1px solid #915B2F;border-right:1px solid #915B2F;margin:0 -1px;} 
.category li{list-style:none;float:left;width:50px;height:45px;padding-top:5px;cursor:pointer;} 
.category .ico_comm {display:block;margin:0 auto 2px;width:22px;height:26px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/category.png') no-repeat;} 
.category .ico_noin {background-position:-10px 0;}  
.category .ico_store {background-position:-10px -36px;}
.node {
    position: absolute;
    background-image: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/sign-info-64.png);
    cursor: pointer;
    width: 64px;
    height: 64px;
}

.tooltip {
    background-color: #fff;
    position: absolute;
    border: 2px solid #333;
    font-size: 25px;
    font-weight: bold;
    padding: 3px 5px 0;
    left: 65px;
    top: 14px;
    border-radius: 5px;
    white-space: nowrap;
    display: none;
}

.tracker {
    position: absolute;
    margin: -35px 0 0 -30px;
    display: none;
    cursor: pointer;
    z-index: 3;
}

.icon {
    position: absolute;
    left: 6px;
    top: 9px;
    width: 48px;
    height: 48px;
    background-image: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/sign-info-48.png);
}

.balloon {
    position: absolute;
    width: 60px;
    height: 60px;
    background-image: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/balloon.png);
    -ms-transform-origin: 50% 34px;
    -webkit-transform-origin: 50% 34px;
    transform-origin: 50% 34px; 
</style>
  </head>
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
         <a class="navbar-brand" href="index.do">나혼자산데이</a>
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
           <span class="oi oi-menu"></span> 메뉴
         </button>

         <div class="collapse navbar-collapse" id="ftco-nav">
           <ul class="navbar-nav ml-auto">
             <li class="nav-item active"><a href="main.do" class="nav-link">홈</a></li>
             <li class="nav-item"><a href="About.do" class="nav-link">복지사 소개</a></li>
             <li class="nav-item"><a href="counselor.do" class="nav-link">관리</a></li>
             <li class="nav-item"><a href="services.do" class="nav-link">위험분석</a></li>
           </ul>
         </div>
       </div>
     </nav>
    <!-- END nav -->
        <section class="ftco-section bg-light">
			<div class="container">
        <div>
        	<h1 align="center">친구 찾기</h1> <br>
        </div>
				<div class="row justify-content-center">
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
							<div class="row no-gutters">
								<div class="col-md-12">
									<div class="contact-wrap w-100 p-md-5 p-4">
										<h3 class="mb-4">친구 상세 정보</h3>
											<div class="row">
												<div class="col-md-4">
													<div class="form-group">
														<label class="label" for="name">이름</label>
														<input type="text" class="form-control" name="name" id="name" placeholder="이름">
													</div>
												</div>
												<div class="col-md-4"> 
													<div class="form-group">
														<label class="label" for="gender">성별</label>
														<input type="text" class="form-control" name="gender" id="gender" placeholder="성별">
													</div>
												</div>
												<div class="col-md-4"> 
													<div class="form-group">
														<label class="label" for="age">나이</label>
														<input type="text" class="form-control" name="age" id="age" placeholder="나이">
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<label class="label" for="address">주소</label>
														<input type="text" class="form-control" name="address" id="address" placeholder="주소">
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<label class="label" for="#">특이사항</label>
														<textarea name="star" class="form-control" id="star" cols="30" rows="4" placeholder="특이사항"></textarea>
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<input type="submit" value="친구 신청하기" class="btn btn-primary">
														<div class="submitting"></div>
													</div>
												</div>
											</div>
										
									</div>
								</div>
							</div>
						</div>
									</div>
					</section>







<!-- footer 시작  -->
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
  <script src="${cpath}/resources/js/main.js"></script>
  <script src="${cpath}/resources/js/jquery-3.6.0.js"></script>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=08ced0a2a4c09e8ee9cc8eea5d689577"></script>
  <script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
mapOption = { 
    center: new kakao.maps.LatLng(35.13140241988734, 126.93058171350039), // 지도의 중심좌표 
    level: 4 // 지도의 확대 레벨 
}; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//경로당 마커가 표시될 좌표 배열입니다
var noinPositions = [ 
new kakao.maps.LatLng(35.12197295234195, 126.9361453691268),
new kakao.maps.LatLng(35.12784630507054, 126.93452384874173),
new kakao.maps.LatLng(35.13269254206324, 126.94400367381996),
new kakao.maps.LatLng(35.13499291174574, 126.95307095107525),
new kakao.maps.LatLng(35.13543502373503, 126.92672856323237),
];

//편의점 마커가 표시될 좌표 배열입니다
var storePositions = [
];


var markerImageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/category.png';  // 마커이미지의 주소입니다. 스프라이트 이미지 입니다
noinMarkers = [], // 커피숍 마커 객체를 가지고 있을 배열입니다
storeMarkers = [], // 편의점 마커 객체를 가지고 있을 배열입니다


createnoinMarkers(); // 커피숍 마커를 생성하고 커피숍 마커 배열에 추가합니다
createStoreMarkers(); // 편의점 마커를 생성하고 편의점 마커 배열에 추가합니다

changeMarker('noin'); // 지도에 커피숍 마커가 보이도록 설정합니다    


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

//커피숍 마커를 생성하고 커피숍 마커 배열에 추가하는 함수입니다
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
    
    // 생성된 마커를 커피숍 마커 배열에 추가합니다
    noinMarkers.push(marker);
}     
}

//커피숍 마커들의 지도 표시 여부를 설정하는 함수입니다
function setnoinMarkers(map) {        
for (var i = 0; i < noinMarkers.length; i++) {  
    noinMarkers[i].setMap(map);
}        
}

//편의점 마커를 생성하고 편의점 마커 배열에 추가하는 함수입니다
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

    // 생성된 마커를 편의점 마커 배열에 추가합니다
    storeMarkers.push(marker);    
}        
}

//편의점 마커들의 지도 표시 여부를 설정하는 함수입니다
function setStoreMarkers(map) {        
for (var i = 0; i < storeMarkers.length; i++) {  
    storeMarkers[i].setMap(map);
}        
}


//카테고리를 클릭했을 때 type에 따라 카테고리의 스타일과 지도에 표시되는 마커를 변경합니다
function changeMarker(type){

var noinMenu = document.getElementById('noinMenu');
var storeMenu = document.getElementById('storeMenu');

// 커피숍 카테고리가 클릭됐을 때
if (type === 'noin') {

    // 커피숍 카테고리를 선택된 스타일로 변경하고
    noinMenu.className = 'menu_selected';
    
    // 편의점과 주차장 카테고리는 선택되지 않은 스타일로 바꿉니다
    storeMenu.className = '';
    
    // 커피숍 마커들만 지도에 표시하도록 설정합니다
    setnoinMarkers(map);
    setStoreMarkers(null);
    function TooltipMarker(position, tooltipText) {
        this.position = position;
        var node = this.node = document.createElement('div');
        node.className = 'node';

        var tooltip = document.createElement('div');
        tooltip.className = 'tooltip',

        tooltip.appendChild(document.createTextNode(tooltipText));
        node.appendChild(tooltip);
        
        // 툴팁 엘리먼트에 마우스 인터렉션에 따라 보임/숨김 기능을 하도록 이벤트를 등록합니다.
        node.onmouseover = function() {
            tooltip.style.display = 'block';
        };
        node.onmouseout = function() {
            tooltip.style.display = 'none';
        };
    }

    // AbstractOverlay 상속. 프로토타입 체인을 연결합니다.
    TooltipMarker.prototype = new kakao.maps.AbstractOverlay;

    // AbstractOverlay의 필수 구현 메소드.
    // setMap(map)을 호출했을 경우에 수행됩니다.
    // AbstractOverlay의 getPanels() 메소드로 MapPanel 객체를 가져오고
    // 거기에서 오버레이 레이어를 얻어 생성자에서 만든 엘리먼트를 자식 노드로 넣어줍니다.
    TooltipMarker.prototype.onAdd = function() {
        var panel = this.getPanels().overlayLayer;
        panel.appendChild(this.node);
    };

    // AbstractOverlay의 필수 구현 메소드.
    // setMap(null)을 호출했을 경우에 수행됩니다.
    // 생성자에서 만든 엘리먼트를 오버레이 레이어에서 제거합니다.
    TooltipMarker.prototype.onRemove = function() {
        this.node.parentNode.removeChild(this.node);
    };

    // AbstractOverlay의 필수 구현 메소드.
    // 지도의 속성 값들이 변화할 때마다 호출됩니다. (zoom, center, mapType)
    // 엘리먼트의 위치를 재조정 해 주어야 합니다.
    TooltipMarker.prototype.draw = function() {
        // 화면 좌표와 지도의 좌표를 매핑시켜주는 projection객체
        var projection = this.getProjection();
        
        // overlayLayer는 지도와 함께 움직이는 layer이므로
        // 지도 내부의 위치를 반영해주는 pointFromCoords를 사용합니다.
        var point = projection.pointFromCoords(this.position);

        // 내부 엘리먼트의 크기를 얻어서
        var width = this.node.offsetWidth;
        var height = this.node.offsetHeight;

        // 해당 위치의 정중앙에 위치하도록 top, left를 지정합니다.
        this.node.style.left = (point.x - width/2) + "px";
        this.node.style.top = (point.y - height/2) + "px";
    };

    // 좌표를 반환하는 메소드
    TooltipMarker.prototype.getPosition = function() {
        return this.position;
    };

    /**
     * 지도 영역 외부에 존재하는 마커를 추적하는 기능을 가진 객체입니다.
     * 클리핑 알고리즘을 사용하여 tracker의 좌표를 구하고 있습니다.
     */
    function MarkerTracker(map, target) {
        // 클리핑을 위한 outcode
        var OUTCODE = {
            INSIDE: 0, // 0b0000
            TOP: 8, //0b1000
            RIGHT: 2, // 0b0010
            BOTTOM: 4, // 0b0100
            LEFT: 1 // 0b0001
        };
        
        // viewport 영역을 구하기 위한 buffer값
        // target의 크기가 60x60 이므로 
        // 여기서는 지도 bounds에서 상하좌우 30px의 여분을 가진 bounds를 구하기 위해 사용합니다.
        var BOUNDS_BUFFER = 30;
        
        // 클리핑 알고리즘으로 tracker의 좌표를 구하기 위한 buffer값
        // 지도 bounds를 기준으로 상하좌우 buffer값 만큼 축소한 내부 사각형을 구하게 됩니다.
        // 그리고 그 사각형으로 target위치와 지도 중심 사이의 선을 클리핑 합니다.
        // 여기서는 tracker의 크기를 고려하여 40px로 잡습니다.
        var CLIP_BUFFER = 40;

        // trakcer 엘리먼트
        var tracker = document.createElement('div');
        tracker.className = 'tracker';

        // 내부 아이콘
        var icon = document.createElement('div');
        icon.className = 'icon';

        // 외부에 있는 target의 위치에 따라 회전하는 말풍선 모양의 엘리먼트
        var balloon = document.createElement('div');
        balloon.className = 'balloon';

        tracker.appendChild(balloon);
        tracker.appendChild(icon);

        map.getNode().appendChild(tracker);

        // traker를 클릭하면 target의 위치를 지도 중심으로 지정합니다.
        tracker.onclick = function() {
            map.setCenter(target.getPosition());
            setVisible(false);
        };

        // target의 위치를 추적하는 함수
        function tracking() {
            var proj = map.getProjection();
            
            // 지도의 영역을 구합니다.
            var bounds = map.getBounds();
            
            // 지도의 영역을 기준으로 확장된 영역을 구합니다.
            var extBounds = extendBounds(bounds, proj);

            // target이 확장된 영역에 속하는지 판단하고
            if (extBounds.contain(target.getPosition())) {
                // 속하면 tracker를 숨깁니다.
                setVisible(false);
            } else {
                // target이 영역 밖에 있으면 계산을 시작합니다.
                

                // 지도 bounds를 기준으로 클리핑할 top, right, bottom, left를 재계산합니다.
                //
                //  +-------------------------+
                //  | Map Bounds              |
                //  |   +-----------------+   |
                //  |   | Clipping Rect   |   |
                //  |   |                 |   |
                //  |   |        *       (A)  |     A
                //  |   |                 |   |
                //  |   |                 |   |
                //  |   +----(B)---------(C)  |
                //  |                         |
                //  +-------------------------+
                //
                //        B
                //
                //                                       C
                // * 은 지도의 중심,
                // A, B, C가 TooltipMarker의 위치,
                // (A), (B), (C)는 각 TooltipMarker에 대응하는 tracker입니다.
                // 지도 중심과 각 TooltipMarker를 연결하는 선분이 있다고 가정할 때,
                // 그 선분과 Clipping Rect와 만나는 지점의 좌표를 구해서
                // tracker의 위치(top, left)값을 지정해주려고 합니다.
                // tracker 자체의 크기가 있기 때문에 원래 지도 영역보다 안쪽의 가상 영역을 그려
                // 클리핑된 지점을 tracker의 위치로 사용합니다.
                // 실제 tracker의 position은 화면 좌표가 될 것이므로 
                // 계산을 위해 좌표 변환 메소드를 사용하여 모두 화면 좌표로 변환시킵니다.
                
                // TooltipMarker의 위치
                var pos = proj.containerPointFromCoords(target.getPosition());
                
                // 지도 중심의 위치
                var center = proj.containerPointFromCoords(map.getCenter());

                // 현재 보이는 지도의 영역의 남서쪽 화면 좌표
                var sw = proj.containerPointFromCoords(bounds.getSouthWest());
                
                // 현재 보이는 지도의 영역의 북동쪽 화면 좌표
                var ne = proj.containerPointFromCoords(bounds.getNorthEast());
                
                // 클리핑할 가상의 내부 영역을 만듭니다.
                var top = ne.y + CLIP_BUFFER;
                var right = ne.x - CLIP_BUFFER;
                var bottom = sw.y - CLIP_BUFFER;
                var left = sw.x + CLIP_BUFFER;

                // 계산된 모든 좌표를 클리핑 로직에 넣어 좌표를 얻습니다.
                var clipPosition = getClipPosition(top, right, bottom, left, center, pos);
                
                // 클리핑된 좌표를 tracker의 위치로 사용합니다.
                tracker.style.top = clipPosition.y + 'px';
                tracker.style.left = clipPosition.x + 'px';

                // 말풍선의 회전각을 얻습니다.
                var angle = getAngle(center, pos);
                
                // 회전각을 CSS transform을 사용하여 지정합니다.
                // 브라우저 종류에따라 표현되지 않을 수도 있습니다.
                // https://caniuse.com/#feat=transforms2d
                balloon.style.cssText +=
                    '-ms-transform: rotate(' + angle + 'deg);' +
                    '-webkit-transform: rotate(' + angle + 'deg);' +
                    'transform: rotate(' + angle + 'deg);';

                // target이 영역 밖에 있을 경우 tracker를 노출합니다.
                setVisible(true);
            }
        }

        // 상하좌우로 BOUNDS_BUFFER(30px)만큼 bounds를 확장 하는 함수
        //
        //  +-----------------------------+
        //  |              ^              |
        //  |              |              |
        //  |     +-----------------+     |
        //  |     |                 |     |
        //  |     |                 |     |
        //  |  <- |    Map Bounds   | ->  |
        //  |     |                 |     |
        //  |     |                 |     |
        //  |     +-----------------+     |
        //  |              |              |
        //  |              v              |
        //  +-----------------------------+
        //  
        // 여기서는 TooltipMaker가 완전히 안보이게 되는 시점의 영역을 구하기 위해서 사용됩니다.
        // TooltipMarker는 60x60 의 크기를 가지고 있기 때문에 
        // 지도에서 완전히 사라지려면 지도 영역을 상하좌우 30px만큼 더 드래그해야 합니다.
        // 이 함수는 현재 보이는 지도 bounds에서 상하좌우 30px만큼 확장한 bounds를 리턴합니다.
        // 이 확장된 영역은 TooltipMarker가 화면에서 보이는지를 판단하는 영역으로 사용됩니다.
        function extendBounds(bounds, proj) {
            // 주어진 bounds는 지도 좌표 정보로 표현되어 있습니다.
            // 이것을 BOUNDS_BUFFER 픽셀 만큼 확장하기 위해서는
            // 픽셀 단위인 화면 좌표로 변환해야 합니다.
            var sw = proj.pointFromCoords(bounds.getSouthWest());
            var ne = proj.pointFromCoords(bounds.getNorthEast());

            // 확장을 위해 각 좌표에 BOUNDS_BUFFER가 가진 수치만큼 더하거나 빼줍니다.
            sw.x -= BOUNDS_BUFFER;
            sw.y += BOUNDS_BUFFER;

            ne.x += BOUNDS_BUFFER;
            ne.y -= BOUNDS_BUFFER;

            // 그리고나서 다시 지도 좌표로 변환한 extBounds를 리턴합니다.
            // extBounds는 기존의 bounds에서 상하좌우 30px만큼 확장된 영역 객체입니다.  
            return new kakao.maps.LatLngBounds(
                            proj.coordsFromPoint(sw),proj.coordsFromPoint(ne));
            
        }


        // Cohen–Sutherland clipping algorithm
        // 자세한 내용은 아래 위키에서...
        // https://en.wikipedia.org/wiki/Cohen%E2%80%93Sutherland_algorithm
        function getClipPosition(top, right, bottom, left, inner, outer) {
            function calcOutcode(x, y) {
                var outcode = OUTCODE.INSIDE;

                if (x < left) {
                    outcode |= OUTCODE.LEFT;
                } else if (x > right) {
                    outcode |= OUTCODE.RIGHT;
                }

                if (y < top) {
                    outcode |= OUTCODE.TOP;
                } else if (y > bottom) {
                    outcode |= OUTCODE.BOTTOM;
                }

                return outcode;
            }

            var ix = inner.x;
            var iy = inner.y;
            var ox = outer.x;
            var oy = outer.y;

            var code = calcOutcode(ox, oy);

            while(true) {
                if (!code) {
                    break;
                }

                if (code & OUTCODE.TOP) {
                    ox = ox + (ix - ox) / (iy - oy) * (top - oy);
                    oy = top;
                } else if (code & OUTCODE.RIGHT) {
                    oy = oy + (iy - oy) / (ix - ox) * (right - ox);        
                    ox = right;
                } else if (code & OUTCODE.BOTTOM) {
                    ox = ox + (ix - ox) / (iy - oy) * (bottom - oy);
                    oy = bottom;
                } else if (code & OUTCODE.LEFT) {
                    oy = oy + (iy - oy) / (ix - ox) * (left - ox);     
                    ox = left;
                }

                code = calcOutcode(ox, oy);
            }

            return {x: ox, y: oy};
        }

        // 말풍선의 회전각을 구하기 위한 함수
        // 말풍선의 anchor가 TooltipMarker가 있는 방향을 바라보도록 회전시킬 각을 구합니다.
        function getAngle(center, target) {
            var dx = target.x - center.x;
            var dy = center.y - target.y ;
            var deg = Math.atan2( dy , dx ) * 180 / Math.PI; 

            return ((-deg + 360) % 360 | 0) + 90;
        }
        
        // tracker의 보임/숨김을 지정하는 함수
        function setVisible(visible) {
            tracker.style.display = visible ? 'block' : 'none';
        }
        
        // Map 객체의 'zoom_start' 이벤트 핸들러
        function hideTracker() {
            setVisible(false);
        }
        
        // target의 추적을 실행합니다.
        this.run = function() {
            kakao.maps.event.addListener(map, 'zoom_start', hideTracker);
            kakao.maps.event.addListener(map, 'zoom_changed', tracking);
            kakao.maps.event.addListener(map, 'center_changed', tracking);
            tracking();
        };
        
        // target의 추적을 중지합니다.
        this.stop = function() {
            kakao.maps.event.removeListener(map, 'zoom_start', hideTracker);
            kakao.maps.event.removeListener(map, 'zoom_changed', tracking);
            kakao.maps.event.removeListener(map, 'center_changed', tracking);
            setVisible(false);
        };
    }
    var dkpos1 = new kakao.maps.LatLng(35.12197295234195, 126.9361453691268);
    //판교 오피스
    var dkpos2 = new kakao.maps.LatLng(35.12784630507054, 126.93452384874173); 
    //고객 센터
    var dkpos3 = new kakao.maps.LatLng(35.13269254206324, 126.94400367381996);
    var dkpos4 = new kakao.maps.LatLng(35.13499291174574, 126.95307095107525);
    var dkpos5 = new kakao.maps.LatLng(35.13543502373503, 126.92672856323237);

    //툴팁을 노출하는 마커를 생성합니다.
    var marker1 = new TooltipMarker(dkpos1, 'kakao 본사');
    var marker2 = new TooltipMarker(dkpos2, 'kakao 판교오피스');
    var marker3 = new TooltipMarker(dkpos3, 'kakao 고객센터');
    var marker4 = new TooltipMarker(dkpos4, 'kakao 고객센터');
    var marker5 = new TooltipMarker(dkpos5, 'kakao 고객센터');

    //MarkerTracker를 생성합니다.
    var markerTracker1 = new MarkerTracker(map, marker1);
    var markerTracker2 = new MarkerTracker(map, marker2);
    var markerTracker3 = new MarkerTracker(map, marker3);
    var markerTracker4 = new MarkerTracker(map, marker4);
    var markerTracker5 = new MarkerTracker(map, marker5);

    //marker의 추적을 시작합니다.
    markerTracker1.run();
    markerTracker2.run();
    markerTracker3.run();
    markerTracker4.run();
    markerTracker5.run();
    
} else if (type === 'store') { // 편의점 카테고리가 클릭됐을 때

    // 편의점 카테고리를 선택된 스타일로 변경하고
    noinMenu.className = '';
    storeMenu.className = 'menu_selected';
    
    // 편의점 마커들만 지도에 표시하도록 설정합니다
    setnoinMarkers(null);
    setStoreMarkers(map);
    function TooltipMarker(position, tooltipText) {
        this.position = position;
        var node = this.node = document.createElement('div');
        node.className = 'node';

        var tooltip = document.createElement('div');
        tooltip.className = 'tooltip',

        tooltip.appendChild(document.createTextNode(tooltipText));
        node.appendChild(tooltip);
        
        // 툴팁 엘리먼트에 마우스 인터렉션에 따라 보임/숨김 기능을 하도록 이벤트를 등록합니다.
        node.onmouseover = function() {
            tooltip.style.display = 'block';
        };
        node.onmouseout = function() {
            tooltip.style.display = 'none';
        };
    }

    // AbstractOverlay 상속. 프로토타입 체인을 연결합니다.
    TooltipMarker.prototype = new kakao.maps.AbstractOverlay;

    // AbstractOverlay의 필수 구현 메소드.
    // setMap(map)을 호출했을 경우에 수행됩니다.
    // AbstractOverlay의 getPanels() 메소드로 MapPanel 객체를 가져오고
    // 거기에서 오버레이 레이어를 얻어 생성자에서 만든 엘리먼트를 자식 노드로 넣어줍니다.
    TooltipMarker.prototype.onAdd = function() {
        var panel = this.getPanels().overlayLayer;
        panel.appendChild(this.node);
    };

    // AbstractOverlay의 필수 구현 메소드.
    // setMap(null)을 호출했을 경우에 수행됩니다.
    // 생성자에서 만든 엘리먼트를 오버레이 레이어에서 제거합니다.
    TooltipMarker.prototype.onRemove = function() {
        this.node.parentNode.removeChild(this.node);
    };

    // AbstractOverlay의 필수 구현 메소드.
    // 지도의 속성 값들이 변화할 때마다 호출됩니다. (zoom, center, mapType)
    // 엘리먼트의 위치를 재조정 해 주어야 합니다.
    TooltipMarker.prototype.draw = function() {
        // 화면 좌표와 지도의 좌표를 매핑시켜주는 projection객체
        var projection = this.getProjection();
        
        // overlayLayer는 지도와 함께 움직이는 layer이므로
        // 지도 내부의 위치를 반영해주는 pointFromCoords를 사용합니다.
        var point = projection.pointFromCoords(this.position);

        // 내부 엘리먼트의 크기를 얻어서
        var width = this.node.offsetWidth;
        var height = this.node.offsetHeight;

        // 해당 위치의 정중앙에 위치하도록 top, left를 지정합니다.
        this.node.style.left = (point.x - width/2) + "px";
        this.node.style.top = (point.y - height/2) + "px";
    };

    // 좌표를 반환하는 메소드
    TooltipMarker.prototype.getPosition = function() {
        return this.position;
    };

    /**
     * 지도 영역 외부에 존재하는 마커를 추적하는 기능을 가진 객체입니다.
     * 클리핑 알고리즘을 사용하여 tracker의 좌표를 구하고 있습니다.
     */
    function MarkerTracker(map, target) {
        // 클리핑을 위한 outcode
        var OUTCODE = {
            INSIDE: 0, // 0b0000
            TOP: 8, //0b1000
            RIGHT: 2, // 0b0010
            BOTTOM: 4, // 0b0100
            LEFT: 1 // 0b0001
        };
        
        // viewport 영역을 구하기 위한 buffer값
        // target의 크기가 60x60 이므로 
        // 여기서는 지도 bounds에서 상하좌우 30px의 여분을 가진 bounds를 구하기 위해 사용합니다.
        var BOUNDS_BUFFER = 30;
        
        // 클리핑 알고리즘으로 tracker의 좌표를 구하기 위한 buffer값
        // 지도 bounds를 기준으로 상하좌우 buffer값 만큼 축소한 내부 사각형을 구하게 됩니다.
        // 그리고 그 사각형으로 target위치와 지도 중심 사이의 선을 클리핑 합니다.
        // 여기서는 tracker의 크기를 고려하여 40px로 잡습니다.
        var CLIP_BUFFER = 40;

        // trakcer 엘리먼트
        var tracker = document.createElement('div');
        tracker.className = 'tracker';

        // 내부 아이콘
        var icon = document.createElement('div');
        icon.className = 'icon';

        // 외부에 있는 target의 위치에 따라 회전하는 말풍선 모양의 엘리먼트
        var balloon = document.createElement('div');
        balloon.className = 'balloon';

        tracker.appendChild(balloon);
        tracker.appendChild(icon);

        map.getNode().appendChild(tracker);

        // traker를 클릭하면 target의 위치를 지도 중심으로 지정합니다.
        tracker.onclick = function() {
            map.setCenter(target.getPosition());
            setVisible(false);
        };

        // target의 위치를 추적하는 함수
        function tracking() {
            var proj = map.getProjection();
            
            // 지도의 영역을 구합니다.
            var bounds = map.getBounds();
            
            // 지도의 영역을 기준으로 확장된 영역을 구합니다.
            var extBounds = extendBounds(bounds, proj);

            // target이 확장된 영역에 속하는지 판단하고
            if (extBounds.contain(target.getPosition())) {
                // 속하면 tracker를 숨깁니다.
                setVisible(false);
            } else {
                // target이 영역 밖에 있으면 계산을 시작합니다.
                

                // 지도 bounds를 기준으로 클리핑할 top, right, bottom, left를 재계산합니다.
                //
                //  +-------------------------+
                //  | Map Bounds              |
                //  |   +-----------------+   |
                //  |   | Clipping Rect   |   |
                //  |   |                 |   |
                //  |   |        *       (A)  |     A
                //  |   |                 |   |
                //  |   |                 |   |
                //  |   +----(B)---------(C)  |
                //  |                         |
                //  +-------------------------+
                //
                //        B
                //
                //                                       C
                // * 은 지도의 중심,
                // A, B, C가 TooltipMarker의 위치,
                // (A), (B), (C)는 각 TooltipMarker에 대응하는 tracker입니다.
                // 지도 중심과 각 TooltipMarker를 연결하는 선분이 있다고 가정할 때,
                // 그 선분과 Clipping Rect와 만나는 지점의 좌표를 구해서
                // tracker의 위치(top, left)값을 지정해주려고 합니다.
                // tracker 자체의 크기가 있기 때문에 원래 지도 영역보다 안쪽의 가상 영역을 그려
                // 클리핑된 지점을 tracker의 위치로 사용합니다.
                // 실제 tracker의 position은 화면 좌표가 될 것이므로 
                // 계산을 위해 좌표 변환 메소드를 사용하여 모두 화면 좌표로 변환시킵니다.
                
                // TooltipMarker의 위치
                var pos = proj.containerPointFromCoords(target.getPosition());
                
                // 지도 중심의 위치
                var center = proj.containerPointFromCoords(map.getCenter());

                // 현재 보이는 지도의 영역의 남서쪽 화면 좌표
                var sw = proj.containerPointFromCoords(bounds.getSouthWest());
                
                // 현재 보이는 지도의 영역의 북동쪽 화면 좌표
                var ne = proj.containerPointFromCoords(bounds.getNorthEast());
                
                // 클리핑할 가상의 내부 영역을 만듭니다.
                var top = ne.y + CLIP_BUFFER;
                var right = ne.x - CLIP_BUFFER;
                var bottom = sw.y - CLIP_BUFFER;
                var left = sw.x + CLIP_BUFFER;

                // 계산된 모든 좌표를 클리핑 로직에 넣어 좌표를 얻습니다.
                var clipPosition = getClipPosition(top, right, bottom, left, center, pos);
                
                // 클리핑된 좌표를 tracker의 위치로 사용합니다.
                tracker.style.top = clipPosition.y + 'px';
                tracker.style.left = clipPosition.x + 'px';

                // 말풍선의 회전각을 얻습니다.
                var angle = getAngle(center, pos);
                
                // 회전각을 CSS transform을 사용하여 지정합니다.
                // 브라우저 종류에따라 표현되지 않을 수도 있습니다.
                // https://caniuse.com/#feat=transforms2d
                balloon.style.cssText +=
                    '-ms-transform: rotate(' + angle + 'deg);' +
                    '-webkit-transform: rotate(' + angle + 'deg);' +
                    'transform: rotate(' + angle + 'deg);';

                // target이 영역 밖에 있을 경우 tracker를 노출합니다.
                setVisible(true);
            }
        }

        // 상하좌우로 BOUNDS_BUFFER(30px)만큼 bounds를 확장 하는 함수
        //
        //  +-----------------------------+
        //  |              ^              |
        //  |              |              |
        //  |     +-----------------+     |
        //  |     |                 |     |
        //  |     |                 |     |
        //  |  <- |    Map Bounds   | ->  |
        //  |     |                 |     |
        //  |     |                 |     |
        //  |     +-----------------+     |
        //  |              |              |
        //  |              v              |
        //  +-----------------------------+
        //  
        // 여기서는 TooltipMaker가 완전히 안보이게 되는 시점의 영역을 구하기 위해서 사용됩니다.
        // TooltipMarker는 60x60 의 크기를 가지고 있기 때문에 
        // 지도에서 완전히 사라지려면 지도 영역을 상하좌우 30px만큼 더 드래그해야 합니다.
        // 이 함수는 현재 보이는 지도 bounds에서 상하좌우 30px만큼 확장한 bounds를 리턴합니다.
        // 이 확장된 영역은 TooltipMarker가 화면에서 보이는지를 판단하는 영역으로 사용됩니다.
        function extendBounds(bounds, proj) {
            // 주어진 bounds는 지도 좌표 정보로 표현되어 있습니다.
            // 이것을 BOUNDS_BUFFER 픽셀 만큼 확장하기 위해서는
            // 픽셀 단위인 화면 좌표로 변환해야 합니다.
            var sw = proj.pointFromCoords(bounds.getSouthWest());
            var ne = proj.pointFromCoords(bounds.getNorthEast());

            // 확장을 위해 각 좌표에 BOUNDS_BUFFER가 가진 수치만큼 더하거나 빼줍니다.
            sw.x -= BOUNDS_BUFFER;
            sw.y += BOUNDS_BUFFER;

            ne.x += BOUNDS_BUFFER;
            ne.y -= BOUNDS_BUFFER;

            // 그리고나서 다시 지도 좌표로 변환한 extBounds를 리턴합니다.
            // extBounds는 기존의 bounds에서 상하좌우 30px만큼 확장된 영역 객체입니다.  
            return new kakao.maps.LatLngBounds(
                            proj.coordsFromPoint(sw),proj.coordsFromPoint(ne));
            
        }


        // Cohen–Sutherland clipping algorithm
        // 자세한 내용은 아래 위키에서...
        // https://en.wikipedia.org/wiki/Cohen%E2%80%93Sutherland_algorithm
        function getClipPosition(top, right, bottom, left, inner, outer) {
            function calcOutcode(x, y) {
                var outcode = OUTCODE.INSIDE;

                if (x < left) {
                    outcode |= OUTCODE.LEFT;
                } else if (x > right) {
                    outcode |= OUTCODE.RIGHT;
                }

                if (y < top) {
                    outcode |= OUTCODE.TOP;
                } else if (y > bottom) {
                    outcode |= OUTCODE.BOTTOM;
                }

                return outcode;
            }

            var ix = inner.x;
            var iy = inner.y;
            var ox = outer.x;
            var oy = outer.y;

            var code = calcOutcode(ox, oy);

            while(true) {
                if (!code) {
                    break;
                }

                if (code & OUTCODE.TOP) {
                    ox = ox + (ix - ox) / (iy - oy) * (top - oy);
                    oy = top;
                } else if (code & OUTCODE.RIGHT) {
                    oy = oy + (iy - oy) / (ix - ox) * (right - ox);        
                    ox = right;
                } else if (code & OUTCODE.BOTTOM) {
                    ox = ox + (ix - ox) / (iy - oy) * (bottom - oy);
                    oy = bottom;
                } else if (code & OUTCODE.LEFT) {
                    oy = oy + (iy - oy) / (ix - ox) * (left - ox);     
                    ox = left;
                }

                code = calcOutcode(ox, oy);
            }

            return {x: ox, y: oy};
        }

        // 말풍선의 회전각을 구하기 위한 함수
        // 말풍선의 anchor가 TooltipMarker가 있는 방향을 바라보도록 회전시킬 각을 구합니다.
        function getAngle(center, target) {
            var dx = target.x - center.x;
            var dy = center.y - target.y ;
            var deg = Math.atan2( dy , dx ) * 180 / Math.PI; 

            return ((-deg + 360) % 360 | 0) + 90;
        }
        
        // tracker의 보임/숨김을 지정하는 함수
        function setVisible(visible) {
            tracker.style.display = visible ? 'block' : 'none';
        }
        
        // Map 객체의 'zoom_start' 이벤트 핸들러
        function hideTracker() {
            setVisible(false);
        }
        
        // target의 추적을 실행합니다.
        this.run = function() {
            kakao.maps.event.addListener(map, 'zoom_start', hideTracker);
            kakao.maps.event.addListener(map, 'zoom_changed', tracking);
            kakao.maps.event.addListener(map, 'center_changed', tracking);
            tracking();
        };
        
        // target의 추적을 중지합니다.
        this.stop = function() {
            kakao.maps.event.removeListener(map, 'zoom_start', hideTracker);
            kakao.maps.event.removeListener(map, 'zoom_changed', tracking);
            kakao.maps.event.removeListener(map, 'center_changed', tracking);
            setVisible(false);
        };
    }
    var dkpos1 = new kakao.maps.LatLng(35.12197295234195, 126.9361453691268);
    //판교 오피스
    var dkpos2 = new kakao.maps.LatLng(35.12784630507054, 126.93452384874173); 
    //고객 센터
    var dkpos3 = new kakao.maps.LatLng(35.13269254206324, 126.94400367381996);
    var dkpos4 = new kakao.maps.LatLng(35.13499291174574, 126.95307095107525);
    var dkpos5 = new kakao.maps.LatLng(35.13543502373503, 126.92672856323237);

    //툴팁을 노출하는 마커를 생성합니다.
    var marker1 = new TooltipMarker(dkpos1, 'kakao 본사');
    var marker2 = new TooltipMarker(dkpos2, 'kakao 판교오피스');
    var marker3 = new TooltipMarker(dkpos3, 'kakao 고객센터');
    var marker4 = new TooltipMarker(dkpos4, 'kakao 고객센터');
    var marker5 = new TooltipMarker(dkpos5, 'kakao 고객센터');

    //MarkerTracker를 생성합니다.
    var markerTracker1 = new MarkerTracker(map, marker1);
    var markerTracker2 = new MarkerTracker(map, marker2);
    var markerTracker3 = new MarkerTracker(map, marker3);
    var markerTracker4 = new MarkerTracker(map, marker4);
    var markerTracker5 = new MarkerTracker(map, marker5);

    //marker의 추적을 시작합니다.
    markerTracker1.run();
    markerTracker2.run();
    markerTracker3.run();
    markerTracker4.run();
    markerTracker5.run();
    
}}

</script>
  </body>
</html>