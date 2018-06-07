<%@ page contentType="text/html; charset=UTF-8"%>
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

<!--  datepicker 관련 소스들 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!--   <script src="https://code.jquery.com/jquery-1.12.4.js"></script> --> 
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!--  timepicker 관련 소스들 -->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

<script type="text/javascript" src="/resources/js/user/join.js"></script>
<script>

$(document).ready(function() {
      
       theForm=document.applyForm
   
    $('#submitBtn').click(function () {
        $("#applyForm").submit();
    });
  
});
</script>

<script>
      var result = '${msg}';

      if (result == 'SUCCESS') {
        alert("처리가 완료되었습니다.");
      }
</script>

<script>
  $( function() {
      $( ".datepicker" ).datepicker({
         dateFormat: 'yy-mm-dd'
      });
       
      
      $('.timepicker').timepicker({
           timeFormat: 'HH:mm',
           minTime : '9',
           maxTime : '20',
       });

  });
  </script> 
  
  
<style type="text/css">
#col {
   padding-top: 5px;
   padding-bottom: 5px;
}

#wizardProperty {
   height: 500px;
}

#button {
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
  <div class="content-area submit-property"
    style="background-color: #FCFCFC;">
    &nbsp;
    <div class="container">
      <div class="clearfix">
        <div class="wizard-container">

          <div class="wizard-card ct-wizard-orange" id="wizardProperty">
              <div class="wizard-header"></div>
              <ul>
                <li><a href="#step1" data-toggle="tab">역경매 신청하기</a></li>
              </ul>
  
            <form id="applyForm" name = "applyForm" method="post">
              <div class="tab-content">
                <div class="tab-pane" id="step1">
                  <div class="col-lg-12">

                    <!--  업체 종류 체크 박스 -->
                    <div class="div">
                      <div class="col-lg-2">
                        <label>업체 종류</label>
                      </div>
                      
                      <div class="col-lg-10">
                        <div class="checkbox">
                          <label> <input type="radio" name="type" value="studio"  /><strong>스튜디오</strong></label> 
                            <label> <input type="radio" name="type" value="dress" /> <strong>드레스</strong></label>
                          <label> <input type="radio" name="type" value="makeup" /> <strong>메이크업</strong></label>
                        </div>
                      </div>
                    </div>

                    <!--  인적사항 기입란 -->
                    <div class="col-lg-2" id="col">
                      <label>이름</label>
                    </div>
                    <div class="col-lg-10" id="col">
                      <div class="col-lg-6">
                        <input class='form-control' type="text" name="writer" id="name" value = "${login.nm}" >
                      </div>
                    </div>

<!--                     <div class="col-lg-2" id="col">
                      <label>연락처</label>
                    </div>
                    <div class="col-lg-10" id="col">
                      <div class="col-lg-6">
                        <input class='form-control' type="tel" placeholder='ex. 010-5555-6666'>
                      </div>
                    </div> -->

                    <div class="col-lg-2" id="col">
                      <label>예식 희망 지역</label>
                    </div>
                    <div class="col-lg-10" id="col">
                      <div class="col-lg-3">
                        <input class='form-control' type="text" name="locFirst" id="locFirst" placeholder='ex. 1지망(필수) '>
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control' type="text" name="locSecond" id="locSecond" placeholder='ex. 2지망(필수) '>
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control' type="text" name="locThird" id="locThird" placeholder='ex. 3지망(필수) '>
                      </div>
                    </div>

                    <div class="col-lg-2" id="col">
                      <label>예식 희망 일자 (1지망)</label>
                    </div>                   
                    <div class="col-lg-10" id="col">
                      <div class="col-lg-3">
                        <input class='form-control datepicker' type="text" name="dayFirst" placeholder='ex. 1지망 날짜(필수)'>
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control timepicker' type="text" name="timeFirst" placeholder='ex. 1지망 시간(필수)'>
                      </div>
                     </div>
                     
                     <div class="col-lg-2" id="col">
                     <label>예식 희망 일자 (2지망)</label>
                    </div>
                     
                     <div class="col-lg-10" id="col">
                     <div class="col-lg-3">
                        <input class='form-control datepicker' type="text" name="daySecond" placeholder='ex. 2지망 날짜(필수)'>
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control timepicker' type="text" name="timeSecond" placeholder='ex. 2지망 시간(필수)'>
                      </div>
                      </div>
                      
                      <div class="col-lg-2" id="col">
                      <label>예식 희망 일자 (3지망)</label>
                      </div>                      
                     
                      <div class="col-lg-10" id="col">                     
                      <div class="col-lg-3">
                        <input class='form-control datepicker' type="text" name="dayThird" placeholder='ex. 3지망 날짜(필수)'>
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control timepicker' type="text" name="timeThird" placeholder='ex. 3지망 시간(필수)'>
                      </div>
                      </div>
                                        
                     <div class="col-lg-2" id="col">
                      <label>입찰 마감일</label>
                    </div>
                    <div class="col-lg-10" id="col">
                      <div class="col-lg-3">
                        <input class='form-control datepicker' type="text" name="deadline" placeholder='ex. 2018-06-30(필수)'>
                      </div>
                    </div>

                    <div class="col-lg-2" id="col">
                      <label>희망 사항</label>
                    </div>
                    <div class="col-lg-10" id="col">
                      <textarea class='form-control' name="memo" maxlength='1000' placeholder=" ex.머메이드 드레스 , ex.스튜디오 야외촬영 , ex.메이크업 신랑신부(가족포함) "></textarea>
                    </div>
                  </div>
                </div>
                <div class="col-lg-4"></div>
              </div>
            </form>
          </div>
          
          

          <!--  submit 버튼   -->
          <div class="form-group text-center">
          <span id=button> 
            <input type='button' class='btn-primary' id="submitBtn" name='submit' value='신청' style="width: 140px"/>
          <a href="list"><input type='button' class='btn-primary' id="cancelBtn" name='cancel' value='취소' style="width: 140px" /></a>
          </span></div>
          <div class="clearfix"></div>
        </div>
      </div>
    </div>
  </div>



  <!-- End submit form -->

  <%@include file="../include/bottom.jsp"%>

</body>
</html>