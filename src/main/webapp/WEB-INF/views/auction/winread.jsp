<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../include/top.jsp"%>
<!DOCTYPE html>

<html class="no-js">
<!--<![endif]-->
<head>
<link rel="stylesheet" href="/resources/assets/css/wizard.css">
<link rel="stylesheet" href="/resources/assets/css/user/join.css">

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="/resources/assets/js/user/join.js"></script>

</head>
<body>
  <div class="page-head">
    <div class="container">
      <div class="row">
        <div class="page-head-content">
          <h1 class="page-title">
            <span>낙찰서</span>
          </h1>
        </div>
      </div>
    </div>
  </div>


  <article class="container">
          <form role = "form" method="post">
          <input type="hidden" name="no" value="${Auction.no}" />
          <input type="hidden" name="type" value="${Auction.type}" />
          </form>
  


    <div class="content-area submit-property"
      style="background-color: #FCFCFC;">
      &nbsp;
      <div class="container">
        <div class="clearfix">
          <div class="wizard-container">

            <div class="wizard-card ct-wizard-orange"
              id="wizardProperty">
              <form id="applyForm" method="post">
              
                <div class="wizard-header"></div>
                <ul>
                  <li><a href="#step1" data-toggle="tab">낙찰서</a></li>
                </ul>

                <div class="tab-content">

                  <div class="tab-pane" id="step1">
                    <div class="col-lg-12">

                      <!--  인적사항 기입란 -->
                      <div class="col-lg-2" id="col">
                        <label>업체종류</label>
                      </div>
                      <div class="col-lg-10" id="col">
                        <div class="col-lg-6">
                          <input class='form-control' type="text" name="type" readonly="readonly" value="${Auction.type}">
                        </div>
                      </div>

                      <!--  인적사항 기입란 -->
                      <div class="col-lg-2" id="col">
                        <label>이름</label>
                      </div>
                      <div class="col-lg-10" id="col">
                        <div class="col-lg-6">
                          <input class='form-control' type="text"
                            name="writer" readonly="readonly"
                            value="${Auction.writer} ">
                        </div>
                      </div>

                      <div class="col-lg-2" id="col">
                        <label>연락처</label>
                      </div>
                      <div class="col-lg-10" id="col">
                        <div class="col-lg-6">
                          <input class='form-control'
                            readonly="readonly" type="tel" name="tel"
                            value="${Auction.tel}">
                        </div>
                      </div>
                      
                       <div class="col-lg-2" id="col">
                        <label>미팅날짜</label>
                      </div>
                      <div class="col-lg-10" id="col">
                        <div class="col-lg-3">
                          <input class='form-control' type="text"
                            name="mdate" readonly="readonly"
                            value="">
                        </div>
                      </div>

                      <div class="col-lg-2" id="col">
                        <label>예식 지역</label>
                      </div>
                      <div class="col-lg-10" id="col">
                        <div class="col-lg-3">
                          <input class='form-control' type="text"
                            name="loc" readonly="readonly"
                            value="${Auction.loc}">
                        </div>
                      </div>

                      <div class="col-lg-2" id="col">
                        <label>예식 일자</label>
                      </div>
                      <div class="col-lg-10" id="col">
                        <div class="col-lg-3">
                          <input class='form-control' type="text"
                            name="day" readonly="readonly"
                            value="${Auction.day}">
                        </div>
                      </div>

                      <div class="col-lg-2" id="col">
                        <label>예식 시간</label>
                      </div>
                      <div class="col-lg-10" id="col">
                        <div class="col-lg-3">
                          <input class='form-control' type="text"
                            name="time" readonly="readonly"
                            value="${Auction.time}">
                      </div>
                      </div>
                      
                      <div class="col-lg-2" id="col">
                        <label>할인율</label>
                      </div>
                      <div class="col-lg-10" id="col">
                        <div class="col-lg-3">
                          <input class='form-control' type="text"
                            name="할인율" readonly="readonly"
                            value="">
                      </div>
                      </div>

                      <div class="col-lg-2" id="col">
                        <label>기타 희망 사항</label>
                      </div>
                      <div class="col-lg-10" id="col">
                        <textarea class='form-control' maxlength='1000'
                          name="memo" readonly="readonly">${Auction.memo}</textarea>
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
              <input type='button' class='btn-primary' id="submit" name='submit' value='글목록' style="width: 140px; padding-top: 5px; padding-bottom: 5px" />              
              </span>
            </div>


          </div>
        </div>
      </div>
    </div>



  </article>


  <script>
			$(document).ready(function() {
				var formObj = $("form[role='form']");


				$(".btn-primary").on("click", function() {
					self.location = "win";
				});
			});
		</script>




  <%@include file="../include/bottom.jsp"%>
</body>
</html>