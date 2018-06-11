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
<script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="/resources/js/user/join.js"></script>
<script>

$(document).ready(function() {
 
    $('#submitBtn').click(function () {
       alert("신청 버튼 클릭");
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
      $( ".datepicker" ).datepicker({});
      
      $('.timepicker').timepicker({
           timeFormat: 'h:mm p',
           interval: 30,
           minTime: '9',
           maxTime: '7:00pm',
           startTime: '11:00',
           dynamic: false,
           dropdown: true,
           scrollbar: false
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
  
            <form id="applyForm" method="post">
              <div class="tab-content">
                <div class="tab-pane" id="step1">
                  <div class="col-lg-12">

                    <!--  업체 종류 체크 박스 -->
                    <div id="accordion">
                    <div class="div">
                      <div class="col-lg-2">
                        <label>업체 종류</label>
                      </div>
                      
                      <div class="col-lg-10"> 
                    <button name="type" value="studio" class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapse1" aria-expanded="true" aria-controls="collapse1">
                      스튜디오
                    </button>                    
                    <button name="type" value="dress"class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapse2" aria-expanded="false" aria-controls="collapse2">
                      드레스
                    </button>                   
                    <button name="type" value="makeup" class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapse3" aria-expanded="false" aria-controls="collapse3">
                      메이크업
                    </button>
                      </div>
                    </div>
                    
                     
                    
                    <div class="collapse" id="collapse1">
                    <div class="card card-body">
                        <div class="col-lg-2" id="col">
                      <label>옵션</label>
                    </div>
                    <div class="col-lg-10" id="col" style="height: 55px">
                      <div class="col-lg-3">
                        <input class='form-control' type="checkbox" name="locFirst" id="locFirst" > 실/내외 촬영
                      </div>
                      <div class="col-lg-4">
                        <input class='form-control' type="checkbox" name="locSecond" id="locSecond"> 토탈샵(메이크업+드레스 제공)
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control' type="checkbox" name="locThird" id="locThird"> 액자/앨범/비디오
                      </div>
                    </div>
                    </div>
                  </div>
                  
                  <div class="collapse" id="collapse2">
                    <div class="card card-body">
                      <div class="col-lg-2">
                        <label>옵션</label>
                      </div>                      
                      <div class="col-lg-10">
                        <div class="checkbox" >
                          <label> <input type="radio" name="type" value="studio"  /> <strong>머메이드라인</strong></label> 
                          <label> <input type="radio" name="type" value="dress" />   <strong>A라인</strong></label>
                          <label> <input type="radio" name="type" value="makeup" />  <strong>H라인</strong></label>
                          <label> <input type="radio" name="type" value="makeup" />  <strong>벨라인</strong></label>
                          <label> <input type="radio" name="type" value="makeup" />  <strong>엠파이어라인</strong></label>
                          <label> <input type="radio" name="type" value="makeup" />  <strong>프린세스라인</strong></label>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <div class="collapse" id="collapse3">
                    <div class="card card-body">
                      <div class="col-lg-2">
                        <label>옵션</label>
                      </div>                      
                      <div class="col-lg-10">
                        <div class="checkbox" >
                          <label> <input type="radio" name="type" value="studio"  /> <strong>헤어</strong></label> 
                          <label> <input type="radio" name="type" value="dress" />   <strong>신랑신부(가족포함)</strong></label>
                          <label> <input type="radio" name="type" value="makeup" />  <strong>악세사리</strong></label>
                        </div>
                      </div>
                    </div>
                  </div>
                  </div>  

                    <!--  인적사항 기입란 -->
                    <div class="col-lg-2" id="col">
                      <label>이름</label>
                    </div>
                    <div class="col-lg-10" id="col">
                      <div class="col-lg-6">
                        <input class='form-control' type="text" name="writer" id="name" value = "" readonly="readonly">
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
                        <input class='form-control' type="text" name="locFirst" id="locFirst" placeholder='ex. 1지망'>
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control' type="text" name="locSecond" id="locSecond" placeholder='ex. 2지망'>
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control' type="text" name="locThird" id="locThird" placeholder='ex. 3지망'>
                      </div>
                    </div>

                    <div class="col-lg-2" id="col">
                      <label>예식 희망 일자</label>
                    </div>
                    
                    <div class="col-lg-10" id="col">
                      <div class="col-lg-3">
                        <input data-format="yyyy-MM-dd" class='form-control datepicker' type="text" name="dayFirst" placeholder='ex. 1지망 날짜(필수)'>
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control timepicker' type="text" name="timeFirst" placeholder='ex. 1지망 시간(필수)'>
                      </div>                      
                      <div class="col-lg-3">
                        <input class='form-control datepicker' type="text" name="daySecont" placeholder='ex. 2지망 날짜(필수)'>
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control timepicker' type="text" name="timeSecond" placeholder='ex. 2지망 시간(필수)'>
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control datepicker' type="text" name="dayThird" placeholder='ex. 3지망 날짜(필수)'>
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control timepicker' type="text" name="timeThird" placeholder='ex. 3지망 시간(필수)'>
                      </div>
                    </div>
                    
                    <div class="col-lg-2" id="col">
                      <label>상담 날짜</label>
                    </div>
                    <div class="col-lg-10" id="col">
                      <div class="col-lg-3">
                        <input class='form-control datepicker' type="text" name ="meetDatefirst" placeholder='ex. 1지망'>
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control datepicker' type="text" name ="meetDateSecond" placeholder='ex. 2지망'>
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control datepicker' type="text" name ="meetDateThird" placeholder='ex. 3지망'>
                      </div>
                    </div>
                    
                     <div class="col-lg-2" id="col">
                      <label>입찰 마감일</label>
                    </div>
                    <div class="col-lg-10" id="col">
                      <div class="col-lg-3">
                        <input class='form-control' type="text" name="deadline" placeholder='ex. 2018-06-30'>
                      </div>
                    </div>

                    <div class="col-lg-2" id="col">
                      <label>기타 희망 사항</label>
                    </div>
                    <div class="col-lg-10" id="col">
                      <textarea class='form-control' name="memo" maxlength='1000'></textarea>
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
            <input type='button' class='btn-primary' id="cancelBtn" name='cancel' value='취소' style="width: 140px" />
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