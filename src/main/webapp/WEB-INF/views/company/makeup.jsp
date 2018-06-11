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
.gm-style-iw {
  overflow: auto !important;
  max-width:200px;
  max-height:200px;
}
.gm-style-iw > div {
  overflow: auto !important;
  max-width:200px;
  max-height:200px;
  }
  .hall_box{overflow:hidden;max-width:200px;max-height:200px;}
  
.hall_box img{float:left;width:80px;height:80px;margin-right:13px}
.hall_box .hall_detail{float:left;max-width:150x}
.hall_box .hall_detail dl{margin-bottom:25px;font-size:15px;color:#515151;font-weight:bold;}
.hall_box .hall_detail dl dt a{font-size:10px;color:#2a2a2a;font-weight:bold}
.hall_box .hall_detail dl dd{color:#FF7268;font-size:12px;margin-top:-15px}
.hall_box .hall_detail dt{color:#515151;font-size:11px;margin-top:-25px}
.hall_box .hall_detail li{color:#515151;font-size:11px;max-width:150px;margin-top:-10px}
.hall_box .hall_detail li span{float:right}
  .load{position:relative}
  .load .loadimg{position:absolute;left:50%;top:50%;margin-left:-63px;margin-top:-63px}
  </style>
  
  <style type="text/css">
  .search{margin-bottom:20px;}
  </style>

<!-- 별 스타일  -->
<style>
span.star-prototype, span.star-prototype>* {
	height: 16px;
	background: url(http://i.imgur.com/YsyS5y8.png) 0 -16px repeat-x;
	width: 80px;
	display: inline-block;
}

span.star-prototype>* {
	background-position: 0 0;
	max-width: 80px;
}
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
                  <a href="slist"> <button type="button">STUDIO</button>  </a>   
                 <a href="dress"> <button type="button">DRESS</button></a>
               <button type="button" disabled>MAKEUP</button>
               </div>
               
           <!-- 그리드 스위치 부분 -->
              <div class="col-xs-2 layout-switcher">
                <a class="layout-grid active" href="javamcript:void(0);"> <i class="fa fa-th"></i> </a>     
                <a class="layout-list" href="javamcript:void(0);"> <i class="fa fa-th-list"></i>  </a>                     
             </div>               
              
  
            </div>
            <!-- 왼쪽 컨테이너 -->
            <div class="section clear">
              <div id="list-type" class="proerty-th">

            <!-- 별 생성 스크립트 -->
            <script>
            
            $.fn.generateStars = function() {
                return this.each(function(i,e){$(e).html($('<span/>').width($(e).text()*16));});
            };
            </script>
            
            <script>
            $(function(){
            $('.star-prototype').generateStars();
            });
            </script>
            
               
           <!-- 업체 리스트 박스 -->
          <div class="col-md-12 clear"> 
        	<div id="list-type" class="proerty-th">
          
           <c:forEach items="${makeuplist}" var="makeup" varStatus="status">
        		<div class="col-sm-6 col-md-4 p0">
    
				<div class="box-two proerty-item">
					<div class="item-thumb">
						<a href="/company/makeup/makeupDetail?mc_no=${makeup.mc_no}"><img src="/user/mypage/imgview?imgview=${makeup.mc_main_image}"></a>
					</div>

					<div class="item-entry overflow">
						<h5><a href="/company/makeup/makeupDetail?mc_no=${makeup.mc_no}"> ${makeup.mc_nm} </a></h5>
						<div class="dot-hr"></div>
						  <span class="pull-left">
                            <span class="star-prototype">${makeup.avg }</span>
                            ${makeup.avg } 점 (${makeup.count}명) </span> <br>
                           
                           <span class="pull-left">
                             <c:choose>
                               <c:when test="${fn:length(makeup.mc_smy_intro) < 1}">
                               <div class=""> 등록된 소개말이 없습니다. </div> 
                              </c:when>
                             <c:otherwise>
                              <div class=""><c:out value="${makeup.mc_smy_intro}"/> </div>
                               </c:otherwise> 
                               </c:choose>   
                             </span>
						  <p style="display: none;">${makeup.mc_introduce }</p>
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
									<a href="makeup?page=${idx}">${idx}</a>
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
               <div class="searchType">
                <select name="selectBox" id="selectBox">
                  <option value="addr"
                  <c:out value="${cri.searchType eq 'addr'?'selected':''}"/>>
                    위치</option>
                  <option value="name" 
                    <c:out value="${cri.searchType eq 'name'?'selected':''}"/>>
                    업체명</option>
                 </select>
                 
                           
                   <div class="input-group">
                      <input class="form-control" name='keyword' id="keywordInput" placeholder="Search" type="text"
                         value='${cri.keyword}'>
                           <span class="input-group-btn">
                                <button id='searchBtn' class="btn btn-smal">
                                     <i class="fa fa-search"></i>
                                        </button>
                                        </span>
                                    </div>
                                </div>
                                
                                
  <script>
  $(document).ready(
      function() {

        $('#searchBtn').on(
            "click",
            function(event) {
              self.location = "makeup"
          + '${pageMaker.makeQuery(1)}'
          + "&searchType=" + $("select option:selected").val()
          + "&keyword=" + $('#keywordInput').val();
            });
        });

</script>                              
                                          
                                
                                
                                
                                
                               
  <!-- 지도시작 -->

                <div id="map" style="width: 100%; height: 650px;"></div>


                <script>
                
			var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/parking_lot_maps.png';
			
			function initialize() {
				
				var myOptions = {
					zoom : 10,
					center : new google.maps.LatLng(37.4837121, 127.0324112),
					mapTypeId : google.maps.MapTypeId.ROADMAP,
					zoomControl: true,
			        zoomControlOptions: {
			            style: google.maps.ZoomControlStyle.LARGE,
			            position: google.maps.ControlPosition.RIGHT_CENTER
			        },
					mapTypeControl:false,
					panControl:true,
					scaleControl:false,
				};
				
				var map = new google.maps.Map(document.getElementById("map"),
						myOptions);

				var geocoder = new google.maps.Geocoder();

				var bounds = new google.maps.LatLngBounds();

				var region = document.getElementById("mapList").value.split("/");
				var name = document.getElementById("nameList").value.split("/");
				var num = document.getElementById("numList").value.split("/");
				var avg = document.getElementById("avgList").value.split("/");
				var count = document.getElementById("countList").value.split("/");
				var list = document.getElementById("list").value.split("/");
				
				
				/*
					info : {region:name, region:name}
				*/
				//var myLatlng1 = new google.maps.LatLngBounds(37.4837121, 127.0324112);
				//console.log(myLatlng1);
				var currentInfoWindow = null;
				
				//마커를 올릴 지역을 가져온다.
				if (region.length > 0) {
					for (var i = 0; i < region.length; i++) {
						geocoder.geocode({'address' : region[i]},
						function (results, status) {
							if (status == google.maps.GeocoderStatus.OK) {
								for (var j = 0; j < results.length; j++) {
									// 좌표값 받아오기
									
									var lat = results[j].geometry.location.lat();
									var lng = results[j].geometry.location.lng();

									
									google.maps.event.addListener(map, 'zoom_changed', function() {
										zoomChangeBoundsListener = google.maps.event.addListener(map, 'bounds_changed', function(event) {
											if (this.getZoom() > 12) // 최대 줌 변경
											this.setZoom(12);
											google.maps.event.removeListener(zoomChangeBoundsListener);
										});
										
									});
									
									// 마커 속성 설정하기
									var marker = new google.maps.Marker(				
											{
												position : results[j].geometry.location,
												title : results[j].formatted_address,
												map : map,
												bounds: true
												//name : name[j].trim()
												//num : num[j].trim(),
												//avg : avg[j].trim(),
												//count : count[j].trim()
												//center : {lat: -34, lng: 151}
												//icon : iconBase
											});
										
										bounds.extend(marker.position);
										map.fitBounds(bounds);
										
										
									//var address = region;
									//console.log(name[n]);
									
									// 마커 클릭 이벤트
									
									//console.log('이름 : ' + marker.name);
									
								
										
									google.maps.event.addListener(marker,'click',function(e) {
										
										var infowin = searchName(marker);
										var infoWindow = new google.maps.InfoWindow({ content: infowin });
										
										if(currentInfoWindow !=null){
											currentInfoWindow.close();
										}
										//infoWindow.close();
										infoWindow.setContent(infowin);
										infoWindow.open(map,marker);
					
										currentInfoWindow = infoWindow;
									});
									
								
							}
								
							} else {
								alert("검색결과가 없습니다");
							}
						});
					};
					
				}
				
				function searchName(marker) {
					
					var title = marker.title.replace("대한민국", "").replace("서울특별시","서울").replace("경기도","경기").trim();
					var num = marker.num;
					var infowin = '';
					var image = '';
					//인포윈도우 만들기 
					infowin += '<div class="hall_box">';
					//infowin += '<img src = "http://iwedding.co.kr/center/website/brandplus/6285/721-N153_141014032549_1.jpg">'
					infowin += '<div class="hall_detail">';
						
					
					$.each(list, function(index, value) {
						
						var arr = value.split(":");
						var arrName = arr[0].trim();
						var arrTitle = arr[1].trim();
						var arrNo = arr[2].trim();
						var arrAvg = arr[3].trim();
						var arrCount = arr[4].trim();
						
				
						if ( title == arrTitle) {
							 infowin += '<dl><a href="/company/makeup/makeupDetail?mc_no='+arrNo+'">'+arrName+'</a></dl>';
							 infowin += '<dl><dd><i class="pe-7s-map-marker strong"></i> ' +title+'</dd></dl>';
							 infowin += '<dt> 평점 : ' +arrAvg+'점 ('+arrCount+'명)</dt>';
							 
						}
						
					});
					//infowin += '<dl><a href="/company/compare?sc_no='+marker.num+'">'+marker.name+'</a></dl>';
					
					//infowin += '<dt> 평점 : ' +marker.avg+'점 ('+marker.count+'명)</dt>';
					infowin += '</div></div>';
					
					return infowin;
				}
				
			}
		</script>
      
    <!-- 마커 장소 찍기 -->
          
    <!-- studio.sc_addr:studio.sc_nm, -->
                            
                            <c:forEach items="${makeuplist}" var="makeup" varStatus="index">
                              <c:set value="${makeup.mc_addr}" var="split1"/>
  <!--  원본  -->             ${split1 }    
 <!--  자르기 -->            <c:set value="${fn:substringAfter(split1,'^^')}" var="split2"/>
 <!--  자르기2 결과 -->         ${split2 }
 <!--  자르기3 -->            <c:set value="${fn:replace(split2,'^^',' ')}" var="split3"/>
 <!--  자르기3 결과 -->        ${split3 }
 
 
 <!--  자르기4 -->           <c:set value="${fn:substringBefore(split2,'^^').trim() }" var="split4"/>
 <!--  자르기4 결과 -->        ${split4 }
                                <c:choose>
                                  <c:when test="${fn:contains(split4, '(')}" >
  <!--  자르기5 -->                 <c:set value="${fn:substringBefore(split4,'(').trim() }" var="split5"/>
  <!--  자르기5 결과 -->              ${split5 }
                                  </c:when>
                                     <c:otherwise>
  <!-- other -->            	       ${split4 }
                                     </c:otherwise>
                                 </c:choose>
                              </c:forEach>
                              
                              
                              
                              
                              
                   <!-- <input type="hidden" id="list"
             value= "
               <c:forEach items="${list}" var="studio" varStatus="index">
                  <c:choose>
                    <c:when test="${index.last}">${studio.sc_nm}:${studio.sc_addr}:${studio.sc_no }</c:when>
                    <c:otherwise>${studio.sc_nm}:${studio.sc_addr}:${studio.sc_no }/</c:otherwise>
                  </c:choose>
               </c:forEach>
             " /> -->
         
          
          <!-- 위치랑 이름이랑 연결해서 찍어주는애 -->
              <input type="hidden" id="list"
               value= "
                 <c:forEach items="${makeuplist}" var="makeup" varStatus="index">
                 
                    <c:set value="${makeup.mc_addr}" var="split1"/>
                    <c:set value="${fn:substringAfter(split1,'^^')}" var="split2"/>
                    <c:set value="${fn:substringBefore(split2,'^^').trim()}" var="split4"/>
                    <c:set value="${fn:substringBefore(split4,'(').trim()}" var="split5"/>
                    
                       <c:choose>
                         <c:when test="${fn:contains(split4, '(')}" >
                             <c:choose>
                               <c:when test="${index.last}">${makeup.mc_nm}:${split5}:${makeup.mc_no }:${makeup.avg}:${makeup.count}</c:when>
                                 <c:otherwise>${makeup.mc_nm}:${split5}:${makeup.mc_no}:${makeup.avg}:${makeup.count}/</c:otherwise>
                               </c:choose>
                          </c:when>
                    
                     <c:otherwise>
                       <c:choose>
                          <c:when test="${index.last}">${makeup.mc_nm}:${split4}:${makeup.mc_no}:${makeup.avg}:${makeup.count}</c:when>
                           <c:otherwise>${makeup.mc_nm}:${split4}:${makeup.mc_no}:${makeup.avg}:${makeup.count}/</c:otherwise>
                    </c:choose>
                     </c:otherwise>
                    
                    </c:choose>
                    
                    
                 </c:forEach>
               " />
               
               
         
          <!-- 지도 마커 위치 -->
              <input type="hidden" id="mapList"
               value= "
                 <c:forEach items="${makeuplist}" var="makeup" varStatus="index">
                 
                    <c:set value="${makeup.mc_addr}" var="split1"/>
                    <c:set value="${fn:substringAfter(split1,'^^')}" var="split2"/>
                    <c:set value="${fn:substringBefore(split2,'^^').trim()}" var="split4"/>
                    <c:set value="${fn:substringBefore(split4,'(').trim()}" var="split5"/>
                    
                       <c:choose>
                         <c:when test="${fn:contains(split4, '(')}" >
                             <c:choose>
                               <c:when test="${index.last}">${split5}</c:when>
                                 <c:otherwise>${split5}/</c:otherwise>
                               </c:choose>
                          </c:when>
                    
                     <c:otherwise>
                       <c:choose>
                          <c:when test="${index.last}">${split4}</c:when>
                           <c:otherwise>${split4}/</c:otherwise>
                    </c:choose>
                     </c:otherwise>
                    
                    </c:choose>
                    
                    
                 </c:forEach>
               " />
               
             
          <!-- 업체이름  -->   
           <input type="hidden" id="nameList"
               value= "
                 <c:forEach items="${makeuplist}" var="makeup" varStatus="index">
                    <c:choose>
                      <c:when test="${index.last}">${makeup.mc_nm}</c:when>
                      <c:otherwise>${makeup.mc_nm}/</c:otherwise>
                    </c:choose>
                 </c:forEach>
               " />
               
               
           <!-- 업체번호  -->   
           <input type="hidden" id="numList"
               value= "
                 <c:forEach items="${makeuplist}" var="makeup" varStatus="index">
                    <c:choose>
                      <c:when test="${index.last}">${makeup.mc_no}</c:when>
                      <c:otherwise>${makeup.mc_no}/</c:otherwise>
                    </c:choose>
                 </c:forEach>
               " />
               
            <!-- 업체평점  -->   
           <input type="hidden" id="avgList"
               value= "
                 <c:forEach items="${makeuplist}" var="makeup" varStatus="index">
                    <c:choose>
                      <c:when test="${index.last}">${makeup.avg}</c:when>
                      <c:otherwise>${makeup.avg}/</c:otherwise>
                    </c:choose>
                 </c:forEach>
               " />  
               
                            
          <!-- 업체평점 카운트  -->   
           <input type="hidden" id="countList"
               value= "
                 <c:forEach items="${makeuplist}" var="makeup" varStatus="index">
                    <c:choose>
                      <c:when test="${index.last}">${makeup.count}</c:when>
                      <c:otherwise>${makeup.count}/</c:otherwise>
                    </c:choose>
                 </c:forEach>
               " />                                                      
                         
               
                <!-- 구글맵 key -->
                <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCEd3UEpvjDZcH8FLF2eO4SJvDAdp2IByY"></script>

              </div>
            </div>
          </div>
        </div>

        <!-- 지도 끝 -->
      </div>
    </div>
    </div>
</div>
</div>
</body>
</html>
