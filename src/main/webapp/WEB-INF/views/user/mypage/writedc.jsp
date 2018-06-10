<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@include file="../../include/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://www.jqueryscript.net/css/top.css" rel="stylesheet" type="text/css">
<title>드레스샵 상품 등록</title>
<script src="/resources/assets/js/wizard.js" type="text/javascript"></script>
</head>

<div class="page-head">
  <div class="container">
    <div class="row">
      <div class="page-head-content">
        <h1 class="page-title">
          상품등록 : <span class="orange strong">DRESS</span>
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
            <b>드레스 상품</b> 정보 등록 <br> <small>상품정보를 등록해주세요.</small>
          </h3>
          <hr>
        </div>
        
        <form action="/user/mypage/writedc" method="POST" enctype="multipart/form-data">
        <div class="clear">
          <div class="picture-container">
            <div class="picture">
              <img class="picture-src" id="wizardPicturePreview" title="" /> 
              <input type="file" id="wizard-picture" name="dpImage">
            </div>
            <h6>Choose Picture</h6>
          </div>

        </div>

        <div class="clear">
          <div class="form-group">
            <label>상품명</label> 
            <input name="dpNm" type="text" class="form-control">
          </div>
          <div class="form-group">
            <label>가격</label> 
            <input name="dpPrice" type="text" class="form-control">
          </div>
        </div>

        <label> 드레스 상세 옵션 </label>

        <div>
          <div class="col-sm-12 padding-top-15">
             <select name="dpStyle" class="selectpicker show-tick form-control">
                <option>-Style-</option>
                <option value="머메이드라인">머메이드 라인</option>
                <option value="A라인">A라인</option>
                <option value="H라인">H라인</option>
                <option value="벨라인">벨라인</option>
                <option value="엠파이어라인">엠파이어라인</option>
                <option value="프린세스라인">프린세스라인</option>
              </select>
          </div>



        </div>


      <div class="wizard-footer">
        <div class="pull-right">
          <input type='submit' class='btn btn-finish btn-primary'
            name='finish' value='Finish' />
        </div>
      </div>
      </form>
      
      </div>
    </div>
    <!-- end row -->

  </div>
</div>




<%@include file="../../include/bottom.jsp"%>

</body>
</html>