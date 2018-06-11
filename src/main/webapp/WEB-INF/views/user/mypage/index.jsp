<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../../include/top.jsp"%>
<!DOCTYPE html>

<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->

<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->

<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->

<!--[if gt IE 8]><!-->

<html class="no-js">
<!--<![endif]-->
<head>
<link rel="stylesheet" href="/resources/assets/css/wizard.css">

<meta charset="utf-8">
<title>마이페이지</title>
<script type="text/javascript">

	$(function(){

		var msg = "${msg}";
		console.log(msg);
		if (msg != null || msg != "") {
			
			if (msg == "update") {
				alert("정상적으로 수정되었습니다.");
			}
		}
		
  	$('#my').on('click',function(e){
  		self.location='/user/mypage/my';
  	});
  	
  	$("#bidlist").on('click', function(e){
  		self.location='/user/mypage/apply';
  	});
  	
  	$("#product").on('click', function(e){
  		self.location='/user/mypage/plist';
  	});
  	
  	$("#like").on('click', function(e){
  		self.location = '/user/mypage/like';
  	});
  	
  	$("#interest").on('click', function(e){
  		self.location = '/user/mypage/myinterest';
  	});
	});

</script>
</head>
<body>
  <div class="page-head">
    <div class="container">
      <div class="row">
        <div class="page-head-content">
          <h1 class="page-title" style="text-align: center;">
            <span>마이페이지</span>
          </h1>
        </div>
      </div>
    </div>
  </div>
  <!-- End page header -->

  <!--TESTIMONIALS -->
  <div class="testimonial-area recent-property" style="background-color: #FCFCFC; padding-bottom: 15px;">
    <div class="container">
      <div class="row">
        <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title"></div>
      </div>
      <div class="row">
        <div class="col-xs-3 m-padding">
          <div id="my" class="welcome-estate">
            <div class="welcome-icon">
              <i class="pe-7s-users pe-4x"></i>
            </div>
            <h4><strong>내정보관리</strong></h4>
          </div>
        </div>
        <div class="col-xs-3 m-padding">
          <div id="bidlist" class="welcome-estate">
            <div class="welcome-icon">
              <i class="pe-7s-pen pe-4x"></i>
            </div>
            <h4><strong>역경매신청현황</strong></h4>
          </div>
        </div>
        <div class="col-xs-3 m-padding">
          <div id="interest" class="welcome-estate">
            <div class="welcome-icon">
              <i class="pe-7s-notebook pe-4x"></i>
            </div>
            <h4><strong>관심업체</strong></h4>
          </div>
        </div>
        <c:if test="${login.role eq 'users'}">
        <div class="col-xs-3 m-padding">
          <div id="like" class="welcome-estate">
            <div class="welcome-icon">
              <i class="pe-7s-wallet pe-4x"></i>
            </div>
            <h4><strong>관심상품</strong></h4>
          </div>
        </div>
        </c:if>
        <c:if test="${login.role ne 'users' and login.role ne 'admin'}">
        <div class="col-xs-3 m-padding">
          <div id="product" class="welcome-estate">
            <div class="welcome-icon">
              <i class="pe-7s-wallet pe-4x"></i>
            </div>
            <h4><strong>나의 상품보기</strong></h4>
          </div>
        </div>
        </c:if>
      </div>
    </div>
  </div>
  
  <%@include file="../../include/bottom.jsp"%>
  
</body>
</html>