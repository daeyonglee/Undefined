<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://www.jqueryscript.net/css/top.css" rel="stylesheet"
  type="text/css">
<title>드레스샵 상품 등록</title>
</head>
<%@include file="../include/top.jsp"%>

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

        <div class="clear">
          <div class="picture-container">
            <div class="picture">
              <img src="assets/img/avatar.png" class="picture-src"
                id="wizardPicturePreview" title="" /> <input
                type="file" id="wizard-picture">
            </div>
            <h6>Choose Picture</h6>
          </div>

        </div>

        <div class="clear">
          <div class="form-group">
            <label> 가게번호 </label> <input name="firstname"
              class="form-control" placeholder="Andrew..." type="text"
              disabled>
          </div>
          <div class="form-group">
            <label> 가게 이름 </label> <input name="Password" type="text"
              class="form-control" placeholder="가게이름" disabled>
          </div>
          <div class="form-group">
            <label> 가격</label> <input name="Password" type="text"
              class="form-control" placeholder="1,000,000(원)">
          </div>
        </div>

        <label> 드레스 상세 옵션 </label>

        <div>
          <div class="col-sm-12 padding-top-15">
             <select id="basic"
              class="selectpicker show-tick form-control">
              <option>-Style-</option>
              <option>머메이드 라인</option>
              <option>A라인</option>
              <option>H라인</option>
              <option>벨라인</option>
              <option>엠파이어라인</option>
              <option>프린세스라인</option>
              </select>
          </div>



        </div>


      <div class="wizard-footer">
        <div class="pull-right">
          <input type='button' class='btn btn-finish btn-primary'
            name='finish' value='Finish' />
        </div>
      </div>
      
      </div>
    </div>
    <!-- end row -->

  </div>
</div>




<%@include file="../include/bottom.jsp"%>

</body>
</html>