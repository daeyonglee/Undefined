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

<script>
      var result = '${msg}';

      if (result == 'SUCCESS') {
        alert("처리가 완료되었습니다.");
      }
</script>
<style type="text/css">
#col {
	padding-top: 5px;
	padding-bottom: 5px;
}

#wizardProperty {
	height: 600px;
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
            <span>역경매 입찰서</span>
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
                <li><a href="#step1" data-toggle="tab">역경매 입찰하기</a></li>
              </ul>
  
            <form role="form" method="post">
              <div class="tab-content">
                <div class="tab-pane" id="step1">
                  <div class="col-lg-12">

                    <!--  인적사항 기입란 -->
                    <div class="col-lg-2" id="col">
                      <label>업체 종류</label>
                    </div>
                    <div class="col-lg-10" id="col">
                      <div class="col-lg-3">
                        <input class='form-control' type="text" name="locFirst" id="locFirst" value= "${Auction.type }" readonly="readonly">
                      </div>
                    </div>
                                        
                     <div class="col-lg-2" id="col">
                      <label>업체 이름</label>
                    </div>
                    <div class="col-lg-10" id="col">
                      <div class="col-lg-3">
                        <input class='form-control' type="text" name="company" id="company" value="${Company.nm }" readonly="readonly">
                      </div>
                    </div>

                    <div class="col-lg-2" id="col">
                      <label>업체 전화번호</label>
                    </div>
                    <div class="col-lg-10" id="col">
                      <div class="col-lg-3">
                        <input class='form-control' type="tel" name="tel" id="tel" value="${Company.tel }" readonly="readonly">
                      </div>
                    </div>                    
                    
                    <div class="col-lg-2" id="col">
                      <label>업체 주소</label>
                    </div>
                    <div class="col-lg-10" id="col">
                      <div class="col-lg-6">
                        <input class='form-control' type="text" name="locFirst" id="locFirst" value="${Company.addr }" readonly="readonly">
                      </div>
                    </div>                    
                    
                    <div class="col-lg-2" id="col">
                      <label>상품 리스트</label>
                    </div>
                    <div class="col-lg-10" id="col" style="height: 55px">
                      <div class="col-lg-3">
                        <input class='form-control' type="checkbox" name="locFirst" id="locFirst" > image-1
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control' type="checkbox" name="locSecond" id="locSecond"> image-2
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control' type="checkbox" name="locThird" id="locThird"> image-3
                      </div>
                    </div>
                    
                    <div class="col-lg-2" id="col">
                      <label></label>
                    </div>
                    <div class="col-lg-10" id="col" style="height: 55px">
                      <div class="col-lg-3">
                        <input class='form-control' type="checkbox" name="locFirst" id="locFirst" > image-1
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control' type="checkbox" name="locSecond" id="locSecond"> image-2
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control' type="checkbox" name="locThird" id="locThird"> image-3
                      </div>
                    </div>
                    <div class="col-lg-2" id="col">
                      <label>상담 날짜</label>
                    </div>
                    <div class="col-lg-10" id="col" style="height: 55px">
                      <div class="col-lg-3">
                        <input class='form-control' type="checkbox" name="locFirst" id="locFirst">${Auction.day }
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control' type="checkbox" name="locSecond" id="locSecond"> 2018-06-02
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control' type="checkbox" name="locThird" id="locThird"> 2018-06-03
                      </div>
                      <div class="col-lg-3">
                        <input class='form-control' type="date" name="locThird" id="locThird">  
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
<script>
      $(document).ready(function() {
        var formObj = $("form[role='form']");

        $("#submitBtn").on("click", function() {
          formObj.submit();
        });
        $("#cancelbtn").on("click", function() {
          self.location = "list";	
        });

      });
    </script>


  <!-- End submit form -->

  <%@include file="../include/bottom.jsp"%>

</body>
</html>