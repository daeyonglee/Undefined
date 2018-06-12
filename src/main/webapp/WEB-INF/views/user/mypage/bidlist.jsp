<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<!-- <script src="/resources/js/mypageBid.js"></script>
 --><title>역경매 입찰서 리스트</title>
<style type="text/css">
body {
   background: #F5F5F5;
}

#count #newBtn #basic {
   text-align: center;
}

td, th {
   text-align: center;
}

.form-group {
   margin: 15px auto;
}
</style>
</head>
<body>
  <%@include file="../../include/top.jsp"%>

  <!-- Main content -->
  <section class="content">
    <div class="testimonial-area recent-property"
      style="background-color: #FCFCFC; padding-bottom: 15px;">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 text-center page-title">

            <!-- general form elements -->
            <div class="box" style="text-align: center;">
              <div class="box-header with-border">
                <h3 class="box-title">입찰서 리스트</h3>
              </div>
                <div class="clearfix" style="height: 15px"></div>
                <form role = "form" method="post">
                    <input type="hidden" name="user" value="${bid.userNo}" />
                </form>
              <div class="box-body">
                <table class="table table-bordered">
                  <tr>
                    <th style="width: 100px"></th>
                    <th style="text-align: center; width: 100px">입찰 업체</th>
                    <th style="text-align: center; width: 300px">업체 위치</th>
                    <th style="text-align: center; width: 100px">상품</th>
                    <th style="text-align: center; width: 100px">할인율</th>
                    <th style="text-align: center; width: 100px">비고</th>
                  </tr>
                  <c:forEach items="${bidList}" var="bid" varStatus="status">
                    <c:if test="${bid.type eq 'studio'}">
                      <tr id = "visible">
                        <td><input type="checkbox" class="chkBid"></td> 
                        <td>${bid.name }</td>
                        <td>${bid.addr}</td>
                        <td>${bid.productNm }</td>
                        <td>${bid.discount }%</td>
                        <td>
                          <input type="button" data-toggle="modal" data-target="#myModal" data-title="Test Title" id="read" onclick="read(event)" value="자세히 보기">
                          <input type="hidden" name="type"         value="${bid.type }">
                          <input type="hidden" name="productImage" value="${bid.productImage }">
                          <input type="hidden" name="price"        value="${bid.price}">
                          <input type="hidden" name="meetDate"     value="${bid.meetDate}">
                          <input type="hidden" name="tel"          value="${bid.tel}">
                          <input type="hidden" name="apvYn"        value="${bid.apvYn}">
                          <input type="hidden" name="totalYn"      value="${bid.totalYn}">
                          <input type="hidden" name="shootType"    value="${bid.shootType}">
                          <input type="hidden" name="name"         value="${bid.name}">
                          <input type="hidden" name="addr"         value="${bid.addr}">
                          <input type="hidden" name="productNm"    value="${bid.productNm}">
                          <input type="hidden" name="discount"     value="${bid.discount}">
                          <input type="hidden" name="bidNo"        value="${bid.bidNo}">
                          <input type="hidden" name="companyNo"    value="${bid.companyNo}">
                          <input type="hidden" name="applyNo"      value="${bid.applyNo}">
                          <input type="hidden" name="userNo"       value="${bid.userNo}">
                        </td>
                      </tr>
                    </c:if>
                    <c:if test="${bid.type eq 'dress'}">
                       <tr id = "visible">
                        <td><input type="checkbox" class="chkBid"></td>
                        <td>${bid.name }</td>
                        <td>${bid.addr}</td>
                        <td>${bid.productNm }</td>
                        <td>${bid.discount }%</td>
                        <td>
                          <input type="button" data-toggle="modal" data-target="#myModal" data-title="Test Title" id="read" onclick="read(event)" value="자세히 보기">
                          <input type="hidden" name="type"         value="${bid.type }">
                          <input type="hidden" name="productImage" value="${bid.productImage }">
                          <input type="hidden" name="price"        value="${bid.price}">
                          <input type="hidden" name="meetDate"     value="${bid.meetDate}">
                          <input type="hidden" name="tel"          value="${bid.tel}">
                          <input type="hidden" name="shootType"    value="${bid.style}">
                          <input type="hidden" name="name"         value="${bid.name}">
                          <input type="hidden" name="addr"         value="${bid.addr}">
                          <input type="hidden" name="productNm"    value="${bid.productNm}">
                          <input type="hidden" name="discount"     value="${bid.discount}">
                          <input type="hidden" name="bidNo"        value="${bid.bidNo}">
                          <input type="hidden" name="companyNo"    value="${bid.companyNo}">
                          <input type="hidden" name="applyNo"      value="${bid.applyNo}">
                          <input type="hidden" name="userNo"       value="${bid.userNo}">
                        </td>
                      </tr>
                    </c:if>
                    <c:if test="${bid.type eq 'makeup'}">
                       <tr id = "visible">
                        <td><input type="checkbox" class="chkBid"></td>
                        <td>${bid.name }</td>
                        <td>${bid.addr}</td>
                        <td>${bid.productNm }</td>
                        <td>${bid.discount }%</td>
                        <td>
                          <input type="button" data-toggle="modal" data-target="#myModal" data-title="Test Title" id="read" onclick="read(event)" value="자세히 보기">
                          <input type="hidden" name="type"         value="${bid.type }">
                          <input type="hidden" name="productImage" value="${bid.productImage }">
                          <input type="hidden" name="price"        value="${bid.price}">
                          <input type="hidden" name="meetDate"     value="${bid.meetDate}">
                          <input type="hidden" name="tel"          value="${bid.tel}">
                          <input type="hidden" name="accYn"        value="${bid.accYn}">
                          <input type="hidden" name="familyYn"     value="${bid.familyYn}">
                          <input type="hidden" name="hairYn"       value="${bid.hairYn}">
                          <input type="hidden" name="name"         value="${bid.name}">
                          <input type="hidden" name="addr"         value="${bid.addr}">
                          <input type="hidden" name="productNm"    value="${bid.productNm}">
                          <input type="hidden" name="discount"     value="${bid.discount}">
                          <input type="hidden" name="bidNo"        value="${bid.bidNo}">
                          <input type="hidden" name="companyNo"    value="${bid.companyNo}">
                          <input type="hidden" name="applyNo"      value="${bid.applyNo}">
                          <input type="hidden" name="userNo"       value="${bid.userNo}">
                        </td>
                      </tr>
                    </c:if>
                  </c:forEach>
               </table>
               </div>
             </div>
           </div>
         </div>
     </div>
   </div>
   <!-- /.box-body -->
   
                       <!-- Modal -->
                     <div class="col-lg-10" id="col">
                      <div class="col-lg-3">
                       <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog modal-lg">
                          <div class="modal-content">
                            <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              <h4 class="modal-title">상품 상세 보기</h4>
                            </div>
                            <div class="modal-body">
                              <p>선택 버튼을 누르면 낙찰이 완료됩니다</p>
                              <!-- contents -->
                              <div class="section clear" style="overflow: scroll; height: 500px; padding: 10px">
                               <div class="content-area single-property" style="background-color: #FCFCFC;">&nbsp;
                                   <div class="container">   
                              
                                       <div class="clearfix padding-top-20" >
                              
                                           <div class="col-md-8 single-property-content prp-style-2" style="text-align: center">
                                               <div class="">
                                                   <div class="row">
                                                       <div class="light-slide-item">            
                                                           <div class="clearfix">
                                                               <div class="favorite-and-print">
                                                                   <a class="add-to-fav" href="#login-modal" data-toggle="modal">
                                                                       <i class="fa fa-star-o"></i>
                                                                   </a>
                                                                   <a class="printer-icon " href="javascript:window.print()">
                                                                       <i class="fa fa-print"></i> 
                                                                   </a>
                                                               </div> 
                              
                                                               <ul id="image-gallery" class="gallery list-unstyled cS-hidden">
                                                                   <li style="padding-bottom: 20px" data-thumb="/resources/assets/img/demo/property-4.jpg"> 
                                                                       <img id="productImage" />
                                                                   </li>                                         
                                                               </ul>
                                                           </div>
                                                       </div>
                                                   </div>
                                                  <div class="single-property-wrapper">

                                                 
                                                       <!-- End description area  -->
                              
                                                        <div class="section additional-details">
                                                        <div class="clearfix"></div>
