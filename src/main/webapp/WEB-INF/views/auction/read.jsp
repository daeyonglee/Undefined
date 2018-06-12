<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../include/top.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>




<html class="no-js">
<!--<![endif]-->
<head>

<link rel="stylesheet" href="/resources/assets/css/wizard.css">
<link rel="stylesheet" href="/resources/assets/css/user/join.css">

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="/resources/js/user/join.js"></script>
<style type="text/css">
h2,.h2 {
color : deeppink;
margin-bottom: 30; 

}

.form-control[disabled], .form-control[readonly], fieldset[disabled] .form-control, textarea{
   background-color:white;
   cursor:default !important;
}
#col {
  padding-top: 5px;
  padding-bottom: 5px;
}

#wizardProperty {
  height: 80%;
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

            <div class="wizard-card ct-wizard-orange" id="wizardProperty">
              <form id="applyForm" method="post">
              
                <div class="wizard-header"></div>
                <ul>
                  <li><a href="#step1" data-toggle="tab">역경매
                      신청서</a></li>
                </ul>

                <div class="tab-content">

                  <div class="tab-pane" id="step1">
                    <div class="col-lg-12">
                      
                      <h2 class = "gradtext" id="daycount" align="center">${daycount.day}일 : ${daycount.si}시 : ${daycount.min}분 : ${daycount.sec}초 남았습니다.</h2>
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
                      </div>
                      
                      <div class="col-lg-2" id="col">
                        <label>마감 일자</label>
                      </div>
                      <div class="col-lg-10" id="col">
                        <div class="col-lg-3">
                          <input class='form-control' type="text"
                            name="deadline" readonly="readonly"
                            value="${Auction.deadline}">
                        </div>
                      </div>
                      
                      

                      <div class="col-lg-2" id="col">
                        <label> 희망 사항</label>
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
                  type='button' class='btn-primary' id="list"
                  name='list' value='글목록'
                  style="width: 140px; padding-top: 5px; padding-bottom: 5px" />
               <input type='button'
                  class='btn-warning' id="submit" name='submit'
                  value='수정' style="width: 140px; color: #f5f5f5;" />
               <input type='button'
                  class='btn-danger' id="submit" name='submit'
                  value='삭제' style="width: 140px; color : #f5f5f5;" />
                        <a href="bid?no=${Auction.no}&type=${Auction.type}"><input type="button" class="btn-primary" id="bid"  name="bid" value="입찰서 제출" style="width: 140px; padding-top: 5px; padding-bottom: 5px; float: right;"></a>
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

				$("#list").on("click", function() {
					self.location = "list";
				});
				
				var day = new Number(${daycount.day});
				var si  = new Number(${daycount.si});
				var min = new Number(${daycount.min});
				var sec = new Number(${daycount.sec});

				var dayZ = "";
				var siZ  = "";
				var minZ = "";
				var secZ = "";
					
				// 타이머 돌리기
				var interval = setInterval(function() {
					
					// 값을 초단위로 변경시켜준다.
					sec--;
					
					// sec가 1의 자리이면 앞에 0을 붙여준다.
					// 0보다 작아질때, 즉 0초가 되었을때 60으로 변경해준다.
					if (sec > -1 && sec < 10) {
						secZ = "0";
					} else if (sec > 10) {
						secZ = "";
					}
					
					if (min > -1 && min < 10) {
						minZ = "0";
					} else if (min > 10) {
						minZ = "";
					}
					
					if (si > -1 && si < 10) {
						siZ = "0";
					} else if (min > 10) {
						siZ = "";
					}
					
					if (day > -1 && day < 10) {
						dayZ = "0";
					} else if (day > 10) {
						dayZ = "";
					}
					
					$("h2#daycount").text(dayZ+day+"일 : "+siZ+si+"시 : "+minZ+min+"분 : "+secZ+sec+"초 남았습니다.");
					
					if (sec == 0 && min != 0) {
						sec = 60;
						
						// 0 -> 60 변경 될 때 분을 -1
						// 0보다 클떄만 -1
						if (min > 0) min--;
						
						if (min == 0 && si != 0) {
							min = 59;
							
							if (si > 0) si--;
							
							if (si == 0 && day != 0) {
								si = 23
								
								if (day > 0) day--;
							}
						}
					}
					
					if (day == 0 && si == 0 && min == 0 && sec == 0) { 
						clear();
					}
					
				}, 1000);

				function clear() {
					clearInterval(interval);
				}
			});
  </script>
  

  <%@include file="../include/bottom.jsp"%>
</body>
</html>