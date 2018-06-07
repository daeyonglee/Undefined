<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://www.jqueryscript.net/css/top.css" rel="stylesheet"
  type="text/css">
<title>업체 검색</title>
</head>


<!-- 탭 -->
<style>
.controls {
	margin-top: 10px;
	border: 1px solid transparent;
	border-radius: 2px 0 0 2px;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	height: 32px;
	outline: none;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
}

#pac-input {
	background-color: #fff;
	font-family: Roboto;
	font-size: 15px;
	font-weight: 300;
	margin-left: 12px;
	padding: 0 11px 0 13px;
	text-overflow: ellipsis;
	width: 300px;
}

#pac-input:focus {
	border-color: #4d90fe;
}

.pac-container {
	font-family: Roboto;
}

#type-selector {
	color: #fff;
	background-color: #4d90fe;
	padding: 5px 11px 0px 11px;
}

#type-selector label {
	font-family: Roboto;
	font-size: 13px;
	font-weight: 300;
}

#target {
	width: 345px;
}

/* Style the tab */
.tab {
	overflow: hidden;
	border: 1px solid #fff;
	background-color: #fff;
}

/* Style the buttons inside the tab */
.tab button {
	background-color: inherit;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 5px 10px;
	transition: 0.3s;
	font-size: 13px;
}

/* Change background color of buttons on hover */
.tab button:hover {
	background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
	background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
	display: none;
	padding: 6px 12px;
	border: 1px solid #fff;
	border-top: none;
}
</style>

<!-- 메뉴,지도 고정 -->
<style type="text/css">
#layer_top {
	height: 100px;
	width: 100%;
	position: fixed;
	z-index: 999;
	background-color: #fff;
}

#layer_map {
	height: 0px;
	width: 83%;
	position: fixed;
	z-index: 777;
	top: 130px;
	left: 65%;
	right: 50%
}

#layer_con {
	padding-top: 125px;
}
</style>

<!-- 인포윈도우 스타일 -->
<style type="text/css">
  .hall_box{overflow:hidden}