<%--                                                         <div class="section">
                                                           <h4 class="s-property-title">업체 소개</h4>
                                                           <div class="s-property-content">
                                                               <p>${myCompany.introduce } </p>
                                                           </div> --%>
                                                       </div>     
                              
                                                           <ul class="additional-details-list clearfix" id="ul">
                                                            
                                                           </ul>
                                                       </div>  
                                                   </div>
                                               </div>
                                           </div>
                                       </div>
                                   </div>
                               </div>
                              </div>
                            <!--  content end -->
                            <div class="modal-footer">
                              <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                            </div>
                          </div>
                        </div>
                      </div>
                     </div>
                   </div>
                 </div>

   <!--/.col (left) -->

   <!--  submit 버튼   -->
    <div class="form-group text-center">
       <span id=button>  
       <input type='button' class='btn-primary' id="bid" name='bid' value='낙찰하기' style="width: 140px; padding-top: 5px; padding-bottom: 5px" />
       <input type='button' class='btn-primary' id="list" name='list' value='글목록' style="width: 140px; padding-top: 5px; padding-bottom: 5px" />
       </span>
    </div>
  <div class="clearfix"></div>
</section>
  <!-- /.content -->

 <form id="jobForm">
  <input type='hidden' name="page" value="${pageMaker.params.page}" >
  <input type='hidden' name="perPageNum" value="${pageMaker.params.perPageNum}" >
 </form>
 
 
