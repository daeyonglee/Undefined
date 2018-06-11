<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://www.jqueryscript.net/css/top.css" rel="stylesheet"
  type="text/css">
<title>내 관심 업체 정보</title>
</head>


<style type="text/css">
H4 {
display:inline; 
}
.heart {
color:#FF7268;
float:right;
}
.item-entry a {
color:#FF7268 !important;
}
.proerty-th-list .col-md-4 .item-entry {
margin-top : 40px;
}

.dot-hr {
margin-top : 10px;
}
.box-two proerty-item {
 height: 200px;
 }
</style>


<!-- 인포윈도우 스타일 -->
<style type="text/css">
.gm-style-iw {
  max-width:200px;
  max-height:50px;
}
.gm-style-iw > div {
  max-width:200px;
  max-height:50px;
  }
  .hall_box{overflow:hidden;max-width:200px;max-height:50px;}
  
.hall_box img{float:left;width:80px;height:80px;margin-right:13px}
.hall_box .hall_detail{float:left;}
.hall_box .hall_detail dl{margin-bottom:25px;font-size:15px;color:#515151;font-weight:bold;}
.hall_box .hall_detail dl dt a{font-size:10px;color:#2a2a2a;font-weight:bold}
.hall_box .hall_detail dl dd{color:#FF7268;font-size:12px;margin-top:-15px}
.hall_box .hall_detail dt{color:#515151;font-size:11px;margin-top:-25px}
.hall_box .hall_detail li{color:#515151;font-size:11px;max-width:150px;margin-top:-10px}
.hall_box .hall_detail li span{float:right}
  .load{position:relative}
  .load .loadimg{position:absolute;left:50%;top:50%;margin-left:-63px;margin-top:-63px}
  </style>
  
<body onload="initialize()">
<%@include file="../include/top.jsp"%>


<div class="page-head">
  <div class="container">
    <div class="row">
      <div class="page-head-content">
        <h1 class="page-title">관심 업체 정보</h1>
      </div>
    </div>
  </div>
</div>
<!-- End page header -->


         
<!-- property area -->
<div class="content-area recent-property"
  style="background-color: #FFF;">
  <div class="container">
    <div class="row">

      <div
        class="col-md-9 pr-30 padding-top-40 properties-page user-properties">

        <div class="section">
           <a href="myinterest"> <button type="button">STUDIO</button></a>
      <button type="button" disabled>DRESS</button>
      <a href="mkinterest"><button type="button">MAKEUP</button></a>
        
          <div class="page-subheader sorting pl0 pr-10"></div>

        </div>

       
          <c:forEach items="${interlist}" var="dress" varStatus="status">
          <!-- 주소 자르기(split) -->
          <c:set value="${dress.dc_addr}" var="addr"/>
          <c:set var="keywordArr" value="${fn:split(addr,'^')}"/>
          
        <div class="section">
    
          <div id="list-type" class="proerty-th-list">
            <div class="col-md-4 p0">
              <div class="box-two proerty-item">
                <div class="item-thumb">
                  <a href="/company/compare?dc_no=${dress.dc_no }"><img
                    src="${dress.dc_main_image}"></a>
                </div>
                <div class="item-entry overflow">
                  <h4>${dress.dc_nm }</h4>
                   <h4 class="heart"><a href="/user/mypage/dsinterest/remove?dic_no=${dress.dic_no }" class="button" data-toggle="tooltip" title="삭제">♥</a></h4>
                  <div class="dot-hr"></div>
                  <span class="pull-left"><i class="pe-7s-map-marker strong"> </i>  <c:forEach var="word" items="${keywordArr}">${word} </c:forEach> </span><br>
                  <span class="pull-left"><i class="pe-7s-mail strong"> </i> ${dress.dc_email } </span><br>
                  <span class="pull-left"><i class="pe-7s-call strong"> </i> 010)${dress.dc_tel } </span><br>

                 <div class="dealer-action pull-right">
                  </div>
                </div>
              </div>
            </div>


          </div>
          
        </div>

          </c:forEach>
      </div>
            
      <!-- 삭제버튼 툴팁 -->
      <script>
		$(document).ready(function(){
    		$('[data-toggle="tooltip"]').tooltip(); 
		});
	</script>
  
         <div class="col-md-3 pl0 padding-top-40">
            <div class="blog-asside-right pl0">
              <div class="panel panel-default sidebar-menu wow fadeInRight animated">
                              
                <!-- 지도시작 -->

                <div id="map" style="width: 100%; height: 700px;"></div>

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
        var list = document.getElementById("list").value.split("/");

        console.info('지역 : ' + region);
        
        
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

                  // 마커 속성 설정하기
                  var marker = new google.maps.Marker(        
                      {
                        position : results[j].geometry.location,
                        title : results[j].formatted_address,
                        map : map,
                        bounds: true,
                        maxZoom: 17,
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
                    console.log(marker);
                    currentInfoWindow = infoWindow;
                  });
              }
                
              } else {
                alert("즐겨찾는 업체가 존재하지 않습니다");
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
            
            if ( title == arrTitle) {
               infowin += '<dl><a href="/company/compare?dc_no='+arrNo+'">'+arrName+'</a></dl>';
               infowin += '<dl><dd><i class="pe-7s-map-marker strong"></i> ' +title+'</dd></dl>';
            }
          });
          infowin += '</div></div>';
          
          return infowin;
        }
        
      }
    </script>
      
    <!-- 마커 장소 찍기 -->
          
    <!-- dress.dc_addr:dress.dc_nm, -->
                            
                            <c:forEach items="${list}" var="dress" varStatus="index">
                              <c:set value="${dress.dc_addr}" var="split1"/>
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
  <!-- other -->                     ${split4 }
                                     </c:otherwise>
                                 </c:choose>
                              </c:forEach>
                              
                              
                              
                              
                              
                   <!-- <input type="hidden" id="list"
             value= "
               <c:forEach items="${list}" var="studio" varStatus="index">
                  <c:choose>
                    <c:when test="${index.last}">${dress.dc_nm}:${dress.dc_addr}:${dress.dc_no }</c:when>
                    <c:otherwise>${dress.dc_nm}:${dress.dc_addr}:${dress.dc_no }/</c:otherwise>
                  </c:choose>
               </c:forEach>
             " /> -->
         
          
          <!-- 위치랑 이름이랑 연결해서 찍어주는애 -->
              <input type="hidden" id="list"
               value= "
                 <c:forEach items="${interlist}" var="dress" varStatus="index">
                 
                    <c:set value="${dress.dc_addr}" var="split1"/>
                    <c:set value="${fn:substringAfter(split1,'^^')}" var="split2"/>
                    <c:set value="${fn:substringBefore(split2,'^^').trim()}" var="split4"/>
                    <c:set value="${fn:substringBefore(split4,'(').trim()}" var="split5"/>
                    
                       <c:choose>
                         <c:when test="${fn:contains(split4, '(')}" >
                             <c:choose>
                               <c:when test="${index.last}">${dress.dc_nm}:${split5}:${dress.dc_no }</c:when>
                                 <c:otherwise>${dress.dc_nm}:${split5}:${dress.dc_no}/</c:otherwise>
                               </c:choose>
                          </c:when>
                    
                     <c:otherwise>
                       <c:choose>
                          <c:when test="${index.last}">${dress.dc_nm}:${split4}:${dress.dc_no}</c:when>
                           <c:otherwise>${dress.dc_nm}:${split4}:${dress.dc_no}/</c:otherwise>
                    </c:choose>
                     </c:otherwise>
                    
                    </c:choose>
                    
                    
                 </c:forEach>
               " />
               
               
         
          <!-- 지도 마커 위치 -->
              <input type="hidden" id="mapList"
               value= "
                 <c:forEach items="${interlist}" var="dress" varStatus="index">
                 
                    <c:set value="${dress.dc_addr}" var="split1"/>
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
                 <c:forEach items="${list}" var="dress" varStatus="index">
                    <c:choose>
                      <c:when test="${index.last}">${dress.dc_nm}</c:when>
                      <c:otherwise>${dress.dc_nm}/</c:otherwise>
                    </c:choose>
                 </c:forEach>
               " />
               
               
           <!-- 업체번호  -->   
           <input type="hidden" id="numList"
               value= "
                 <c:forEach items="${list}" var="dress" varStatus="index">
                    <c:choose>
                      <c:when test="${index.last}">${dress.dc_no}</c:when>
                      <c:otherwise>${dress.dc_no}/</c:otherwise>
                    </c:choose>
                 </c:forEach>
               " />
               
                         
               
                <!-- 구글맵 key -->
                <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCEd3UEpvjDZcH8FLF2eO4SJvDAdp2IByY"></script>

              </div>
            </div>
          </div>
          
          
          <!-- 지도 -->
  
    </div>
  </div>
</div>

<%@include file="../include/bottom.jsp"%>

</body>
</html>