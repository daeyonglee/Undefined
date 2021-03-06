<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/top.jsp"%>
<!DOCTYPE html>

<html class="no-js">
<!--<![endif]-->
<head>
<link rel="stylesheet" href="/resources/assets/css/wizard.css">
<link rel="stylesheet" href="/resources/assets/css/user/join.css">

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="/resources/js/user/join.js"></script>
<style type="text/css">
#col {
   padding-top: 5px;
   padding-bottom: 5px;
}

#wizardProperty {
   height: 650px;
}
</style>
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
                      
                       <div class="col-lg-2" id="col">
                        <label>업체명</label>
                      </div>
                      <div class="col-lg-10" id="col">
                        <div class="col-lg-6">
                          <input class='form-control' type="text" name="type" readonly="readonly" value="${Auction.cnm }">
                        </div>
                      </div>
                      
                       <div class="col-lg-2" id="col">
                        <label>상품명</label>
                      </div>
                      <div class="col-lg-10" id="col">
                        <div class="col-lg-6">
                          <input class='form-control' type="text" name="pnm" readonly="readonly" value="${Auction.pnm }">
                        </div>
                      </div>


                      <div class="col-lg-2" id="col">
                        <label>연락처</label>
                      </div>
                      <div class="col-lg-10" id="col">
                        <div class="col-lg-6">
                          <input class='form-control'
                            readonly="readonly" type="tel" name="ctel"
                            value="${Auction.ctel}">
                        </div>
                      </div>
                      
                       <div class="col-lg-2" id="col">
                        <label>미팅날짜</label>
                      </div>
                      <div class="col-lg-10" id="col">
                        <div class="col-lg-3">
                          <input class='form-control' type="text"
                            name="meetDate" readonly="readonly"
                            value="${Auction.meetDate}">
                        </div>
                      </div>

                      <div class="col-lg-2" id="col">
                        <label>예식 지역</label>
                      </div>
                      <div class="col-lg-10" id="col">
                        <div class="col-lg-3">
                          <input class='form-control' type="text"
                            name="loc" readonly="readonly"
                            value="${Auction.locFirst}">
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
                            value='<fmt:formatNumber value = '${Auction.price *(Auction.discount*0.01)}' pattern ='0'></fmt:formatNumber>원'>
                      </div>
                      </div>
                      
                      

                      <div class="col-lg-2" id="col">
                        <label>기타 희망 사항</label>
                      </div>
                      <div class="col-lg-10" id="col">
                        <textarea class='form-control' maxlength='1000'
                          name="memo" readonly="readonly" style="margin-left: 15px">${Auction.memo}</textarea>
                      </div>


                  </div>
                  </div>
                  <!--  submit 버튼   -->
                  <div class="form-group text-center">
                      <input type='button' class='btn-primary' id="submit" name='submit' value='글목록' style="width:20%; margin-top: 15px;"/>
                  </div>
                </div>
              </form>
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