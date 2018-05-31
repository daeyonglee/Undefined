<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/top.jsp"%>
<!DOCTYPE html>

<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->

<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->

<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->

<!--[if gt IE 8]><!-->

<html class="no-js">
<!--<![endif]-->
<head>
<link rel="stylesheet" href="/resources/assets/css/wizard.css">
<link rel="stylesheet" href="/resources/assets/css/user/join.css">

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="/resources/assets/js/user/join.js"></script>
<meta charset="utf-8">
<style type="text/css">
.client-text{
	text-align: center;
}
h1 {
 text-align: center;
}
</style>
<title>마이페이지</title>
</head>
<body>
  <div class="page-head">
    <div class="container">
      <div class="row">
        <div class="page-head-content">
          <h1 class="page-title">
            <span>마이페이지 >> 관심업체</span>
          </h1>
        </div>
      </div>
    </div>
  </div>
  <!-- End page header -->

  <!--TESTIMONIALS -->
  <div class="testimonial-area recent-property"
    style="background-color: #FCFCFC; padding-bottom: 15px;">
    <div class="container">
      <div class="row">
        <div
          class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">

        </div>
      </div>
      <div class="row">
        <div class="row testimonial">
          <div class="col-md-12">
            <div id="testimonial-slider">
              <div class="item"><a href="#">
                <div class="welcome-estate">
                  <div class="welcome-icon">
                    <i class="pe-7s-users pe-4x"></i>
                  </div></a>
                  <h4><strong>내정보관리</strong></h4>
                </div>
              </div>
              <div class="item"><a href="#">
                <div class="welcome-estate">
                  <div class="welcome-icon">
                    <i class="pe-7s-pen pe-4x"></i>
                  </div></a>
                  <h4><strong>역경매신청현황</strong></h4>
                </div>
              </div>
              <div class="item"><a href="#">
                <div class="welcome-estate">
                  <div class="welcome-icon">
                    <i class="pe-7s-notebook pe-4x"></i>
                  </div></a>
                  <h4><strong>관심업체</strong></h4>
                </div>
              </div>
              <div class="item"><a href="#">
              <div class="welcome-estate">
                <div class="welcome-icon">
                  <i class="pe-7s-wallet pe-4x"></i>
                </div></a>
                  <h4><strong>포인트관리</strong></h4>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
  <%@include file="../include/bottom.jsp"%>
</body>
</html>