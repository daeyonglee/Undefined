<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/assets/css/lightslider.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

.checked {
    color: orange;
}
</style>
<title></title>
</head>
<body>







<jsp:include page="../include/top.jsp" />




<div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title" align="center">강남힐스튜디오</h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->

        <!-- property area -->
        <div class="content-area single-property" style="background-color: #FCFCFC;">
            <div class="container">

                <div class="clearfix padding-top-40">
                    <div class="col-md-8 single-property-content ">
                        <div class="row">
                            <div class="light-slide-item">            
                                <div class="clearfix">
                                    <div class="favorite-and-print">
                                        <a class="add-to-fav" href="#login-modal" data-toggle="modal">
                                            <i class="fa fa-star-o"></i>
                                        </a>
                                        <a class="printer-icon " href="javascript:window.print()">
                                            <i class="fa fa-print"></i> 
                                        </a>
                                    </div> 

                                    <ul id="image-gallery" class="gallery list-unstyled cS-hidden">
                                        <li data-thumb="/resources/assets/img/property-1/property1.jpg"> 
                                            <img src="/resources/assets/img/property-1/property1.jpg" />
                                        </li>
                                        <li data-thumb="/resources/assets/img/property-1/property4.jpg"> 
                                            <img src="/resources/assets/img/property-1/property4.jpg" />
                                        </li>         
                                        <li data-thumb="/resources/assets/img/property-1/property3.jpg"> 
                                            <img src="/resources/assets/img/property-1/property3.jpg" />
                                        </li>
                                        <li data-thumb="/resources/assets/img/property-1/property4.jpg"> 
                                            <img src="/resources/assets/img/property-1/property4.jpg" />
                                        </li>                                         
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="single-property-wrapper">
                            <div class="single-property-header">                                          
                                <h1 class="property-title pull-left">"고객을 최우선으로"</h1>
                                <span class="property-price pull-right">
                                   <span class="fa fa-star checked"></span>
							 	   <span class="fa fa-star checked"></span>
	 							   <span class="fa fa-star checked"></span>
								   <span class="fa fa-star"></span>
								   <span class="fa fa-star"></span>
                                </span>                            
                            </div>


                            <div class="section">
                                <h4 class="s-property-title">리얼후기</h4>
                                <div class="s-property-content">
                                    <p>Nulla ed                              </p>
								<table class="table table-hover">
									<thead>
										<tr>
											<th>작성자</th>
											<th>등록일</th>
											<th>상품평</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>John</td>
											<td>Doe</td>
											<td>john@example.com</td>
										</tr>
										<tr>
											<td>Mary</td>
											<td>Moe</td>
											<td>mary@example.com</td>
										</tr>
										<tr>
											<td>July</td>
											<td>Dooley</td>
											<td>july@example.com</td>
										</tr>
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
                                                <a href="">
                                                    <img src="/resources/assets/img/client-face1.png" class="img-circle">
                                                </a>
                                            </div>
                                            <div class="col-xs-8 col-sm-8 ">
                                                <h3 class="dealer-name">
                                                    <a href="">대표 : 박중길</a><br>
                                                    <span>사업자 : 110-2336-2200</span>        
                                                </h3>
                                                <div class="dealer-social-media">
                                                    <a class="twitter" target="_blank" href="">
                                                        <i class="fa fa-twitter"></i>
                                                    </a>
                                                    <a class="facebook" target="_blank" href="">
                                                        <i class="fa fa-facebook"></i>
                                                    </a>
                                                    <a class="gplus" target="_blank" href="">
                                                        <i class="fa fa-google-plus"></i>
                                                    </a>
                                                    <a class="linkedin" target="_blank" href="">
                                                        <i class="fa fa-linkedin"></i>
                                                    </a> 
                                                    <a class="instagram" target="_blank" href="">
                                                        <i class="fa fa-instagram"></i>
                                                    </a>       
                                                </div>

                                            </div>
                                        </div>

                                        <div class="clear">
                                            <ul class="dealer-contacts">                                       
                                                <li><i class="pe-7s-map-marker strong"> </i>서울특별시 서초구 강남대로 375 서초현대타워빌딩</li>
                                                <li><i class="pe-7s-mail strong"> </i>hillstudio@naver.com</li>
                                                <li><i class="pe-7s-call strong"> </i>02)518-9628</li>
                                            </ul>
                                            <p style="color:black">우리 강남힐스튜디오는 33년의 깊은 전통을 가지고 있습니다. 또한, 좋은 조명과 시설 그리고 경륜있는 포토그래퍼가 삼위일체 되어 고객님의 웨딩모습을 촬영해드립니다. </p>
                                        <input type='button' class='btn btn-next btn-primary' name='next' value='비교업체 등록' />
                                        </div>

                                    </div>
                                </div>
                            </div>


                            <div class="panel panel-default sidebar-menu similar-property-wdg wow fadeInRight animated">
                                <div class="panel-heading">
                                    <h3 class="panel-title">이 스튜디오와 관련된 상품</h3>
                                </div>
                                <div class="panel-body recent-property-widget">
                                    <ul>
                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="assets/img/demo/small-property-2.jpg"></a>
                                                <span class="property-seeker">
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col-md-3 col-sm-3  col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="assets/img/demo/small-property-1.jpg"></a>
                                                <span class="property-seeker">
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="assets/img/demo/small-property-3.jpg"></a>
                                                <span class="property-seeker">
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="assets/img/demo/small-property-2.jpg"></a>
                                                <span class="property-seeker">
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>

                                    </ul>
                                </div>
                            </div>

                        </aside>
                    </div>
                </div>

            </div>
        </div>


        <script type="text/javascript" src="/resources/assets/js/lightslider.min.js"></script>
     

        <script>
                            $(document).ready(function () {

                                $('#image-gallery').lightSlider({
                                    gallery: true,
                                    item: 1,
                                    thumbItem: 9,
                                    slideMargin: 0,
                                    speed: 500,
                                    auto: true,
                                    loop: true,
                                    onSliderLoad: function () {
                                        $('#image-gallery').removeClass('cS-hidden');
                                    }
                                });
                            });
        </script>


<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a style="color:white">비교업체 리스트</a>
  
  <img src="/resources/assets/img/property-1/property1.jpg" class="img-responsive" width="100%" alt="">
  <p>박수정 스튜디오</p>
  <img src="/resources/assets/img/property-1/property1.jpg" class="img-responsive" width="100%" alt="">
  <p>김수진 스튜디오</p>
  <img src="/resources/assets/img/property-1/property1.jpg" class="img-responsive" width="100%" alt="">
  <p>홍길동 스튜디오</p>
  
   <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">비교하기</button>

  
 
</div>

  <p>
       
          <span class="glyphicon glyphicon-chevron-left" style="font-size:30px;cursor:pointer;left:1480px" onclick="openNav()" ></span>
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
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">비교하기</h4>
      </div>
      <div class="modal-body">
        
  
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
     
        <jsp:include page="../include/bottom.jsp" />
     
     
</body>
</html> 

