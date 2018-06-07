
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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="/resources/assets/js/user/join.js"></script>

<!--  datepicker 관련 소스들 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!--   <script src="https://code.jquery.com/jquery-1.12.4.js"></script> --> 
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!--  timepicker 관련 소스들 -->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
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

<!--                      업체 종류 체크 박스
                    <div class="div">
                      <div class="col-lg-2">
                        <label>업체 종류</label>
                      </div>
                      
                      <div class="col-lg-10">
                        <div class="checkbox">
                          <label> <input type="radio" name="type" value="studio" checked="checked" /><strong>스튜디오</strong></label> 
                            <label> <input type="radio" name="type" value="dress" /> <strong>드레스</strong></label>
                          <label> <input type="radio" name="type" value="makeup" /> <strong>메이크업</strong></label>
                        </div>
                      </div>
                    </div>
                     -->
      <table class="table table-striped">
        <thead>
        </thead>
        <tbody>
          <tr data-toggle="collapse" data-target="#accordion"  class="clickable">
            <td><p><b>스튜디오 역경매 신청하기</b></p></td>
          </tr>
          <tr>
            <td colspan="3"><div id="accordion" class="collapse">
                                    <!--  인적사항 기입란 -->
                    <div class="col-lg-2" id="col">
                      <label>이름</label>
                    </div>
                    <div class="col-lg-10" id="col">
                      <div class="col-lg-6">
                        <input class='form-control' type="text" name="writer" id="name" value="${auction.writer }">
                      </div>
                    </div>

                    <div class="col-lg-2" id="col">
                      <label>연락처</label>
                    </div>
                    <div class="col-lg-10" id="col">
                      <div class="col-lg-6">
                        <input class='form-control' type="tel" value="${auction.tel }">
                      </div>
                    </div>

                    <div class="col-lg-2" id="col">
                      <label>예식 희망 지역</label>
                    </div>
                    <div class="col-lg-10" id="col">
                      <div class="col-lg-3">
                        <input class='form-control' type="text" name="locFirst" id="locFirst" placeholder='ex. 1지망(필수)'>
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control' type="text" name="locSecond" id="locSecond" placeholder='ex. 2지망(필수)'>
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control' type="text" name="locThird" id="locThird" placeholder='ex. 3지망(필수)'>
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
                      <label>드레스 타입</label>
                    </div>
                    <div class="col-lg-10" id="col" style="height: 55px">
                      <div class="col-lg-3">
                        <input class='form-control' type="checkbox" name="locFirst" id="locFirst" > 엠파이어 라인
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control' type="checkbox" name="locSecond" id="locSecond"> A라인
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control' type="checkbox" name="locThird" id="locThird"> H라인
                      </div>
                    </div>
                    
                    
                     <div class="col-lg-2" id="col">
                      <label>입찰 마감일</label>
                    </div>
                    <div class="col-lg-10" id="col">
                      <div class="col-lg-3">
                        <input class='form-control datepicker' type="text" name="deadline" placeholder='ex. 2018-06-30'>
                      </div>
                    </div>

                    <div class="col-lg-2" id="col">
                      <label>기타 희망 사항</label>
                    </div>
                    <div class="col-lg-10" id="col">
                      <textarea class='form-control' name="memo" maxlength='1000'></textarea>
                    </div></div></td>
          </tr>
          
          <tr data-toggle="collapse" data-target="#accordion1"
            class="clickable">
            <td><p><b>드레스 역경매 신청하기</b></p></td>
          </tr>
          <tr>
            <td colspan="3"><div id="accordion1" class="collapse">
            역경매를 신청하셨다면 담당 플래너를 통해 최종 신청 내용을 점검하시구요... 기다리시면 됩니다!<br><br>                
                최대한 빨리 입찰서를 받으실 수 있도록 도와드리겠습니다.<br><br> 
                업체에서 입찰서가 제출되었다면 제출된 입찰서를 꼼꼼히 살펴보시고 마음에 드는 업체 입찰서의 우측 상단에 있는 '방문예약'이나 '상세상담 신청' 버튼을 클릭하세요.<br><br> 
                담당자가 확인하여 방문예약을 해드리거나 상세 상담을 위한 안내 연락을 드리게됩니다.
                <br><br> 업체나 아이티웨딩 상담센터에 방문하셔서 최종 선택을 하신 후 계약을 하시면 기본적인 결혼준비의 절반은 끝나게 됩니다.<br><br> 감사합니다.</div></td>
          </tr>
          
            <tr data-toggle="collapse" data-target="#accordion2"
            class="clickable">
            <td><p><b>메이크업 역경매 신청하기</b></p></td>
          </tr>
          <tr>
            <td colspan="3"><div id="accordion2" class="collapse">
            웨딩홀 역경매를 신청하신 후 입찰서에 명시되는 견적은 모두 웨딩홀에서 직접 안내하는 내용입니다.<br><br>
            아이티웨딩은 최대한 업체간의 경쟁을 유도하고 고객님에게 더 나은 서비스를 드릴 수 있도록 웨딩홀에 안내하고 있습니다. 또한 웨딩홀에서도 저렴한 견적을 편리하게 입찰 할 수 있도록 돕고 있고요.<br><br>
            간혹 웨딩홀에 먼저 방문하셔서 견적을 받으신 고객님에겐 웨딩홀에서 더 저렴한 견적을 안내해 드리지 못하는 경우가 있습니다.<br><br>
            같은 고객님께 드리는 견적이 달라지기 때문입니다.<br><br>
            이러한 경우를 제외하면 대체로 저렴한 견적서가 제출되게 됩니다.            
            </div></td>
          </tr>
        </tbody>
      </table>
                    


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