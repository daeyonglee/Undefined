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
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="/resources/js/user/join.js"></script>

<script>
      var result = '${msg}';

      if (result == 'SUCCESS') {
        alert("처리가 완료되었습니다.");
      }
</script>
<script>
  $( function() {
      $( ".datepicker" ).datepicker({
         dateFormat: 'yy-mm-dd',
         minDate : 0
      });
      
      
  });
 </script>
<style type="text/css">
#col {
	padding-top: 5px;
	padding-bottom: 5px;
}

#wizardProperty {
	height: 80%;
}

#button {
	width: 20%;
}
.form-control[disabled], .form-control[readonly], fieldset[disabled] .form-control, textarea{
   background-color:white;
   cursor:default !important;
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
                      <div class="col-lg-8">
                        <input class='form-control' type="text" name="locFirst" id="locFirst" value="${Company.addr }" readonly="readonly">
                      </div>
                    </div>                    

                   <div class="col-lg-2" id="col">
                      <label>상담 날짜</label>
                    </div>
                    <div class="col-lg-10" id="col">
                      <div class="col-lg-3">
                        <input class='form-control datepicker' type="text" name="meetDate" placeholder='날짜를 선택하세요'>
                      </div>
                   </div>
 
                    <!-- 상품 + 가격 정보 뿌려주기 -->
                      <div class="col-lg-2" id="col">
                      <label>상품 리스트</label>
                       </div>
                       
                       <!-- 모달 -->
                       <!-- Trigger the modal with a button -->
                     <div class="col-lg-10" id="col">
                     <p id="result"></p>
                     <button type="button" data-toggle="modal" data-target="#myModal" data-title="Test Title" style="margin-left: 15px">상품 선택하기</button>
                     <div id = "modalValue"></div>
                     </div>
                       
                       <!-- Modal -->
                      <div class="col-lg-10" id="col">
                      <div class="col-lg-3">
                       <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog modal-lg">
                          <div class="modal-content">
                            <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              <h4 class="modal-title">상품 선택하기</h4>
                            </div>
                            <div class="modal-body">
                              <p>할인율을 입력한 후 하나의 상품을 선택하세요.</p>
                              <!-- contents -->
                              <div class="section clear" style="overflow: scroll; height: 500px; padding: 10px">
                              <div id="list-type" class="proerty-th">
                          
                          <c:forEach items="${products}" var="prod">
                
                           <div class="col-sm-6 col-md-4 p0">
                             <div class="box-two proerty-item">
                               <div class="item-thumb">
                         
                                 <div id="myCarousel" class="carousel slide">
                                   <div class="carousel-inner">
                                   <div class='box-two proerty-item'>
                                     <div class="item active">
                                       <img src= "/user/mypage/imgview?imgview=${prod.productImage }"style="width: 100%;">
                                     </div>
                                   </div>
                                 </div>
                               </div>
                
                               <div class='item-entry overflow' id="choice">
                                 <h6 style='text-align:center;'><input type="checkbox" class='btn-primary' id="check"><span>${prod.productNm}</span></h6>
                                 <div class='dot-hr'></div>
                                 <h6 style="text-align: right"><span>${prod.price}</span> 원</h6>
                                 <h6><input class="form-control" style="width: 90px; text-align: right; float: right;" type="text" placeholder="할인율(%)"></h6>
                                 <input type="hidden" value="${prod.productImage}"/>
                                 <input type="hidden" value="${prod.productNo}"/>
                               </div>
                             </div>
                             </div>
                           </div>
                         </c:forEach>
                         
                       </div>
                     </div> 
                              <!--  content end -->
                            </div>
                            <div class="modal-footer">
                              <button type="button" class="btn btn-default" id="select" data-dismiss="modal">선택</button>
                              <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                            </div>
                          </div>
                        </div>
                      </div>
                      </div>
                     </div>
                </div>
                
                    <div class="col-lg-2"></div>
                    <div class="col-lg-10" id="selectedItem" style="margin-bottom: 10px"></div>
                    <div class="col-lg-2" id="col">
                      <label>기타 희망 사항</label>
                    </div>
                    <div class="col-lg-10" id="col">
                     <div class="col-lg-10" id="col">
                      <textarea class='form-control' name="memo" maxlength='1000' style="margin-left: 10px"></textarea>
                    </div></div>
                
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
        
        
        $("#select").on("click", function(e){
        	// 선택된 값을 부모폼으로 보낸다.
        	// 그에 해당하는 아이들은 
        	var choice = $("#check:checked").parent().parent().parent();
        	console.log(choice);
        	
        	var productNm    = choice.children().eq(0).children().text();
        	var price        = choice.children().eq(2).children().text();
        	var discount     = choice.children().eq(3).children().val();
        	var productImage = choice.children().eq(4).val();
        	var productNo    = choice.children().eq(5).val();
        	
        	console.log(productNm);
        	console.log(price);
        	console.log(discount);
        	console.log(productImage);
        	console.log(productNo);
        	
        	// 사진
        	// 상품명
        	// 실제 가격
        	// 할인된 가격
        	// 할인율
        	// 상품 번호
        	var html =  "<div class='col-sm-6 col-md-4 p0' style='margin-left: 25px;'>";
        	    html += "  <div class='box-two proerty-item'>";
        	    html += "    <div class='item-thumb'>";
                html += "      <img src='/user/mypage/imgview?imgview="+ productImage +"' style='width: 100%;'>";
                html += "    </div>";
                html += "    <div class='item-entry overflow' style='padding: 10px'>";
                html += "       <input type='hidden' name='productNo' value='" + productNo + "'>";
                html += "       <input type='hidden' name='discount' value='" + discount + "' >";
                html += "       <h5 style='text-align:center;' name='productNm'><b>" + productNm + "</b></h5>"
                html += "       <div class='dot-hr'></div>";
                html += "       <h6><span class='pull-left'><b>할인율 :</b>" + discount + "%" + "</span></h6>";
                html += "       <h6><span class='proerty-price pull-right' name='discountPrice'><b>할인가격 :</b>" + Math.round((price * (1-(discount / 100)))) + "원"+ "</span></h6>";
                html += "    </div>";
                html += "  </div>";
                html += "</div>";
            $("#selectedItem").html(html);
             

        });
        

      });
</script>


  <!-- End submit form -->

  <%@include file="../include/bottom.jsp"%>

</body>
</html>