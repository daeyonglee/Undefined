<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/assets/css/lightslider.min.css">
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://www.jqueryscript.net/css/top.css" rel="stylesheet"
  type="text/css">
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	font-family: "Lato", sans-serif;
}

.sidenav {
	height: 100%;
	width: 0;
	position: fixed;
	z-index: 1;
	top: 0;
	right: 0;
	background-color: #111;
	overflow-x: hidden;
	transition: 0.5s;
	padding-top: 60px;
}

.sidenav a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 25px;
	color: #818181;
	display: block;
	transition: 0.3s;
}

.sidenav a:hover {
	color: #f1f1f1;
}

.sidenav .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	margin-left: 50px;
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}

.checked {
	color: orange;
}

/* 떠다니는 메뉴 (Floating Menu) */
#floatdiv {
	position: fixed;
	_position: absolute;
	_z-index: -1;
	width: 170px;
	overflow: hidden;
	left: 0px;
	top: 50%;
	background-color: transparent;
	margin: 0;
	padding: 0;
}

#floatdiv ul {
	list-style: none;
}

#floatdiv li {
	margin-bottom: 2px;
	text-align: center;
}

#floatdiv a {
	color: #5D5D5D;
	border: 0;
	text-decoration: none;
	display: block;
}

#floatdiv a:hover, #floatdiv .menu {
	background-color: #5D5D5D;
	color: #fff;
}

#floatdiv .menu, #floatdiv .last {
	margin-bottom: 0px;
}

#imgBorder {
    border: 3px double white;
    
    
    margin: 0 auto;
}

.btn btn-primary btn-lg {
    margin: 0 auto;
}
</style>

<title></title>
</head>
<body onload="initialize()">

  <jsp:include page="../include/top.jsp" />

  <form role="form" method="post">
    <input type='hidden' name='companyNo'
      value="${stuidoCompany.companyNo}">
  </form>

  <div class="page-head">
    <div class="container">
      <div class="row">
        <div class="page-head-content">
          <h1 class="page-title" align="center">${studioCompany.nm}</h1>
        </div>
      </div>
    </div>
  </div>
  <!-- End page header -->

  <!-- property area -->
  <div class="content-area single-property"
    style="background-color: #FCFCFC;">
    <div class="container">

      <div class="clearfix padding-top-40">
        <div class="col-md-8 single-property-content ">
          <div class="row">
            <div class="light-slide-item">
              <div class="clearfix">
                <div class="favorite-and-print">
                  <a class="add-to-fav" href="#login-modal"
                    data-toggle="modal"> <i id="favorite" class="fa fa-star-o"></i>
                  </a> <a class="printer-icon "
                    href="javascript:window.print()"> <i
                    class="fa fa-print"></i>
                  </a>
                </div>

                <ul id="image-gallery"
                  class="gallery list-unstyled cS-hidden">
                  <li
                    data-thumb="/resources/assets/img/property-1/property1.jpg">
                    <img
                    src="/resources/assets/img/property-1/property1.jpg" />
                  </li>
                  <li
                    data-thumb="/resources/assets/img/property-1/property4.jpg">
                    <img
                    src="/resources/assets/img/property-1/property4.jpg" />
                  </li>
                  <li
                    data-thumb="/resources/assets/img/property-1/property3.jpg">
                    <img
                    src="/resources/assets/img/property-1/property3.jpg" />
                  </li>
                  <li
                    data-thumb="/resources/assets/img/property-1/property4.jpg">
                    <img
                    src="/resources/assets/img/property-1/property4.jpg" />
                  </li>
                </ul>
              </div>
            </div>
          </div>

          <div class="single-property-wrapper">
            <div class="single-property-header">
              <h1 class="property-title pull-left" style="color: black">"${studioCompany.intro}"</h1>
              <span class="star-prototype">"${point}"</span>
              <span class="property-price pull-right"> <span
                class="fa fa-star checked"></span> 
                <span>"${studioCompany.point}"</span>
                <span
                class="fa fa-star checked"></span> <span
                class="fa fa-star checked"></span> <span
                class="fa fa-star"></span> <span class="fa fa-star"></span>
              </span>
            </div>

