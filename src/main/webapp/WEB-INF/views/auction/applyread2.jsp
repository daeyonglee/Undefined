<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="" />
  <meta name="author" content="" />

 <!-- css -->
  <link href="http://fonts.googleapis.com/earlyaccess/jejugothic.css" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400italic,700|Open+Sans:300,400,600,700" rel="stylesheet">
  <link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" />
  <link href="/resources/bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="/resources/bootstrap/css/fancybox/jquery.fancybox.css" rel="stylesheet">
  <link href="/resources/bootstrap/css/jcarousel.css" rel="stylesheet" />
  <link href="/resources/bootstrap/css/flexslider.css" rel="stylesheet" />
  <link href="/resources/bootstrap/css/slitslider.css" rel="stylesheet" />
  <link href="/resources/bootstrap/css/style.css" rel="stylesheet" />
  <!-- Theme skin -->
  <link id="t-colors" href="/resources/bootstrap/skins/default.css" rel="stylesheet" />
  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/bootstrap/ico/apple-touch-icon-144-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/resources/bootstrap/ico/apple-touch-icon-114-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/resources/bootstrap/ico/apple-touch-icon-72-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" href="/resources/bootstrap/ico/apple-touch-icon-57-precomposed.png" />
  <link rel="shortcut icon" href="/resources/bootstrap/ico/favicon.png" />
  <!-- 게시물 읽기 -->
</head>

<body>
  
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>About us</h2>
            </div>
          </div>
          <div class="span8">
            <ul class="breadcrumb">
              <li><a href="#"><i class="icon-home"></i></a><i class="icon-angle-right"></i></li>
              <li><a href="#">Pages</a><i class="icon-angle-right"></i></li>
              <li class="active">About us</li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <!-- 바디부분 -->
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span3">
            <ul class="slides">
              <li><a href="#"><img src="/resources/bootstrap/img/partyImg/${party.image}"
                  alt="" class="img-polaroid" /></a></li>
              <li><strong>${party.member}</strong></li>
              <li>SNS</li>
            </ul>
          </div>
          <!-- 포스트 옆 내용 -->
          <div class="span9">
            <ul class="slides">
              <li><h3>[${party.name}]</h3></li>
                <li>모임기간 &emsp;<strong>${party.startdate} ~ ${party.enddate}</strong></li>
                  <p></p>
                    <li>모임장소 &emsp;<strong>${party.place}</strong></li>
                     <p></p>
                       <li>모집정원 &emsp;<strong>총 ${party.recruit}명</strong>|<strong>0명
                       신청 가능</strong></li>
                      <p></p>
            </ul>
            <div class="solidline"></div>
              <div class="row">
                <div class="span9">
                 <ul class="slides">
                   <li>제&emsp;&emsp;목 &emsp;<strong>${party.name}</strong></li>
                     <p></p>
                       <li>내&emsp;&emsp;용 &emsp;<strong>${party.content}</strong></li>
                   <p></p>
            </ul>
                <div class="solidline"></div>
                 <div class="row">
                  <div class="span9">
                   <ul class="slides">
                    <li>신청기간 &emsp;<strong>${party.recstart} ~ ${party.recend}</strong></li>
             </ul></div>
             
             <div class="span9">
              <div class="solidline"></div>
                <strong id="price">
                참가비용&emsp;${party.price}&emsp;</strong>
                 <a href="#" class="btn btn-theme" style="">신청하기</a></div></div>
               </div></div></div>
            <div class="row"></div></div></section>
</body>
</html>