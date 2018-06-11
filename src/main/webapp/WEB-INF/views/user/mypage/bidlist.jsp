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
                    <td colspan="6">입찰 신청 건수 : ******* 건</td>
                  </tr>
                  <tr>
                    <th style="width: 100px"></th>
                    <th style="text-align: center; width: 100px">입찰 업체</th>
                    <th style="text-align: center; width: 300px">업체 위치</th>
                    <th style="text-align: center; width: 100px">상품</th>
                    <th style="text-align: center; width: 100px">할인율</th>
                    <th style="text-align: center; width: 100px">비고</th>
                  </tr>
                  <c:forEach items="${bidList}" var="bid" varStatus="status">
                    <tr id = "visible">
                      <td><input type="radio"></td>
                      <td>${bid.name }</td>
                      <td>${bid.addr}</td>
                      <td>${bid.productNm }</td>
                      <td>${bid.discount }%</td>
                      <td><input type="button" data-toggle="modal" data-target="#myModal" data-title="Test Title" id="read" value="자세히 보기"></td>
                      <input type="hidden" value="${bid.productImage }">
                      <input type="hidden" value="${bid.price}">
                      <input type="hidden" value="${bid.meetDate}">
                      <input type="hidden" value="${bid.tel}">
                      <input type="hidden" value="${bid.type }">
                      <input type="hidden" value="${bid.apvYn}">
                      <input type="hidden" value="${bid.totalYn}">
                      <input type="hidden" value="${bid.shootType}">
                    </tr>
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
                                                                       <img src="${bid.productImage} " />
                                                                   </li>                                         
                                                               </ul>
                                                           </div>
                                                       </div>
                                                   </div>
                                                  <div class="single-property-wrapper">

                                                 
                                                       <!-- End description area  -->
                              
                                                        <div class="section additional-details">
                                                        <div class="section">
                                                           <h4 class="s-property-title">업체 소개</h4>
                                                           <div class="s-property-content">
                                                               <p>${myCompany.introduce } </p>
                                                           </div>
                                                       </div>     
                              
                                                           <ul class="additional-details-list clearfix" id="ul">
 

                                                            
                                                           </ul>
                                                       </div>  
                              
<!--                                                        <div class="section property-features">      
                              
                                                           <h4 class="s-property-title"></h4>                            
                                                           <ul>
                                                               <li><a href="properties.html">Swimming Pool</a></li>   
                                                               <li><a href="properties.html">3 Stories</a></li>
                                                               <li><a href="properties.html">Central Cooling</a></li>
                                                               <li><a href="properties.html">Jog Path 2</a></li>
                                                               <li><a href="properties.html">2 Lawn</a></li>
                                                               <li><a href="properties.html">Bike Path</a></li>
                                                           </ul>
                              
                                                       </div> -->
                                                       <!-- End features area  -->
                                                
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
			
			$("#read").on("click", function() {
				alert("메롱");
				var radio = $("#Visible");
				console.log(radio);
				
				
				var name          = radio.children().eq(1).text();
				var addr          = radio.children().eq(2).text();
				var productNm     = radio.children().eq(3).text();
				var discount      = radio.children().eq(4).text();
				var productImage  = radio.children().eq(6).val();
				var price         = radio.children().eq(7).val();
				var meetDate      = radio.children().eq(8).val();
				var tel           = radio.children().eq(9).val();
				var type          = radio.children().eq(10).val();
				
				console.log(name);
				console.log(addr);
				console.log(productNm);
				console.log(discount);
				console.log(productImage);
				console.log(price);
				console.log(meetDate);
				console.log(tel);
				
				var studio = "studio";
			    
 			    if(type == studio){
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
			        html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>" + price +"원 ->" + discount +"% -> 18000원</span>";
			        html += "</li>";
			        html += "<li>";
			        html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>실내 / 야외 여부</span>";
			        html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+ ${product.shootType } +"</span>";
			        html += "</li>";
			        html += "<li>";
			        html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>토탈샵 여부</span>";
			        html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+  ${product.totalYn } +"</span>";
			        html += "</li>";
			        html += "<li>";
			        html += "  <span class='col-xs-6 col-sm-4 col-md-4 add-d-title'>액자 / 앨범 / 비디오</span>";
			        html += "  <span class='col-xs-6 col-sm-8 col-md-8 add-d-entry'>"+  ${product.apvYn } +"</span>";
			        $("#ul").html(html);
      
			    }
 


	/* 			                                                              <li>
                                                                   <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">업체 이름</span>
                                                                   <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">${bid.name }</span>
                                                               </li>
                              
                                                               <li>
                                                                   <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">입찰 상품</span>
                                                                   <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">${bid.bidNo }</span>
                                                               </li>
                                                               
                                                               <li>
                                                                <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">실제 가격 / 할인율 / 할인 가격</span>
                                                                 <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">${product.price }원 -> ${myBid.discount }% -> 18000원</span>
                                                               </li>
                              
                                                               <li>
                                                                   <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">실내 / 토탈샵 / 비디오</span>
                                                                   <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry"> ${product.shootType }  / ${product.totalYn } / ${product.apvYn } </span>
                                                               </li> 
                                                               
                                                               <li>
                                                                   <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">상담 날짜</span>
                                                                   <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">${bid.meetDate }</span>
                                                               </li>                        
                                                               <li>
                                                                   <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">업체 위치</span>
                                                                   <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">${bid.addr }</span>
                                                               </li>
                              
                                                               <li>
                                                                   <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">업체 전화번호</span>
                                                                   <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">${bid.tel }</span>
                                                               </li> 
                                 
                     



                     
                    </ul>
                </div>  

                <!-- End features area  -->

            </div> */
				 
			});
      });
    </script>

 
  <%@include file="../../include/bottom.jsp"%>
</body>
</html>