.hall_box img{float:left;width:170px;height:139px;margin-right:13px}
.hall_box .hall_detail{float:left;height:100%}
.hall_box .hall_detail dl{margin-bottom:25px;font-size:15px;color:#515151;font-weight:bold;}
.hall_box .hall_detail dl dt a{font-size:10px;color:#2a2a2a;font-weight:bold}
.hall_box .hall_detail dl dd{color:#FF7268;font-size:11px;margin-top:-15px}
.hall_box .hall_detail li{color:#515151;font-size:11px;max-width:150px;margin-top:-10px}
.hall_box .hall_detail li span{float:right}
  .load{position:relative}
  .load .loadimg{position:absolute;left:50%;top:50%;margin-left:-63px;margin-top:-63px}
  </style>
  
  <style type="text/css">
  .search{margin-bottom:20px;}
  </style>

<body onload="initialize()">


  <div id="layer_top">
    <%@include file="../include/top.jsp"%>
  </div>



  <!-- property area -->
  <div id="layer_con">
    <div class="properties-area recent-property"
      style="background-color: #FFF;">
      <div class="container">
        <div class="row">

<script type="text/javascript">
</script>

          <!-- 컨텐츠 시작 -->
          <div class="col-md-9 padding-top-40 properties-page">
            <div class="section clear">
              <div class="col-xs-10 page-subheader sorting pl0">
                 <button type="button" disabled>STUDIO</button>     
                 <a href="dress"><button type="button">DRESS</button></a>
                 <a href="makeup"><button type="button">MAKEUP</button></a>   
                
          <script type="text/javascript">
//          $(document).ready(function() {
 //    			 $("button").click(function() {
 //    			   $("#result").load("dress #session01");  
//      })
 //   })
          </script>

               
              
              </div>

  
            </div>
            <!-- 왼쪽 컨테이너 -->
            <div class="section clear">
              <div id="list-type" class="proerty-th">

                 
         <c:forEach items="${list}" var="studio" varStatus="status">

                  <div class="col-sm-6 col-md-4 p0">
                    <div class="box-two proerty-item">
                      <div class="item-thumb">


                
                        <div id="myCarousel" class="carousel slide"
                          data-ride="carousel">
                          <ol class="carousel-indicators">
                            <li data-target="#myCarousel"
                              data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel"
                              data-slide-to="1"></li>
                            <li data-target="#myCarousel"
                              data-slide-to="2"></li>
                          </ol>

                          <div class="carousel-inner">
                            <div class="item active">
                              <img
                                src="http://iwedding.co.kr/center/website/brandplus/6285/721-N153_141014032549_1.jpg"
                                alt="Los Angeles" style="width: 100%;">
                            </div>

                            <div class="item">
                              <img src="chicago.jpg" alt="Chicago"
                                style="width: 100%;">
                            </div>

                            <div class="item">
                              <img src="ny.jpg" alt="New york"
                                style="width: 100%;">
                            </div>
                          </div>

                          <a class="left carousel-control"
                            href="#myCarousel" data-slide="prev"> <span
                            class="glyphicon glyphicon-chevron-left"></span>
                            <span class="sr-only">Previous</span>
                          </a> <a class="right carousel-control"
                            href="#myCarousel" data-slide="next"> <span
                            class="glyphicon glyphicon-chevron-right"></span>
                            <span class="sr-only">Next</span>
                          </a>
                        </div>
                      </div>

                      <div class="item-entry overflow">
                        <h5>
                          <a
                            href="/company/compare?companyNo=${studio.companyNo}">
                            ${studio.nm} </a>
                        </h5>
                        <div class="dot-hr"></div>
                        <span class="proerty-price pull-left">
                          ★★★ </span> 3.0/5.0 (20명) <br>
            
            <c:choose>
           <c:when test="${fn:length(studio.introduce) > 30}">
                        <div class=""><c:out value="${fn:substring(studio.introduce,0,29)}"/> ... </div>
                          </c:when>
                             <c:otherwise>
                              <c:out value="${studio.introduce}"/>
                               </c:otherwise> 
                                    </c:choose>   
                      </div>
                    </div>
                  </div>
            
</c:forEach>
              </div>
            </div>
          <!-- 페이징 처리 -->
            <div class="section">
              <div class="pull-left">
                <div class="pagination">
                  <ul>
                	<c:if test="${pageMaker.prev}">
						<li><a href="${pageMaker.startPage - 1}">&laquo;</a></li>
					</c:if>

					<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
								<li
									<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="${idx}">${idx}</a>
								</li>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="${pageMaker.endPage +1}">&raquo;</a></li>
							</c:if>
                  </ul>
                </div>
              </div>
            </div>


          </div>
        </div>
        

        <!-- 리스트 끝 -->

        <!-- 사이드바  -->

        <div id="layer_map">
          <div class="col-md-3 pl0 padding-top-40">
            <div class="blog-asside-right pl0">
              <div class="panel panel-default sidebar-menu wow fadeInRight animated">
              <!-- 업체검색 -->
              <div class="search">            
                <form role="search">
                                    <div class="input-group">
                                        <input class="form-control" placeholder="Search" type="text">
                                        <span class="input-group-btn">
                                            <button type="submit" class="btn btn-smal">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </span>
                                    </div>
                                </form>
                                </div>
                <!-- 지도시작 -->

                <div id="map" style="width: 100%; height: 650px;"></div>


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
					zoom : 9,
					center : latlng,
					mapTypeId : google.maps.MapTypeId.ROADMAP
				};
				var map = new google.maps.Map(document.getElementById("map"),
						myOptions);

				var geocoder = new google.maps.Geocoder();

				var region = document.getElementById("mapList").value.split(",");
				var name = document.getElementById("nameList").value.split(",");
				
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
													var address = "주소";
													var image = "대표이미지";
													var infowin = '';
													infowin += '<div class="hall_box">';
													infowin += '<img src = "http://iwedding.co.kr/center/website/brandplus/6285/721-N153_141014032549_1.jpg">'
													infowin += '<div class="hall_detail">';

													infowin += '<dl>'+name[n]+'</dl>';
													infowin += '<dl><dd>'+address+'</dd></dl>';
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

													
													google.map.event.addListener(map,"zoom_changed", finction(){
														zoomChangedBoundsListner = google.map.event.addListener(map, "bounds_changed", function(event) {
															if(this.getZoom() > 12)
																this.setZoom(12);
															google.maps.event.removeListener(zoomChangeBoundListner);
															
														});
														
													});
													
													}
												}
											} else {
												alert("ERRER - region[" + i
														+ "] : " + region[i]);
												alert("Geocode was not successful for the following reason: "
														+ status);
											}
										});
					}
				}

				}
		</script>
    
    <!-- 마커 장소 찍기 -->
    
           <input type="hidden" id="mapList"
               value= "
                 <c:forEach items="${list}" var="studio" varStatus="index">
                    <c:choose>
                      <c:when test="${index.last}">${studio.addr}</c:when>
                      <c:otherwise>${studio.addr},</c:otherwise>
                    </c:choose>
                 </c:forEach>
               " />

           <input type="hidden" id="nameList"
               value= "
                 <c:forEach items="${list}" var="studio" varStatus="index">
                    <c:choose>
                      <c:when test="${index.last}">${studio.nm}</c:when>
                      <c:otherwise>${studio.nm},</c:otherwise>
                    </c:choose>
                 </c:forEach>
               " />
                <!-- 구글맵 key -->
                <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCEd3UEpvjDZcH8FLF2eO4SJvDAdp2IByY&callback=initMap"></script>

              </div>
            </div>
          </div>
        </div>

        <!-- 지도 끝 -->
      </div>
    </div>
  </div>


</body>
</html>