<script>
	var locked = 0;
	
	function show(point) {
		if (locked)
			return;
		var i;
		var image;
		var el;
		var e = document.getElementById('startext');
		var stateMsg;
		
		for (i=1; i<=point; i++) {
			image = 'image' + i;
			el = document.getElementById(image);
			el.src = "/resources/images/full.png";
		}
		
		switch (point) {
		case 1:
			stateMsg = "진짜 별로네요";
			break;
		case 2:
			stateMsg = "별로에요";
			break;
		case 3:
			stateMsg = "보통입니다";
			break;
		case 4:
			stateMsg = "좋아요!";
			break;
		case 5:
			stateMsg = "최고입니다 이 업체";
			break;
		default:
			stateMsg = "";
		}
		e.innerHTML = stateMsg;
	}
	
	function noshow(point) {
		if (locked)
			return;
		var i;
		var image;
		var el;
		
		for (i=1; i<=point; i++) {
			image = 'image' + i;
			el = document.getElementById(image);
			el.src = "/resources/images/empty.png";
		}
	}
	
	function lock(point) {
		show(point);
		locked = 1;
	}
	
	function mark(point) {
		lock(point);
		document.starting.point.value=point;
	}
</script>

            <div class="section">
              <h4 class="s-property-title">리얼후기</h4>
              <div class="s-property-content">
                <form action="/company/review" method="post" name="starting">
                <input type='hidden' name='companyNo' value="${studioCompany.companyNo}"> 
                <table>
                  <tr>
                    <td colspan="2">
                        <div id="rating">
                         <span>
                          <img id=image1 onmouseover=show(1) onclick=mark(1) onmouseout=noshow(1) src="/resources/images/empty.png"> 
                          <img id=image2 onmouseover=show(2) onclick=mark(2) onmouseout=noshow(2) src="/resources/images/empty.png">
                          <img id=image3 onmouseover=show(3) onclick=mark(3) onmouseout=noshow(3) src="/resources/images/empty.png"> 
                          <img id=image4 onmouseover=show(4) onclick=mark(4) onmouseout=noshow(4) src="/resources/images/empty.png"> 
                          <img id=image5 onmouseover=show(5) onclick=mark(5) onmouseout=noshow(5) src="/resources/images/empty.png"> 
                         </span>
                         <br/><span id="startext">평가하기</span>
                        </div>
                        <input type="hidden" name="point"/>  
                    </td>
                    <td><input type="submit" value="후기남기기"/></td>
                  </tr>
                  <tr>
                    <td><textarea name="content"></textarea></td>
                  </tr>
                </table>
                </form> 
                <p>Nulla ed</p>
                <table class="table table-hover">
                  <thead>
                    <tr>
                      <th>글번호</th>
                      <th>상품평</th>
                      <th>별점</th>
                      <th>등록일</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach items="${list}" var="studioReview">
                      <tr>
                        <td>${studioReview.no}</td>
                        <td>${studioReview.content}</td>
                        <td>${studioReview.point}</td>
                        <td>${studioReview.regdate}</td>
                      </tr>
                    </c:forEach>
                  </tbody>
                </table>

              </div>
            </div>
            <!-- End description area  -->


          </div>
        </div>

        <div class="col-md-4 p0">
          <aside class="sidebar sidebar-property blog-asside-right">
            <div class="dealer-widget">
              <div class="dealer-content">
                <div class="inner-wrapper">

                  <div class="clear">
                    <div class="col-xs-4 col-sm-4 dealer-face">
                      <a href=""> <img
                        src="/resources/assets/img/client-face1.png"
                        class="img-circle">
                      </a>
                    </div>
                    <div class="col-xs-8 col-sm-8 ">
                      <h3 class="dealer-name">
                        <a href="">대표: ${studioCompany.headName}</a><br>
                        <span>사업자 : ${studioCompany.regNo}</span>
                      </h3>
                      <div class="dealer-social-media">
                        <a class="twitter" target="_blank" href="">
                          <i class="fa fa-twitter"></i>
                        </a> <a class="facebook" target="_blank" href="">
                          <i class="fa fa-facebook"></i>
                        </a> <a class="gplus" target="_blank" href=""> <i
                          class="fa fa-google-plus"></i>
                        </a> <a class="linkedin" target="_blank" href="">
                          <i class="fa fa-linkedin"></i>
                        </a> <a class="instagram" target="_blank" href="">
                          <i class="fa fa-instagram"></i>
                        </a>
                      </div>

                    </div>
                  </div>

                  <div class="clear">
                    <ul class="dealer-contacts">
                      <li><i class="pe-7s-map-marker strong"> </i>${studioCompany.addr}</li>
                      <li><i class="pe-7s-mail strong"> </i>${studioCompany.email}</li>
                      <li><i class="pe-7s-call strong"> </i>${studioCompany.tel}</li>
                    </ul>
                    <p style="color: black">${studioCompany.introduce}</p>



