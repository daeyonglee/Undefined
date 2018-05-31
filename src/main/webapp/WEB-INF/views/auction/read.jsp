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
            <span>역경매 신청서</span>
          </h1>
        </div>
      </div>
    </div>
  </div>


  <article class="container">


    <div class="content-area submit-property"
      style="background-color: #FCFCFC;">
      &nbsp;
      <div class="container">
        <div class="clearfix">
          <div class="wizard-container">

            <div class="wizard-card ct-wizard-orange"
              id="wizardProperty">
              <form id="applyForm" method="post">
                <input type="hidden" name="no" value="${no}" />
                <input type="hidden" name="type" value="${type}" />
                <div class="wizard-header"></div>
                <ul>
                  <li><a href="#step1" data-toggle="tab">역경매
                      신청서</a></li>
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
                          <input class='form-control' type="text"
                            name="type" readonly="readonly"
                            value="${Auction.type}">
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
                        <label>예식 희망 지역</label>
                      </div>
                      <div class="col-lg-10" id="col">
                        <div class="col-lg-3">
                          <input class='form-control' type="text"
                            name="locFirst" readonly="readonly"
                            value="${Auction.locFirst}">
                        </div>
                        <div class="col-lg-3">
                          <input class='form-control' type="text"
                            readonly="readonly" name="locSecond"
                            value="${Auction.locSecond}">
                        </div>
                        <div class="col-lg-3">
                          <input class='form-control' type="text"
                            readonly="readonly" name="locThird"
                            value="${Auction.locThird}">
                        </div>
                      </div>

                      <div class="col-lg-2" id="col">
                        <label>예식 희망 일자</label>
                      </div>
                      <div class="col-lg-10" id="col">
                        <div class="col-lg-3">
                          <input class='form-control' type="text"
                            name="day" readonly="readonly"
                            value="${Auction.day}">
                        </div>
                        <div class="col-lg-3">
                          <input class='form-control' type="text"
                            readonly="readonly">
                        </div>
                        <div class="col-lg-3">
                          <input class='form-control' type="text"
                            readonly="readonly">
                        </div>
                      </div>

                      <div class="col-lg-2" id="col">
                        <label>예식 희망 시간</label>
                      </div>
                      <div class="col-lg-10" id="col">
                        <div class="col-lg-3">
                          <input class='form-control' type="text"
                            name="time" readonly="readonly"
                            value="${Auction.time}">
                        </div>
                        <div class="col-lg-3">
                          <input class='form-control' type="text"
                            readonly="readonly">
                        </div>
                        <div class="col-lg-3">
                          <input class='form-control' type="text"
                            readonly="readonly">
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
              <span id=button>  <input
                  type='button' class='btn-primary' id="submit"
                  name='submit' value='글목록'
                  style="width: 140px; padding-top: 5px; padding-bottom: 5px" />
               <input type='button'
                  class='btn-warning' id="submit" name='submit'
                  value='수정' style="width: 140px;" />
               <input type='button'
                  class='btn-danger' id="submit" name='submit'
                  value='삭제' style="width: 140px;" />
              
              </span>
            </div>
            <div class="clearfix"></div>


          </div>
        </div>
      </div>
    </div>



  </article>


  <script>
			$(document).ready(function() {
				var formObj = $("form[role='form']");

				$(".btn-warning").on("click", function() {
					formObj.attr("action", "modify");
					formObj.attr("method", "get");
					formObj.submit();
				});
				$(".btn-danger").on("click", function() {
					formObj.attr("action", "remove");
					formObj.submit();
				});

				$(".btn-primary").on("click", function() {
					self.location = "bid";
				});
			});
		</script>




  <%@include file="../include/bottom.jsp"%>
</body>
</html>