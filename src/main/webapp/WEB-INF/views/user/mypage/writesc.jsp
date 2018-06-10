<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@include file="../../include/top.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/assets/css/wizard.css">
<link href="https://www.jqueryscript.net/css/top.css" rel="stylesheet" type="text/css">
<title>스튜디오 상품 등록</title>
<script src="/resources/assets/js/wizard.js" type="text/javascript"></script>
</head>
<body>
<div class="page-head">
  <div class="container">
    <div class="row">
      <div class="page-head-content">
        <h1 class="page-title">
          상품등록 : <span class="orange strong">STUDIO</span>
        </h1>
      </div>
    </div>
  </div>
</div>
<!-- End page header -->

<!-- property area -->
<div class="content-area user-profiel" style="background-color: #FCFCFC;">&nbsp;
  <div class="container">
    <div class="row">
      <div class="col-sm-10 col-sm-offset-1 profiel-container">

        <div class="profiel-header">
          <h3>
            <b>스튜디오 상품</b> 정보 등록 <br> <small>상품정보를 등록해주세요.</small>
          </h3>
          <hr>
        </div>
        <form action="/user/mypage/writesc" method="post" enctype="multipart/form-data">
        <div class="clear">
          <div class="picture-container">
            <div class="picture">
              <img class="picture-src" id="wizardPicturePreview" title="" /> 
              <input type="file" id="wizard-picture" name="spImage">
            </div>
            <h6>Choose Picture</h6>
          </div>

        </div>

        <div class="clear">
          <div class="form-group">
            <label> 상품 이름 </label> 
            <input name="spNm" type="text" class="form-control">
          </div>
          <div class="form-group">
            <label>가격</label> 
            <input name="spPrice" type="text" class="form-control">
          </div>
        </div>

      <label> 스튜디오 상세 옵션 </label>

        <div class="col-sm-12 padding-top-15">
          <div class="col-sm-3">
            <div class="form-group">
              <div class="checkbox">
               <input type="checkbox" name="spApvYn" value="Y">  액자/앨범/비디오
              </div>
            </div>
          </div>
          
          <div class="col-sm-3">
            <div class="form-group">
              <div class="checkbox">
               <input type="checkbox" name="spTotalYn" value="Y"> 토탈샵 
              </div>
            </div>
          </div>
          
          <div class="col-sm-3">
            <div class="form-group">
              <div class="checkbox">
               <input type="checkbox" name="spShootType" value="INDOOR"> 실내촬영 
              </div>
            </div>
          </div>
          
          <div class="col-sm-3">
            <div class="form-group">
              <div class="checkbox">
               <input type="checkbox" name="spShootType" value="OUTDOOR"> 실외촬영 
              </div>
            </div>
          </div>
        </div>
        
        
        <div class="wizard-footer">
          <div class="pull-right">
            <input type='submit' class='btn btn-finish btn-primary' name='btnRegSp' value='등록하기' />
          </div>
        </div>
        </form>
        <br>
      </div>
      <!-- end row -->
    </div>
  </div>
</div>

<%@include file="../../include/bottom.jsp"%>

</body>
</html>