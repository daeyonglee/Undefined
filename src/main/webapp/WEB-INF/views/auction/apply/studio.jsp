<%@ page contentType="text/html; charset=UTF-8"%>
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
<link rel="stylesheet" href="/resources/assets/css/user/join.css">

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="/resources/assets/js/user/join.js"></script>

<style type="text/css">
#col {
padding-top: 5px;
padding-bottom: 5px;
}

#wizardProperty{
height: 500px;
}

#button{
width: 20%;
}

</style>
</head>
<body>
  <div class="page-head">
    <div class="container">
      <div class="row">
        <div class="page-head-content">
          <h1 class="page-title">
            <span>역경매 신청서</span>
          </h1>
        </div>
      </div>
    </div>
  </div>
  <!-- End page header -->

  <!-- property area -->
  <!-- property area -->
  <div class="content-area submit-property"style="background-color: #FCFCFC;">&nbsp;
    <div class="container">
      <div class="clearfix">
        <div class="wizard-container">

          <div class="wizard-card ct-wizard-orange" id="wizardProperty">
            <form action="">
              <div class="wizard-header"></div>
              <ul>
                <li><a href="#step1" data-toggle="tab">역경매 신청하기</a></li>
              </ul>

              <div class="tab-content">

                <div class="tab-pane" id="step1">
                    <div class="col-lg-12">
                      
                      <!--  업체 종류 체크 박스 -->
                        <div class="div">
                         <div class="col-lg-2">
                          <label>업체 종류</label></div>
                          <div  class="col-lg-10">
                           <div class="checkbox">
                            <label> <input type="radio" name="type" value="company"  /> <strong>스튜디오</strong></label> 
                            <label> <input type="radio" name="type" value="company" /> <strong>드레스</strong></label> 
                            <label> <input type="radio" name="type" value="company" checked="checked" /> <strong>메이크업</strong></label>
                          </div></div>
                         </div>
                        
                        <!--  인적사항 기입란 -->
                        <div class="col-lg-2" id="col">
                        <label>이름</label></div>
                        <div class="col-lg-10" id="col">
                         <div class="col-lg-6"><input class='form-control' type="text" placeholder='ex. 홍길동'></div>
                         </div>
                      
                        <div class="col-lg-2" id="col"><label>연락처</label></div>
                         <div class="col-lg-10" id="col">
                         <div class="col-lg-6"><input class='form-control' type="tel" placeholder='ex. 010-5555-6666'></div>
                         </div>
                        
                        <div class="col-lg-2" id="col"><label>예식 희망 지역</label></div>
                        <div class="col-lg-10" id="col">
                         <div class="col-lg-3"><input class='form-control' type="text" placeholder='ex. 1지망'></div>
                         <div class="col-lg-3"><input class='form-control' type="text" placeholder='ex. 2지망'></div>
                         <div class="col-lg-3"><input class='form-control' type="text" placeholder='ex. 3지망'></div>
                         </div> 
                                       
                          <div class="col-lg-2" id="col"><label>예식 희망 일자</label></div>
                           <div class="col-lg-10" id="col">
                            <div class="col-lg-3"><input class='form-control' type="text" placeholder='ex. 1지망'></div>
                            <div class="col-lg-3"><input class='form-control' type="text" placeholder='ex. 2지망'></div>
                            <div class="col-lg-3"><input class='form-control' type="text" placeholder='ex. 3지망'></div>
                           </div>
                        
                           <div class="col-lg-2" id="col"><label>예식 희망 시간</label></div>
                           <div class="col-lg-10" id="col">
                            <div class="col-lg-3"><input class='form-control' type="text" placeholder='ex. 1지망'></div>
                            <div class="col-lg-3"><input class='form-control' type="text" placeholder='ex. 2지망'></div>
                            <div class="col-lg-3"><input class='form-control' type="text" placeholder='ex. 3지망'></div>
                           </div>
                        
                           <div class="col-lg-2" id="col"> <label>기타 희망 사항</label></div>
                           <div class="col-lg-10" id="col">
                           <textarea class='form-control' maxlength='1000'></textarea>
                           </div>
                           
                           
                          </div>
                        </div>
                        <div class="col-lg-4"></div>
                      </div>
                    </form>
                   </div>
                     
                     <!--  submit 버튼   -->
                      <span id=button>
                         <input type='button' class='btn-primary' id="submit" name='submit' value='신청' />
                         <input type='button' class='btn-primary' id="cancel" name='cancel' value='취소' />
                        </span>
                        <div class="clearfix"></div>
                          
                          
                         </div>
                         </div>
                       </div>
                     </div>

          <!-- End submit form -->
     <script>
      var result = '${msg}';

      if (result == 'SUCCESS') {
        alert("처리가 완료되었습니다.");
      }
      </script>

  <%@include file="../../include/bottom.jsp"%>

</body>
</html>