<form id="frmBid" action="/user/mypage/bidlist" method="post">
  <input type="hidden" value="" name="companyNo">
  <input type="hidden" value="" name="applyNo">       
  <input type="hidden" value="" name="bidNo">           
  <input type="hidden" value="" name="userNo">         
  <input type="hidden" value="" name="type">            
</form>
 <script>
      $(document).ready(function() {
         $("#list").on("click", function() {
              self.location = "apply";
            });
         
         $("#bid").on('click', function(e){
            var event = $(".chkBid:checked").parent().parent().parent().children().last()[0];
            read(event, 1);
         });

      });
      
      /*
         flag 값이 1이면 낙찰하기 버튼에 의한 함수 홏
      */
      
      function read(event, flag){
         
         var tr;
         var inputs;
         
         if (flag == 1) {
          inputs = event.children;  
         } else {
            tr = event.target.parentElement;
            inputs = tr.children;
         }
         
         var obj = {};
         
         for (var i in inputs) {
            var nm = inputs[i].name;
            var val = inputs[i].value;
            
            if (nm == 'name'){
               obj.name = val;
            }
            if (nm == 'productNm') {
               obj.productNm = val;
            }
            if (nm == 'price') {
               obj.price = val;
            }
            if (nm == 'productImage') {
               obj.productImage = val;
            }
            if (nm == 'meetDate') {
               obj.meetDate = val;
            }
            if (nm == 'tel') {
               obj.tel = val;
            }
            if (nm == 'apvYn') {
               obj.apvYn = val;
            }
            if (nm == 'totalYn') {
               obj.totalYn = val;
            }
            if (nm == 'shootType') {
               obj.shootType = val;
            }
            if (nm == 'style') {
               obj.style = val;
            }
            if (nm == 'accYn') {
               obj.accYn = val;
            }
            if (nm == 'familyYn') {
               obj.familyYn = val;
            }
            if (nm == 'hairYn') {
               obj.hairYn = val;
            }
            if (nm == 'addr') {
               obj.addr = val;
            }
            if (nm == 'discount') {
               obj.discount = val;
            }
            if (nm == 'type') {
               obj.type = val;
            }
            if (nm == 'bidNo') {
               obj.bidNo = val;
            }
            if (nm == 'companyNo') {
               obj.companyNo = val;
            }
            if (nm == 'applyNo') {
               obj.applyNo = val;
            }
            if (nm == 'userNo') {
               obj.userNo = val;
            }
         }
         console.log(obj);
         
         if (flag == 1) {
            frmBid(obj);
         } else {
             modalUl(obj)
         }
         
         
           
      }
      function frmBid(obj){
       
         $("#frmBid > input[name='companyNo']").val(obj.companyNo);
         $("#frmBid > input[name='applyNo']").val(obj.applyNo);
         $("#frmBid > input[name='bidNo']").val(obj.bidNo);
         $("#frmBid > input[name='userNo']").val(obj.userNo);
         $("#frmBid > input[name='type']").val(obj.type);
         
         var frm = $("#frmBid");
         
         frm.submit();
         
      };
      
      function modalUl(obj){
         if(obj.type == 'studio'){
            
             $("#productImage").attr("src", "/user/mypage/imgview?imgview="+obj.productImage);
          
            var html =  "<li>";
                html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>업체 이름</span>";
                html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + obj.name + "</span>";    
                html += "</li>";
                html += "<li>";
                html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>입찰 상품</span>";
                html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+ obj.productNm + "</span>";
                html += "</li>";
                html += "<li>";
                html +=  " <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>실제 가격 / 할인율 / 할인 가격</span>";
                html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + obj.price +"원 ->" + obj.discount +"% ->" + Math.round(obj.price * (1- obj.discount * 0.01)) + "원</span>";
                html += "</li>";
                html += "<li>";
                html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>실내 / 야외 여부</span>";
                html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+ obj.shootType +"</span>";
                html += "</li>";
                html += "<li>";
                html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>토탈샵 여부</span>";
                html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+  obj.totalYn +"</span>";
                html += "</li>";
                html += "<li>";
                html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>액자 / 앨범 / 비디오</span>";
                html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+  obj.apvYn +"</span>";
                html += "</li>";
                html += "<li>";                 
                html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>상담 날짜</span>";                 
                html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + obj.meetDate + "</span>";                 
                html += "</li>";
                html += "<li>";
                html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>업체 위치</span>";                 
                html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + obj.addr + "</span>";                 
                html += "</li>";
                html += "<li>";
                html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>업체 전화번호</span>";                 
                html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + obj.tel+ "</span>";                 
               
                
                $("#ul").html(html);
                 
          };
          if (obj.type == 'dress') {
              
          $("#productImage").attr("src", "/user/mypage/imgview?imgview="+obj.productImage);
                      
               var html =  "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>업체 이름</span>";
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + obj.name + "</span>";    
                   html += "</li>";
                   html += "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>입찰 상품</span>";
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+ obj.productNm + "</span>";
                   html += "</li>";
                   html += "<li>";
                   html +=  " <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>실제 가격 / 할인율 / 할인 가격</span>";
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + obj.price +"원 ->" + obj.discount +"% ->" + Math.round(obj.price * (1- obj.discount * 0.01)) + "원</span>";
                   html += "</li>";
                   html += "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>드레스 스타일</span>";
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+  obj.style +"</span>";
                   html += "</li>";
                   html += "<li>";                 
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>상담 날짜</span>";                 
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + obj.meetDate + "</span>";                 
                   html += "</li>";
                   html += "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>업체 위치</span>";                 
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + obj.addr + "</span>";                 
                   html += "</li>";
                   html += "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>업체 전화번호</span>";                 
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + obj.tel+ "</span>";                 
                           
                  $("#ul").html(html);
                    
        };
        if (obj.type == 'makeup') {
           
             $("#productImage").attr("src", "/user/mypage/imgview?imgview="+obj.productImage);
               
               var html =  "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>업체 이름</span>";
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + obj.name + "</span>";    
                   html += "</li>";
                   html += "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>입찰 상품</span>";
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+ obj.productNm + "</span>";
                   html += "</li>";
                   html += "<li>";
                   html +=  " <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>실제 가격 / 할인율 / 할인 가격</span>";
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + obj.price +"원 ->" + obj.discount +"% ->" + Math.round(obj.price * (1- obj.discount * 0.01)) + "원</span>";
                   html += "</li>";
                   html += "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>액세서리 대여 여부</span>";
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+  obj.accYn +"</span>";
                   html += "</li>";
                   html += "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>가족 메이크업 여부 </span>";
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+  obj.familyYn +"</span>";
                   html += "</li>";
                   html += "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>헤어 세팅 여부</span>";
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+  obj.hairYn +"</span>";
                   html += "</li>";
                   html += "<li>";                 
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>상담 날짜</span>";                 
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + obj.meetDate + "</span>";                 
                   html += "</li>";
                   html += "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>업체 위치</span>";                 
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + obj.addr + "</span>";                 
                   html += "</li>";
                   html += "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>업체 전화번호</span>";                 
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + obj.tel+ "</span>";                 
                           
                  $("#ul").html(html);
        
        };
      }
    </script>

 
  <%@include file="../../include/bottom.jsp"%>
</body>
</html>