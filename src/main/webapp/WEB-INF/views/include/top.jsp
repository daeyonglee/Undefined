<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
		<title>Home page</title>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
		<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
		<!-- <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
		<link rel="icon" href="favicon.ico" type="image/x-icon"> -->
		
		<link rel="stylesheet" href="/resources/assets/css/normalize.css">
		<link rel="stylesheet" href="/resources/assets/css/font-awesome.min.css">
		<link rel="stylesheet" href="/resources/assets/css/fontello.css">
		<link href="/resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
		<link href="/resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
		<link href="/resources/assets/css/animate.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="/resources/assets/css/bootstrap-select.min.css"> 
		<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="/resources/assets/css/icheck.min_all.css">
		<link rel="stylesheet" href="/resources/assets/css/price-range.css">
		<link rel="stylesheet" href="/resources/assets/css/owl.carousel.css">  
		<link rel="stylesheet" href="/resources/assets/css/owl.theme.css">
		<link rel="stylesheet" href="/resources/assets/css/owl.transitions.css">
		<link rel="stylesheet" href="/resources/assets/css/style.css">
		<link rel="stylesheet" href="/resources/assets/css/responsive.css">
		
		<script src="/resources/assets/js/modernizr-2.6.2.min.js"></script>
		
		<script src="/resources/assets/js/jquery-1.10.2.min.js"></script> 
		<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
		<script src="/resources/assets/js/bootstrap-select.min.js"></script>
		<script src="/resources/assets/js/bootstrap-hover-dropdown.js"></script>
		
		<script src="/resources/assets/js/easypiechart.min.js"></script>
		<script src="/resources/assets/js/jquery.easypiechart.min.js"></script>
		
		<script src="/resources/assets/js/owl.carousel.min.js"></script>
		<script src="/resources/assets/js/wow.js"></script>
		
		<script src="/resources/assets/js/icheck.min.js"></script>
		<script src="/resources/assets/js/price-range.js"></script>
		
		<script src="/resources/assets/js/main.js"></script>
    <script src="/resources/assets/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
    <script src="/resources/assets/js/jquery.validate.min.js"></script>
</head>
<body>
<div id="preloader">
	<div id="status">&nbsp;</div>
</div>
<div class="header-connect">
<div class="container">
    <div class="row">
        <div class="col-md-5 col-sm-8  col-xs-12">
            <div class="header-half header-call">
                <!-- <p>
                    <span><i class="pe-7s-call"></i> +1 234 567 7890</span>
                    <span><i class="pe-7s-mail"></i> your@company.com</span>
                </p> -->
                </div>
            </div>
            <div class="col-md-7 col-md-offset-5  col-sm-3 col-sm-offset-1  col-xs-12">
                <div class="header-half header-social">
                		<ul class="list-inline header-loginbar">
                      <!-- 로그인 여부에 따라 li 변경 -->
                      <c:choose>
                        <c:when test="${null ne sessionScope.login || null ne cookie.loginCookie.value}">
                        	<c:if test="${sessionScope.login.role ne 'admin'}">
                              <li><b>${sessionScope.login.nm}님</b></li>
  	                          <li><a href="/user/logout">로그아웃</a></li>
  	                          <li><a href="/user/mypage/index">마이페이지</a></li>
  	                          <li><a href="#">고객센터</a></li>
                        		</c:if>
                        		<c:if test="${sessionScope.login.role eq 'admin'}">
                              <li><b>${sessionScope.login.nm}님</b></li>
                        			<li><a href="/user/logout">로그아웃</a></li>
  	                          <li><a href="/user/mypage/index">관리자페이지</a></li>
  	                          <li><a href="#">고객센터</a></li>
                        	</c:if>
                        </c:when>
                        <c:otherwise>
                          <li><a href="/user/login">로그인</a></li>
                          <li><a href="/user/join">회원가입</a></li>
                          <li><a href="/usercenter/main">고객센터</a></li>
                        </c:otherwise>
                      </c:choose>
                		</ul>
                    <!-- <ul class="list-inline">
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-vine"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                    </ul>-->
                </div>
            </div>
        </div>
    </div>
</div>        
<!--End top header -->

<nav class="navbar navbar-default ">
 <div class="container">
     <!-- Brand and toggle get grouped for better mobile display -->
     <div class="navbar-header">
         <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
             <span class="sr-only">Toggle navigation</span>
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
         </button>
         <a class="navbar-brand" href="/"><img src="/resources/assets/img/logo.png" alt=""></a>
     </div>

     <!-- Collect the nav links, forms, and other content for toggling -->
     <div class="collapse navbar-collapse yamm" id="navigation">
         <!-- <div class="button navbar-right">
             <button class="navbar-btn nav-button wow bounceInRight login" onclick=" window.open('register.html')" data-wow-delay="0.45s">Login</button>
             <button class="navbar-btn nav-button wow fadeInRight" onclick=" window.open('submit-property.html')" data-wow-delay="0.48s">Submit</button>
         </div> -->
         <ul class="main-nav nav navbar-nav navbar-right">
             <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="/">HOME</a></li>
             <li class="wow fadeInDown" data-wow-delay="0.2s"><a class="" href="/recommend/index">통합추천</a></li>
             <li class="dropdown ymm-sw " data-wow-delay="0.3s">
               <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">역경매<b class="caret"></b></a>
               <ul class="dropdown-menu navbar-nav">
                   <li>
                       <a href="/auction/intro">스드메 역경매란?</a>
                   </li>
                   <li>
                       <a href="/auction/index">스드메 역경매 </a>
                   </li>
               </ul>
             </li>
             <li class="dropdown ymm-sw " data-wow-delay="0.3s">
               <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">업체정보<b class="caret"></b></a>
               <ul class="dropdown-menu navbar-nav">
                   <li>
                       <a href="/company/slist">업체 찾기</a>
                   </li>
                   <!-- <li>
                       <a href="index-3.html">Home Style 3</a>
                   </li>
                   <li>
                       <a href="index-4.html">Home Style 4</a>
                   </li>
                   <li>
                       <a href="index-5.html">Home Style 5</a>
                   </li> -->
               </ul>
             </li>

             <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="/sarticle/list?board_no=1">자유게시판</a></li>
             <li class="wow fadeInDown" data-wow-delay="0.5s"><a href="/sarticle/list?board_no=2">공지사항</a></li>
         </ul>
     </div><!-- /.navbar-collapse -->
 </div><!-- /.container-fluid -->
</nav>
<!-- End of nav bar -->
</body>

