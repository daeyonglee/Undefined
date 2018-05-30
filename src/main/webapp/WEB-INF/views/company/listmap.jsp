<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../include/top.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset = "UTF-8">
<link href="https://www.jqueryscript.net/css/top.css" rel="stylesheet" type="text/css">
<title> 업체 검색 </title>
</head>

<!-- 탭 -->
<style>
.map {
   position: static;
}


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




<body>

    
    
    
        
   <!-- property area -->
        <div class="properties-area recent-property" style="background-color: #FFF;">
            <div class="container">   
                <div class="row">
                    <div class="col-md-9 padding-top-40 properties-page">
                        <div class="section clear"> 
                            <div class="col-xs-10 page-subheader sorting pl0">
                            
                <div class="tab">
                 <button class="tablinks" onclick="openTap(event, 'Studio')" id="defaultOpen">스튜디오</button>
                  <button class="tablinks" onclick="openTap(event, 'Dress')">드레스</button>
 	        	   <button class="tablinks" onclick="openTap(event, 'MakeUp')">메이크업</button>
                 </div>
                 
                 <div id="Studio" class="tabcontent">
   <h4 class="property-title pull-left"> 스튜디오 100개 </h4>
</div>

<div id="Dress" class="tabcontent">
     <h4 class="property-title pull-left"> 드레스샵 100개 </h4>
</div>

<div id="MakeUp" class="tabcontent">
   <h4 class="property-title pull-left"> 메이크업샵 100개 </h4>
</div>
                            </div>

                        </div>

                        <div class="section clear"> 
                            <div id="list-type" class="proerty-th">
                            
                            
                                <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                        <!-- 사진 리스트 -->     
                                        
                                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="http://iwedding.co.kr/center/website/brandplus/6285/721-N153_141014032549_1.jpg" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="data:image/jpeg;base64,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" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="http://cfile202.uf.daum.net/image/277A4238524A93D113073E" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="detail.jsp"> Super nice Studio </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="proerty-price pull-left"> ★★★ </span> 3.0/5.0 (20명)
                                             <br><div class ="">
                                             간단 소개
                                            </div>
                                        </div>


                                    </div>
                                </div> 

                           <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="assets/img/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice Studio </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="proerty-price pull-left"> ★★★ </span> 3.0/5.0 (20명)
                                             <br><div class ="">
                                             간단 소개
                                            </div>
                                        </div>


                                    </div>
                                </div> 


                                   <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="assets/img/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice Studio </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="proerty-price pull-left"> ★★★ </span> 3.0/5.0 (20명)
                                             <br><div class ="">
                                             간단 소개
                                            </div>
                                        </div>


                                    </div>
                                </div> 


                                   <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="assets/img/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice Studio </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="proerty-price pull-left"> ★★★ </span> 3.0/5.0 (20명)
                                             <br><div class ="">
                                             간단 소개
                                            </div>
                                        </div>


                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="assets/img/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice Studio </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="proerty-price pull-left"> ★★★ </span> 3.0/5.0 (20명)
                                             <br><div class ="">
                                             간단 소개
                                            </div>
                                        </div>


                                    </div>
                                </div> 


                                <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="assets/img/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice Studio </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="proerty-price pull-left"> ★★★ </span> 3.0/5.0 (20명)
                                             <br><div class ="">
                                             간단 소개
                                            </div>
                                        </div>


                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="assets/img/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice Studio </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="proerty-price pull-left"> ★★★ </span> 3.0/5.0 (20명)
                                             <br><div class ="">
                                             간단 소개
                                            </div>
                                        </div>


                                    </div>
                                </div> 


                                  <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="assets/img/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice Studio </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="proerty-price pull-left"> ★★★ </span> 3.0/5.0 (20명)
                                             <br><div class ="">
                                             간단 소개
                                            </div>
                                        </div>


                                    </div>
                                </div> 


                                <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="assets/img/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice Studio </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="proerty-price pull-left"> ★★★ </span> 3.0/5.0 (20명)
                                             <br><div class ="">
                                             간단 소개
                                            </div>
                                        </div>


                                    </div>
                                </div> 



                            </div>
                        </div>
                        
                        
                        
                        
                        <div class="section">
                            <div class="pull-right">
                                <div class="pagination">
                                    <ul>
                                        <li><a href="#">Prev</a></li>
                                        <li><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">Next</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                        
                    </div> 
                    
                    <!-- right side 구글맵 -->
                         <div class="col-md-3 pl0 padding-top-40">
                        <div class="blog-asside-right pl0">
                            <div class="panel panel-default sidebar-menu wow fadeInRight animated" >
                                <div class="panel-body search-widget">
                                    <form action="" class=" form-inline"> 
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    
    <input id="pac-input" class="controls" type="text" placeholder="Search Box">
   <div id="map" style="width:180%; height:600px;"></div>
   