<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script>
$(function() {
	$("#jqueryComp").click(function(event){
		$("#floatdiv").css("color", "red");
	});
});

function disabled() {
	$("input[name=next]").attr("disabled", true);
	$("input[name=next]").attr("readonly", true);
	document.frm.submit.disabled = true;
}

</script>

                    <form method="post" action="/company/add" name="frm">
                      <input type='hidden' name='companyNo' value="${studioCompany.companyNo}"> 
                      <input type='hidden' name='nm' value="${studioCompany.nm}">
                    
                       
                       <c:set value="${studioCompany.companyNo}" var="comp"/>
                       <c:forEach items="${cart}" var="dto">
                       <c:choose>
                       <c:when test="${dto.companyNo eq comp}"><input type='submit' id='jqueryComp' class='btn btn-next btn-primary' name='next' value='비교업체 등록' disabled='disabled'/></c:when>
                       <c:when test="${dto.companyNo ne comp}"><input type='submit' id='jqueryComp' class='btn btn-next btn-primary' name='next' value='비교업체 등록'/></c:when>
                       </c:choose>
                       </c:forEach>
                         
          
                    </form>
 
                  </div>

                </div>
              </div>
            </div>

            <div
              class="panel panel-default sidebar-menu similar-property-wdg wow fadeInRight animated">


