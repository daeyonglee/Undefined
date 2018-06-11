<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=true"></script>
<script>
  function checkForm() {
    if (addReview.startext.value=="별점주기") {
    	addReview.startext.focus();
    } else if (addReview.sr_subject.value=="") {
      	addReview.sr_subject.focus();  	
    } else if (addReview.sr_content.value=="") {
    	addReview.sr_content.focus();
    } else {
    document.addReview.submit();
    return true;
    }
  }
  </script>
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

span.star-prototype, span.star-prototype > * {
    height: 16px; 
    background: url(http://i.imgur.com/YsyS5y8.png) 0 -16px repeat-x;
    width: 80px;
    display: inline-block;
}
 
span.star-prototype > * {
    background-position: 0 0;
    max-width:80px; 
}

* {
    box-sizing: border-box;
}

.heading {
    font-size: 25px;
    margin-right: 25px;
}

.fa {
    font-size: 25px;
}

.checked {
    color: orange;
}

/* Three column layout */
.side {
    float: left;
    width: 15%;
    margin-top: 10px;
}

.middle {
    float: left;
    width: 70%;
    margin-top: 10px;
}

/* Place text to the right */
.right {
    text-align: right;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* The bar container */
.bar-container {
    width: 100%;
    background-color: #f1f1f1;
    text-align: center;
    color: white;
}

/* Individual bars */
.bar-5 {width: 60%; height: 18px; background-color: #4CAF50;}
.bar-4 {width: 30%; height: 18px; background-color: #2196F3;}
.bar-3 {width: 10%; height: 18px; background-color: #00bcd4;}
.bar-2 {width: 4%; height: 18px; background-color: #ff9800;}
.bar-1 {width: 15%; height: 18px; background-color: #f44336;}

/* Responsive layout - make the columns stack on top of each other instead of next to each other */
@media (max-width: 400px) {
    .side, .middle {
        width: 100%;
    }
    /* Hide the right column on small screens */
    .right {
        display: none;
    }
}

.userRating {
  margin: 0 auto;
}

</style>

<!-- 인포윈도우 스타일 -->
<style type="text/css">
  .hall_box{overflow:hidden}
.hall_box img{float:left;width:170px;height:139px;margin-right:13px}
.hall_box .hall_detail{float:left;height:100%}
.hall_box .hall_detail dl{margin-bottom:25px;font-size:20px;color:#515151;font-weight:bold;}
.hall_box .hall_detail dl dt a{font-size:15px;color:#2a2a2a;font-weight:bold}
.hall_box .hall_detail dl dd{color:#FF7268;font-size:13px;margin-top:-15px}
.hall_box .hall_detail li{color:#515151;font-size:15px;max-width:200px;margin-top:-10px}
.hall_box .hall_detail li span{float:right}
  .load{position:relative}
  .load .loadimg{position:absolute;left:50%;top:50%;margin-left:-63px;margin-top:-63px}
  </style>
<title></title>
</head>
<body onload="initialize()">

  <jsp:include page="../../include/top.jsp" />

  <form role="form" method="post">
    <input type='hidden' name='companyNo'
      value="${DressCompany.dc_no}">
  </form>

  <div class="page-head">
    <div class="container">
      <div class="row">
        <div class="page-head-content">
          <h1 class="page-title" align="center">${dressCompany.dc_nm}</h1>
        </div>
      </div>
    </div>
  </div>
  <!-- End page header -->

<!-- 즐겨찾기 추가 스크립트 -->
<script>
function addInterest() {
   document.getElementById("interest").submit();
}
</script>
<!-- 비교업체에서 즐겨찾기 추가 스크립트 -->
<script>
function compInterest() {
   document.getElementById("compInterest").submit();
}
</script>

  <!-- property area -->
  <div class="content-area single-property"
    style="background-color: #FCFCFC;">
    <div class="container">
      <a href="../dress" class="btn-primary">
          <span class="glyphicon glyphicon-arrow-left"></span> 업체목록
      </a>
      <div class="clearfix padding-top-40">
        <div class="col-md-8 single-property-content ">
          <div class="row">
            <div class="light-slide-item">
              <div class="clearfix">   
               <form method="post" action="/company/dress/interest" id="interest">
               <input type='hidden' name='dc_no' value ="${dressCompany.dc_no}">
                <div class="favorite-and-print">
                  <a class="add-to-fav" href="#login-modal" data-toggle="modal" onclick="addInterest();"><i id="favorite" class="fa fa-star-o"></i>
                  </a> <a class="printer-icon"
                    href="javascript:window.print()"><i class="fa fa-print"></i>
                  </a>
                </div>
               </form>

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

<script>
  var locked = 0;
  
  function show(dr_point) {
    if (locked)
      return;
    var i;
    var image;
    var el;
    var e = document.getElementById('startext');
    var stateMsg;
    
    for (i=1; i<=dr_point; i++) {
      image = 'image' + i;
      el = document.getElementById(image);
      el.src = "/resources/images/fullStar.png";
    }
    
    switch (dr_point) {
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
  
  function noshow(dr_point) {
    if (locked)
      return;
    var i;
    var image;
    var el;
    
    for (i=1; i<=dr_point; i++) {
      image = 'image' + i;
      el = document.getElementById(image);
      el.src = "/resources/images/emptyStar.png";
    }
  }
  
  function lock(dr_point) {
    show(dr_point);
    locked = 1;
  }
  
  function mark(dr_point) {
    lock(dr_point);
    document.starting.dr_point.value=dr_point;
  }
</script>

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

          <div class="single-property-wrapper">
            <div class="single-property-header">
              <h1 class="property-title pull-left">"${dressCompany.dc_smy_intro}"</h1>
            </div>
         
            <div class="section">
              <h4 class="s-property-title">리얼후기</h4>
              <div class="s-property-content">
               
              <c:if test="${not empty list}">
                <span class="heading"><b>평균별점</b></span> 
                <span class="star-prototype">${avg}</span>
              </c:if>
                <c:if test="${not empty list}"><p>이 업체는 등록된 후기 <b>${count}</b>개 중에서 <strong>${avg}</strong>의 평균별점을 받았습니다.</p></c:if>
                <hr style="border: 3px solid #f1f1f1">
                <br/>
                
                <!-- 리뷰테이블 시작 -->
                <div style="width:100%; height:200px; overflow:auto">
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
                  <c:choose>
                  <c:when test="${not empty list}">
                    <c:set var="num" value="${fn:length(list)}"/>
                    <c:forEach items="${list}" var="dressReview">
                      <tr>
                        <td>${num}</td>
                        <td>${dressReview.dr_content}</td>
                        <td><span class="star-prototype">${dressReview.dr_point}</span></td>
                        <td>${dressReview.regdate}</td>
                      </tr>
                      <c:set var="num" value="${num-1}"/>
                     </c:forEach>
                   </c:when>
                   <c:otherwise>
                   <tr>
                    <td colspan="4"> <center>등록된 후기가 없습니다.</center> </td>
                   </tr>
                   </c:otherwise>
                  </c:choose>
                  </tbody>
                </table>
              </div>
          
              </div>
            </div>
            <!-- End description area  -->

<h4 class="s-property-title">후기등록</h4>
            <form action="/company/dress/review" method="post" id="addReview" name="starting">
                <input type='hidden' name='dc_no' value="${dressCompany.dc_no}">
                <input type="hidden" name="dr_point"/>  
             
                <div class="col-sm-12 text-center">
                  <img id=image1 onmouseover=show(1) onclick=mark(1) onmouseout=noshow(1) src="/resources/images/emptyStar.png"> 
                          <img id=image2 onmouseover=show(2) onclick=mark(2) onmouseout=noshow(2) src="/resources/images/emptyStar.png">
                          <img id=image3 onmouseover=show(3) onclick=mark(3) onmouseout=noshow(3) src="/resources/images/emptyStar.png"> 
                          <img id=image4 onmouseover=show(4) onclick=mark(4) onmouseout=noshow(4) src="/resources/images/emptyStar.png"> 
                          <img id=image5 onmouseover=show(5) onclick=mark(5) onmouseout=noshow(5) src="/resources/images/emptyStar.png">                     
                          <div id="startext">별점주기</div>
                </div>
                
                
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="firstname">이 름</label> <input type="text"
                    class="form-control" id="firstname" value="${user_nm}" disabled>
                    
                </div>
              </div>

              <div class="col-sm-6">
                <div class="form-group">
                  <label for="subject">제 목</label> <input type="text"
                    class="form-control" id="subject" >
                </div>
            </div>

              <div class="col-sm-12">
                <div class="form-group">
                  <label for="message">내 용</label>
                  <textarea name="dr_content" id="message"
                    class="form-control" placeholder="이곳에 후기를 남겨주세요.."></textarea>
                </div>
              </div>

              <div class="col-sm-12 text-center">
                <button type="submit" class="btn btn-primary">
                  <i class="fa fa-envelope-o"></i>등 록
                </button>
              </div>
            </form> 

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
                        src="/resources/images/dress.jpg"
                        class="img-circle">
                      </a>
                    </div>
                    <div class="col-xs-8 col-sm-8 ">
                      <h3 class="dealer-name">
                        <a href="">대표: ${dressCompany.dc_main_nm}</a><br>
                        <span>사업자 : ${dressCompany.dc_company_no}</span>
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
                  
                  
                  

<!-- 
<script>
$(function() {
   $("#jqueryComp").click(function(event){
      $("#floatdiv").css("color", "red");
   });
});
</script> -->
<script>
function readyFn() {
          $("#floatdiv").css("color", "#FFC500");       
}

$(document).ready(readyFn);
</script>

<script>
function maxComp() {
	alert('더 이상 비교업체를 담을 수 없습니다.');
}
</script>
<script>
function minComp() {
  alert('3군데의 업체를 담으셔야 비교가 가능합니다^^');
}
</script>

<!-- 주소 자르기(split) -->
<c:set value="${dressCompany.dc_addr}" var="addr"/>
<c:set value="${fn:substringAfter(addr,'^^')}" var="addr2"/>
<c:set value="${fn:replace(addr2,'^^',' ')}" var="keywordArr"/>
                  <div class="clear">
                    <ul class="dealer-contacts">
                      <li><i class="pe-7s-map-marker strong"> </i>
                        <c:forEach var="word" items="${keywordArr}">
                           ${word} 
                        </c:forEach>
                      </li>
                      <li><i class="pe-7s-mail strong"> </i>${dressCompany.dc_email}</li>
                      <li><i class="pe-7s-call strong"> </i>${dressCompany.dc_tel}</li>
                    </ul>
                    <p style="color: black">${dressCompany.dc_introduce}</p>

                      <form method="post" action="/company/dress/add" name="frm">
                      <input type='hidden' name='dc_no' value="${dressCompany.dc_no}"> 
                      <input type='hidden' name='dc_nm' value="${dressCompany.dc_nm}">
                      <input type='hidden' name='avg' value="${avg}">
                      <input type='hidden' name='dc_addr' value="<c:forEach var='word' items='${keywordArr}'>
                           ${word} 
                      </c:forEach>">
                    
                      <c:set value="${dressCompany.dc_no}" var="comp"/>
                      <c:if test="${empty cart2}">
                       <input type='submit' id='jqueryComp' class='btn btn-next btn-primary' name='next' value='비교업체 등록'/>
                      </c:if>

                      <c:set var="flag" value="false" />
                      <c:if test="${not empty cart2}">
                        <c:choose>  
                          <c:when test="${fn:length(cart2) gt '2'}"><input type='button' class='btn btn-next btn-primary' value='비교업체 등록' onclick='maxComp();'/></c:when>
                          <c:otherwise>
                            <c:if test="${not flag}">
                              <c:forEach items="${cart2}" var="dto">
                                <c:if test="${comp eq dto.dc_no}">
                                  <input type='submit' id='jqueryComp' class='btn btn-next btn-primary' name='next' value='비교업체 등록' disabled='disabled'/>
                                  <c:set var="flag" value="true" />
                                </c:if>
                              </c:forEach>
                            </c:if>
                            <c:if test="${not flag}">
                              <input type='submit' id='jqueryComp' class='btn btn-next btn-primary' name='next' value='비교업체 등록'/>
                            </c:if>
                          </c:otherwise>
                        </c:choose>
                      </c:if>
                    </form>

                  </div>
                </div>
              </div>
            </div>

            <div
              class="panel panel-default sidebar-menu similar-property-wdg wow fadeInRight animated">



<!-- 지도시작 -->

  <div id="map" style="width: 100%; height: 700px;"></div>

<!-- GoogoleMap Asynchronously Loading the API ********************************************* -->
<script type="text/javascript">
    function initialize() {
     
        var mapOptions = {
                            zoom: 18, // 지도를 띄웠을 때의 줌 크기
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                        };
         
         
        var map = new google.maps.Map(document.getElementById("map"), // div의 id과 값이 같아야 함. "map-canvas"
                                    mapOptions);
         
        var size_x = 40; // 마커로 사용할 이미지의 가로 크기
        var size_y = 40; // 마커로 사용할 이미지의 세로 크기
     
        // 마커로 사용할 이미지 주소
        var image = new google.maps.MarkerImage( '주소 여기에 기입!',
                                                    new google.maps.Size(size_x, size_y),
                                                    '',
                                                    '',
                                                    new google.maps.Size(size_x, size_y));
         
        // Geocoding *****************************************************
        var address = '${dressCompany.dc_addr}'; // DB에서 주소 가져와서 검색하거나 왼쪽과 같이 주소를 바로 코딩.
        var marker = null;
        var geocoder = new google.maps.Geocoder();
        geocoder.geocode( { 'address': address}, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                map.setCenter(results[0].geometry.location);
                marker = new google.maps.Marker({
                                map: map,
                                icon: image, // 마커로 사용할 이미지(변수)
                                title: '${dressCompany.dc_nm}', // 마커에 마우스 포인트를 갖다댔을 때 뜨는 타이틀
                                position: results[0].geometry.location
                            });
 
                var content = "<b>${dressCompany.dc_nm}</b><br/><br/>Tel: ${dressCompany.dc_tel}"; // 말풍선 안에 들어갈 내용
             
                // 마커를 클릭했을 때의 이벤트. 말풍선 뿅~
                var infowindow = new google.maps.InfoWindow({ content: content});
                google.maps.event.addListener(marker, "click", function() {infowindow.open(map,marker);});
            } else {
                alert("Geocode was not successful for the following reason: " + status);
            }
        });
        // Geocoding // *****************************************************
         
    }
    google.maps.event.addDomListener(window, 'load', initialize);
</script>


  <!-- 마커 장소 찍기 -->

  <!-- 구글맵 key -->
  <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCEd3UEpvjDZcH8FLF2eO4SJvDAdp2IByY"></script>
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

<!-- 비교업체 삭제 스크립트 -->
<script>
function removeComp() {
   document.getElementById("remove").submit();
}
</script>

  <div id="mySidenav" class="sidenav">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <c:choose>
    <c:when test="${empty cart2}">
      <center><h3>등록된 비교업체가 없습니다......!!</h3></center>
    </c:when>
    
    <c:otherwise>
    
    
     
    <a style="color: white">비교업체 리스트</a>
    <br/>
 
     <c:forEach items="${cart2}" var="compList">
      <form method="post" action="/company/dress/remove" id="remove">
      <input type='hidden' name='dc_no' value="${dressCompany.dc_no}">
      <input type='hidden' name='companyNo' value="${compList.dc_no}"> 
      <input type='hidden' name='dc_nm' value="${compList.dc_nm}"> 
      <img src="/resources/assets/img/property-1/property1.jpg" id="imgBorder" class="img-responsive" width="90%" alt="">
      <input type="submit" value="삭제"></input>
    <!--    <span class="glyphicon glyphicon-remove-sign" onclick="removeComp()"></span>-->
      <h4 align="center" style="color: white">${compList.dc_nm}</h4>
      <br/>
      </form>
    </c:forEach>
    
    <center>
    <c:choose>  
     <c:when test="${fn:length(cart2) lt '3'}">
       <button type="button" class="btn btn-primary btn-lg" data-target="#myModal" onclick='minComp();'>비교하기</button>
     </c:when>
     <c:otherwise> 
       <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">비교하기</button>  
     </c:otherwise>
    </c:choose>
    </center>
    
    </c:otherwise>
    </c:choose>
  </div>

  <p>
  <c:choose>
  <c:when test="${empty cart2}">
      <span id="floatdiv" class="glyphicon glyphicon-chevron-left"
      style="font-size: 30px; cursor: pointer; left: 60em"
      onclick="openNav()"></span>
  </c:when>
  <c:otherwise>
      <span id="floatdiv" class="glyphicon glyphicon-chevron-left"
      style="font-size: 30px; cursor: pointer; left: 60em"
      onclick="openNav();readyFn();"></span>
  </c:otherwise>
  </c:choose>
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
      
  <script>
  function confirm()
  {
      msg = "실행하시겠습니까?";
      if (confirm(msg)!=0) {
        	   네
      } else {
         	아니오
}
  } // myconfirm
  </script>

  <!-- Modal -->
          <div class="col-lg-10" id="col">
                      <div class="col-lg-3">
                       <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog modal-lg">
                          <div class="modal-content">
                            <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              <h4 class="modal-title">상품 선택하기</h4>
                            </div>
                            <div class="modal-body">
                              <!-- contents -->
                              <div class="section clear" style="overflow: scroll; height: 500px; padding: 10px">
                              <div id="list-type" class="proerty-th">
                           
                           
                          
                          <c:forEach items="${cart2}" var="cartComp">
                          
                           <div class="col-sm-6 col-md-4 p0">
                             <div class="box-two proerty-item">
                               
                               <div class="item-thumb">
                                 <div id="myCarousel" class="carousel slide">
                                   <div class="carousel-inner">
                                     <div class="item active">
                                       <img src= ${cartComp.dc_main_image } style="width: 100%;">
                                     </div>
                                   </div>
                                 </div>
                               </div>

                               <div id="choice">
                                 <h6><span style='color: black'>업체명 : </span><span>${cartComp.dc_nm}</span></h6>
                                 <h6><span style='color: black'>위치  : </span><span>${cartComp.dc_addr} </span></h6>
                                 <h6>평점  : <span></span></h6>
                               </div>
                               
                            <form method="post" action="/company/dress/compInterest" id="compInterest">
                                  
                            <input type='hidden' name='compNo'
                              value="${dressCompany.dc_no}"> 
                            <input type='hidden' name='dc_no'
                              value="${cartComp.dc_no}">   
                              
                            <input type="submit" value="관심업체 추가"></input>
                     
                            </form>
                             </div>
                           </div>   
                          
                         </c:forEach>
                         
                                             
                       </div>
                     </div> 
                              <!--  content end -->
                            </div>
                            <div class="modal-footer">
                              <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                            </div>
                          </div>
                        </div>
                      </div>
                      </div>
                     </div>

  <jsp:include page="../../include/bottom.jsp" />


</body>
</html>