/*
지도상의 중점을 나타낼 좌표
*/
var lat = 위도[변경];
var lng = 경도[변경];

var map;
var markersArray = []; //마커들이 담길 배열

var geocoder;

function initialize() {

var haightAshbury = new google.maps.LatLng(lat, lng);
var mapOptions = {
zoom : 14,
center : haightAshbury,
mapTypeId : 'roadmap'
};
geocoder = new google.maps.Geocoder();
map = new google.maps.Map(document.getElementById("맵이 표현될 element ID[변]"),mapOptions);

if (markersArray.length === 0) {
addMarker(haightAshbury);
}

google.maps.event.addListener(map, 'click', function(e) {
geocoder.geocode(
{'latLng': e.latLng},
function(results, status) {
if (status == google.maps.GeocoderStatus.OK) {
if (results[0]) {
if (marker) {
marker.setPosition(e.latLng);
} else {
marker = new google.maps.Marker({
position: e.latLng,
map: map});
}

} else {
document.getElementById('geocoding').innerHTML =
'No results found';
}
} else {
document.getElementById('geocoding').innerHTML =
'Geocoder failed due to: ' + status;
}
});
}); 

}

function addMarker(location) {

$.ajax({
type: "POST or GET[변경]",
url: "ajax호출할 url[변경]",
data: "ajax data[변경]",
success: function(data){


var markers = [];
if(data){

//만약 ajax처리를 하지 않고 배열로 테스트 할경우 아래 처리 반복문으로 처리하세요
$.each(data, function(i, val){
var latLng = new google.maps.LatLng( 마커 위도[변경] , 마커 경도[변경]);
var marker = new google.maps.Marker({
position: latLng,
title: 마커타이틀[변경],
map: map
});

markers.push(marker);
});
}
markersArray = markers;



},
error: function(xmlRequest){
alert(xmlRequest.status + " " +
xmlRequest.statusText +
" " +
xmlRequest.responseText);
}
});
}

onload = initialize;



<!-- width height를 지정해 주어야됨 -->
<div id="map_contents" style="width:500px; height:500px"></div>
<!--  -->



    function initAutocomplete() {
        var map = new google.maps.Map(document.getElementById('map'), {
          center: new google.maps.LatLng(37.544553, 127.017309),
          zoom: 13,
          scrollwheel : true,
          mapTypeId: 'roadmap'
        });

        
        
        // Create the search box and link it to the UI element.
        var input = document.getElementById('pac-input');
        var searchBox = new google.maps.places.SearchBox(input);
        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

        // Bias the SearchBox results towards current map's viewport.
        map.addListener('bounds_changed', function() {
          searchBox.setBounds(map.getBounds());
        });

        var markers = [];
        // Listen for the event fired when the user selects a prediction and retrieve
        // more details for that place.
        searchBox.addListener('places_changed', function() {
          var places = searchBox.getPlaces();

          if (places.length == 0) {
            return;
          }

          // Clear out the old markers.
          markers.forEach(function(marker) {
            marker.setMap(null);
          });
          markers = [];

          // For each place, get the icon, name and location.
          var bounds = new google.maps.LatLngBounds();
          places.forEach(function(place) {
            if (!place.geometry) {
              console.log("Returned place contains no geometry");
              return;
            }
            var icon = {
              url: place.icon,
              size: new google.maps.Size(71, 71),
              origin: new google.maps.Point(0, 0),
              anchor: new google.maps.Point(17, 34),
              scaledSize: new google.maps.Size(25, 25)
            };

            // Create a marker for each place.
            markers.push(new google.maps.Marker({
              map: map,
              icon: icon,
              title: place.name,
              position: place.geometry.location
            }));

            if (place.geometry.viewport) {
              // Only geocodes have viewport.
              bounds.union(place.geometry.viewport);
            } else {
              bounds.extend(place.geometry.location);
            }
          });
          
          map.fitBounds(bounds);
        });
        
        
        
      }
    
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCEd3UEpvjDZcH8FLF2eO4SJvDAdp2IByY&libraries=places&callback=initAutocomplete"
         async defer></script>
    
                                                </div>
                                            </div>
                                        </fieldset>
                                        </form>
                                        </div>
                                        </div>
                                        </div>
                                        </div>
                                        
               
                                </div>
                                
                                
                            </div>
                            
                            
                        </div>





  <%@include file="../include/bottom.jsp" %>   
  
<script>
function openTap(evt, tapName) {
     var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(tapName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
</body>
</html>