<!-- 지도시작 -->

              <div id="map" style="width: 100%; height: 700px;"></div>


              <script>
      var x = "37.4837121";
      var y = "127.0324112";
      //전국에 대한 중심 좌표(지도 중심 좌표 설정-변경 해도 됨)

      var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/parking_lot_maps.png';
      
      
      function initialize() {
        var latlng = new google.maps.LatLng(x, y);
        //map center coordinate (맵 중심 좌표)
        //좌표 객체를 이렇게 만든다. marker 를 만들때도
        //이렇게 객체를 만들어서 사용할 수 있다.
        var myOptions = {
          zoom : 11,
          center : latlng,
          mapTypeId : google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map"),
            myOptions);

        var geocoder = new google.maps.Geocoder();

        var region = document.getElementById("mapList").value;
        
        //마커를 올릴 지역을 가져온다.
        if (region.length > 0) {
          for (var i = 0; i < region.length; i++) {
            geocoder.geocode( 
                    {
                      'address' : region[i]
                    },
                    function(results, status) {
                      //지오 코딩이라는 지역 이름을 가지고 좌표를 얻을 수 있는 API 를 이용하여 좌표를 가져온다.
                      if (status == google.maps.GeocoderStatus.OK) {
                        for (var j = 0; j < results.length; j++) {
                          // 마커 속성 설정하기
                          var marker = new google.maps.Marker(        
                              {
                                position : results[j].geometry.location,
                                title : results[j].formatted_address,
                                map : map,
                                //icon : iconBase
                              });
                          if (status === google.maps.GeocoderStatus.OVER_QUERY_LIMIT) {    
                                setTimeout(function() {
                                       codeAddress(address);
                                    }, 200);
                              }
                          
                        //마커를 만들어 준다.

              //좌표를 알고 있을 경우   position: results[j].geometry.location 부분에 var latlng = new google.maps.LatLng(x, y); 

              //와 같이 객체를 만들어서 position: latlng 를 넣어 준다.

                for (var n = 0; n < name.length; n++) {

              var infoWindow = new google.maps.InfoWindow;

              var address = "${studioCompany.addr}";

              var image = "대표이미지";

              var infowin = '';

              infowin += '<div class="hall_box">';

              infowin += '<img src = "http://iwedding.co.kr/center/website/brandplus/6285/721-N153_141014032549_1.jpg">'

              infowin += '<div class="hall_detail">';

              infowin += '<dl>가게이름</dl>';

              infowin += '<dl><dd>주소</dd></dl>';

              infowin += '<li class="clear_fix">느와르 블랑 스튜디오입니다. 사진찍는 것을 두려워 하지 마세요. 당신의 아름다운 모습을 찾아드립니다.</li>'

              infowin += '</div>';

                

              // 마커 클릭 이벤트

              google.maps.event.addListener(

                      marker,

                      'click',

                      function() {

                        infoWindow.setContent(infowin);

                        infoWindow.open(map,marker);

                        maxWidth: 200

                      });

              

              }

            }

            

          } 

        });
          }
        }
      }
    </script>

              <input type="hidden" id="mapList"
                value="${studioCompany.addr}" />


              <!-- 구글맵 key -->
              <script async defer
                src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCEd3UEpvjDZcH8FLF2eO4SJvDAdp2IByY&callback=initMap"></script>

              <!-- 지도 끝 -->








            </div>
          </aside>
        </div>
      </div>

    </div>
  </div>


  <script type="text/javascript"
    src="/resources/assets/js/lightslider.min.js"></script>


  <script>
			$(document).ready(function() {

				$('#image-gallery').lightSlider({
					gallery : true,
					item : 1,
					thumbItem : 9,
					slideMargin : 0,
					speed : 500,
					auto : true,
					loop : true,
					onSliderLoad : function() {
						$('#image-gallery').removeClass('cS-hidden');
					}
				});
			});
		</script>


  <div id="mySidenav" class="sidenav">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <a style="color: white">비교업체 리스트</a><br/>
    
    <c:forEach items="${cart}" var="studioCompany">
      <img src="/resources/assets/img/property-1/property1.jpg" id="imgBorder" class="img-responsive" width="90%" alt="">
      <h4 align="center" style="color: white">${studioCompany.nm}</h4>
      <br/>
    </c:forEach>

    <button type="button" id="compButton" class="btn btn-primary btn-lg"
      data-toggle="modal" data-target="#myModal">비교하기</button>
  </div>

  <p>
    <span id="floatdiv" class="glyphicon glyphicon-chevron-left"
      style="color: #d46a40; font-size: 30px; cursor: pointer; left: 60em"
      onclick="openNav()"></span>
  </p>

  <!--  span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; open</span-->

  <script>
			function openNav() {
				document.getElementById("mySidenav").style.width = "250px";
			}

			function closeNav() {
				document.getElementById("mySidenav").style.width = "0";
			}
		</script>


  <!-- Modal -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
    aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"
            aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="modal-title" id="myModalLabel">비교하기</h4>
        </div>
        <div class="modal-body">...</div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default"
            data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save
            changes</button>
        </div>
      </div>
    </div>
  </div>

  <jsp:include page="../include/bottom.jsp" />


</body>
</html>

