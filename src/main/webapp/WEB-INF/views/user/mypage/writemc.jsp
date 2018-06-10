<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@include file="../../include/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://www.jqueryscript.net/css/top.css" rel="stylesheet"
  type="text/css">
<title>메이크업샵 상품 등록</title>
<script src="/resources/assets/js/wizard.js" type="text/javascript"></script>
</head>

<div class="page-head">
  <div class="container">
    <div class="row">
      <div class="page-head-content">
        <h1 class="page-title">
          상품등록 : <span class="orange strong">MAKE UP</span>
        </h1>
      </div>
    </div>
  </div>
</div>
<!-- End page header -->

<!-- property area -->
<div class="content-area user-profiel"
  style="background-color: #FCFCFC;">
  &nbsp;
  <div class="container">
    <div class="row">
      <div class="col-sm-10 col-sm-offset-1 profiel-container">

        <div class="profiel-header">
          <h3>
            <b>메이크업 상품</b> 정보 등록 <br> <small>상품정보를 등록해주세요.</small>
          </h3>
          <hr>
        </div>
				 <form action="/user/mypage/writemc" method="post" enctype="multipart/form-data">
        <div class="clear">
          <div class="picture-container">
            <div class="picture">
              <img class="picture-src" id="wizardPicturePreview" title="" />
              <input type="file" id="wizard-picture" name="mpImage">
            </div>
            <h6>Choose Picture</h6>
          </div>

        </div>

        <div class="clear">
          <div class="form-group">
            <label>상품명</label>
            <input name="mpNm" class="form-control" type="text">
          </div>
          <div class="form-group">
            <label>가격</label>
            <input name="mpPrice" type="text" class="form-control">
          </div>
        </div>

        <label> 메이크업샵 상세 옵션 </label>

        <div class="col-sm-12 padding-top-15">
          <div class="col-sm-4">
            <div class="form-group">
              <div class="checkbox">
                <input type="checkbox" name="mpHairYn" value="Y"> 헤어스타일링 포함
              </div>
            </div>
          </div>

          <div class="col-sm-4">
            <div class="form-group">
              <div class="checkbox">
                <input type="checkbox" name="mpFamilyYn" value="Y"> 가족 포함
              </div>
            </div>
          </div>

          <div class="col-sm-4">
            <div class="form-group">
              <div class="checkbox">
                <input type="checkbox" name="mpAccYn" value="Y"> 악세사리 포함
              </div>
            </div>
          </div>
        </div>


        <div class="wizard-footer">
          <div class="pull-right">
            <input type='submit' class='btn btn-finish btn-primary'
              name='finish' value='등록하기' />
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