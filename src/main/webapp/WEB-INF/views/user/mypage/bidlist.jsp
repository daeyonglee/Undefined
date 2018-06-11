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
                        <td><input type="radio"></td>
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
                        </td>
                      </tr>
                    </c:if>
                    <c:if test="${bid.type eq 'dress'}">
                       <tr id = "visible">
                        <td><input type="radio"></td>
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
                        </td>
                      </tr>
                    </c:if>
                    <c:if test="${bid.type eq 'makeup'}">
                       <tr id = "visible">
                        <td><input type="radio"></td>
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
                          <input type="hidden" name="shootType"    value="${bid.accYn}">
                          <input type="hidden" name="shootType"    value="${bid.familyYn}">
                          <input type="hidden" name="shootType"    value="${bid.hairYn}">
                          <input type="hidden" name="name"         value="${bid.name}">
                          <input type="hidden" name="addr"         value="${bid.addr}">
                          <input type="hidden" name="productNm"    value="${bid.productNm}">
                          <input type="hidden" name="discount"     value="${bid.discount}">
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

 <script>
      $(document).ready(function() {

         $("#list").on("click", function() {
              self.location = "apply";
            });

      });
      
      
      function read(event){
         
         var tr = event.target.parentElement;
         var inputs = tr.children;
         
         var type;
         var name;
         var productNm;
         var price;
         var discount;
         var productImage;
         var meetDate;
         var tel;
         var addr;
          var apvYn;
          var totalYn;
          var shootType;
          var style;
          var accYn;
          var familyYn;
          var hairYn;
            
         for (var i in inputs) {
            var nm = inputs[i].name;
            var val = inputs[i].value;
             
            if (nm == 'name'){
               name = val;
            }
            if (nm == 'productNm') {
               productNm = val;
            }
            if (nm == 'price') {
               price = val;
            }
            if (nm == 'productImage') {
               productImage = val;
            }
            if (nm == 'meetDate') {
               meetDate = val;
            }
            if (nm == 'tel') {
               tel = val;
            }
            if (nm == 'apvYn') {
               apvYn = val;
            }
            if (nm == 'totalYn') {
               totalYn = val;
            }
            if (nm == 'shootType') {
               shootType = val;
            }
            if (nm == 'style') {
               style = val;
            }
            if (nm == 'accYn') {
               accYn = val;
            }
            if (nm == 'familyYn') {
               familyYn = val;
            }
            if (nm == 'hairYn') {
               hairYn = val;
            }
            if (nm == 'addr') {
               addr = val;
            }
            if (nm == 'discount') {
               discount = val;
            }
            if (nm == 'type') {
               type = val;
            }
         }
         
         if(type == 'studio'){
            
               $("#productImage").attr("src", "/user/mypage/imgview?imgview="productImage);
            
              var html =  "<li>";
                  html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>업체 이름</span>";
                  html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + name + "</span>";    
                  html += "</li>";
                  html += "<li>";
                  html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>입찰 상품</span>";
                  html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+ productNm + "</span>";
                  html += "</li>";
                  html += "<li>";
                  html +=  " <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>실제 가격 / 할인율 / 할인 가격</span>";
                  html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + price +"원 ->" + discount +"% ->" + Math.round(price * (1- discount * 0.01)) + "원</span>";
                  html += "</li>";
                  html += "<li>";
                  html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>실내 / 야외 여부</span>";
                  html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+ shootType +"</span>";
                  html += "</li>";
                  html += "<li>";
                  html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>토탈샵 여부</span>";
                  html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+  totalYn +"</span>";
                  html += "</li>";
                  html += "<li>";
                  html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>액자 / 앨범 / 비디오</span>";
                  html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+  apvYn +"</span>";
                  html += "</li>";
                  html += "<li>";                 
                  html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>상담 날짜</span>";                 
                  html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + meetDate + "</span>";                 
                  html += "</li>";
                  html += "<li>";
                  html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>업체 위치</span>";                 
                  html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + addr + "</span>";                 
                  html += "</li>";
                  html += "<li>";
                  html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>업체 전화번호</span>";                 
                  html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + tel+ "</span>";                 
                 
                  
                  $("#ul").html(html);
                 
          };
          if (type == 'dress') {
              
          $("#productImage").attr("src", "/user/mypage/imgview?imgview="productImage);
                      
               var html =  "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>업체 이름</span>";
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + name + "</span>";    
                   html += "</li>";
                   html += "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>입찰 상품</span>";
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+ productNm + "</span>";
                   html += "</li>";
                   html += "<li>";
                   html +=  " <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>실제 가격 / 할인율 / 할인 가격</span>";
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + price +"원 ->" + discount +"% ->" + Math.round(price * (1- discount * 0.01)) + "원</span>";
                   html += "</li>";
                   html += "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>드레스 스타일</span>";
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+  style +"</span>";
                   html += "</li>";
                   html += "<li>";                 
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>상담 날짜</span>";                 
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + meetDate + "</span>";                 
                   html += "</li>";
                   html += "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>업체 위치</span>";                 
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + addr + "</span>";                 
                   html += "</li>";
                   html += "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>업체 전화번호</span>";                 
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + tel+ "</span>";                 
                           
                  $("#ul").html(html);
                    
        };
        if (type == 'makeup') {
           
             $("#productImage").attr("src", "/user/mypage/imgview?imgview="productImage);
                 
               var html =  "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>업체 이름</span>";
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + name + "</span>";    
                   html += "</li>";
                   html += "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>입찰 상품</span>";
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+ productNm + "</span>";
                   html += "</li>";
                   html += "<li>";
                   html +=  " <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>실제 가격 / 할인율 / 할인 가격</span>";
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + price +"원 ->" + discount +"% ->" + Math.round(price * (1- discount * 0.01)) + "원</span>";
                   html += "</li>";
                   html += "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>액세서리 대여 여부</span>";
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+  accYn +"</span>";
                   html += "</li>";
                   html += "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>가족 메이크업 여부 </span>";
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+  familyYn +"</span>";
                   html += "</li>";
                   html += "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>헤어 세팅 여부</span>";
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+  hairYn +"</span>";
                   html += "</li>";
                   html += "<li>";                 
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>상담 날짜</span>";                 
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + meetDate + "</span>";                 
                   html += "</li>";
                   html += "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>업체 위치</span>";                 
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + addr + "</span>";                 
                   html += "</li>";
                   html += "<li>";
                   html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>업체 전화번호</span>";                 
                   html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + tel+ "</span>";                 
                           
                  $("#ul").html(html);
        
        };
           
           
      }
         console.log(tr.children);
         
         console.log(event);
         console.log(event.target.parentElement);
    </script>

 
  <%@include file="../../include/bottom.jsp"%>
</body>
</html>