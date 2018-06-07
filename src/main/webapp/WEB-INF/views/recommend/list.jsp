<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<%@include file="../include/top.jsp"%>

<style>
.cart {
   background-color: #ffffdd;
}

#itemMenu {
   background-color: white;
}

.topFix {
   position: fixed;
   top: 0px;
   z-index: 999;
   cursor:
}

.bottomFix {
   position: fixed;
   bottom: 0px;
   z-index: 999;
}

#studioCart #dressCart #makeupCart {
   border-color: #eeeeee;
}

.addCartBtn{
    float: right;
}
</style>
</head>
<body>
  <div class="container">
    <h2 class="text-center">스드메 통합 추천 결과</h2>
    <!-- <div style="background-color: #ffffdd;">
      선택한 조건에 대한 결과입니다.<br>
      예산~~~     /장소~~~<br>
      스튜디오 + 드레스 + 메이크업/ 스튜디오 조건: ~~~ / 드레스 조건: ~~~~
    </div> -->

    <!-- 패키지 list -->
      <ul id="itemMenu" class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#studioTab">스튜디오</a></li>
        <li><a data-toggle="tab" href="#dressTab">드레스</a></li>
        <li><a data-toggle="tab" href="#makeupTab">메이크업</a></li>
      </ul>

    <div class="tab-content">
      <div id="studioTab" class="tab-pane fade in active">
          <c:forEach var="studio" items="${studioList}">
      <%-- <ul class="list-inline">
            <li class="studioItem">
              <div class="studioNo" hidden="hidden">${studio.SP_NO}</div>
              <div>${studio.SP_IMAGE}</div>
              <div>${studio.SP_NM}</div>
              <div>${studio.SC_NM}</div>
              <div>${studio.SP_PRICE}원</div>
            </li>
        </ul> --%>
        <div class="proerty-th">
          <div class="col-sm-6 col-md-3 p0">
            <div class="box-two proerty-item">
              <div class="item-thumb">
                  <a href=""><img src="/resources/assets/img/demo/property-4.jpg"></a>
        
              </div>
              <div class="item-entry overflow">
                  <h5><a href="property-1.html">${studio.SP_NM} </a></h5>
                  <div class="dot-hr"></div>
                  <span class="pull-left"><b>${studio.SC_NM}</b> </span>
                  <span class="proerty-price pull-right">${studio.SP_PRICE}원</span>
              </div>
            </div>
          </div>
        </div>
          </c:forEach>
      </div>
      <div id="dressTab" class="tab-pane fade">
        <ul class="list-inline">
          <c:forEach var="dress" items="${dressList}">
            <li class="dressItem">
              <div class="dressNo" hidden="hidden">${dress.DP_NO}</div>
              <div>${dress.DP_IMAGE}</div>
              <div>${dress.DP_NM}</div>
              <div>${dress.DC_NM}</div>
              <div>${dress.DP_PRICE}원</div>
            </li>
          </c:forEach>
        </ul>
      </div>
      <div id="makeupTab" class="tab-pane fade">
        <ul class="list-inline">
          <c:forEach var="makeup" items="${makeupList}">
            <li class="makeupItem">
              <div class="makeupNo" hidden="hidden">${makeup.MP_NO}</div>
              <div>${makeup.MP_IMAGE}</div>
              <div>${makeup.MP_NM}</div>
              <div>${makeup.MC_NM}</div>
              <div>${makeup.MP_PRICE}원</div>
            </li>
          </c:forEach>
        </ul>
      </div>
    </div>
    <div id="cart" class="cart">
      <ul id="cartMenu" class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#studioCartTab">스튜디오</a></li>
        <li><a data-toggle="tab" href="#dressCartTab">드레스</a></li>
        <li><a data-toggle="tab" href="#makeupCartTab">메이크업</a></li>
      </ul>
      
      <div class="tab-content">
        <div id="studioCartTab" class="tab-pane fade in active">
          <ul class="list-inline" id="studioCart">
          
          </ul>
        </div>
        <div id="dressCartTab" class="tab-pane fade">
          <ul class="list-inline" id="dressCart">
          
          </ul>
        </div>   
        <div id="makeupCartTab" class="tab-pane fade">
          <ul class="list-inline" id="makeupCart">
          
          </ul>
        </div>   
        <button id="addCartBtn" class="addCartBtn">관심상품에 추가</button>
      </div>
    </div>
  </div>
  <script>
     $(document).ready(function() {
        topFix();
        bottomFix();
        addItem();
        removeItem();
        addCart();
     });
     
     /** 스튜디오, 드레스, 메이크업 네비바가 브라우저 상단에 고정되는 스크롤 이벤트*/
     function topFix(){
        var itemMenuOffset = $('#itemMenu').offset();
        $(window).on("scroll", function() {
           if ($(document).scrollTop() > itemMenuOffset.top) {
              $('#itemMenu').addClass('topFix');
           } else {
              $('#itemMenu').removeClass('topFix');
           }
        });
     }
     
     /** 장바구니가 브라우저 하단에 고정되는 스크롤 이벤트 */
     function bottomFix(){
        var containerOffset = $(".container").offset();
        $(window).on("scroll", function() {
           if($(document).scrollTop() + $(window).height() <= $("#cart").offset().top + parseInt($("#cart").css("height"))){
             $("#cart").addClass('bottomFix');
             $("#cart").css("width", $(".container").css("width"));
           } else {
              $("#cart").removeClass("bottomFix");
           }
        });
     }
     
     /** 각 상품을 장바구니 리스트에 추가하는 클릭 이벤트 */
     function addItem(){
        $(".studioItem").on("click", function(){
           var sp_no = $(this).find(".studioNo").text().trim();
           var param = {
                 sp_no : sp_no
           };
           $.ajax({
              url: "/recommend/addItem",
              type: "post",
              dataType: "json",
              contentType: "application/json; charset=UTF-8",
              data: JSON.stringify(param),
              success: function(studio){
                 $("#studioCart").append(
                       "<li class='cartItem'>" +
                       "<div class='itemNo' hidden='hidden'>" + studio.sp_no + "</div>" + 
                       "<div>" + studio.sp_image + "</div>" + 
                       "</li>"
                       );
              }
           });
        });
        
        $(".dressItem").on("click", function(){
           var dp_no = $(this).find(".dressNo").text().trim();
           var param = {
                 dp_no : dp_no
           };
           $.ajax({
              url: "/recommend/addItem",
              type: "post",
              dataType: "json",
              contentType: "application/json; charset=UTF-8",
              data: JSON.stringify(param),
              success: function(dress){
                 $("#dressCart").append(
                       "<li class='cartItem'>" +
                       "<div class='itemNo' hidden='hidden'>" + dress.dp_no + "</div>" + 
                       "<div>" + dress.dp_image + "</div>" + 
                       "</li>"
                       );
              }
           });
        });
        
        $(".makeupItem").on("click", function(){
           var mp_no = $(this).find(".makeupNo").text().trim();
           var param = {
                 mp_no : mp_no
           };
           $.ajax({
              url: "/recommend/addItem",
              type: "post",
              dataType: "json",
              contentType: "application/json; charset=UTF-8",
              data: JSON.stringify(param),
              success: function(makeup){
                 $("#makeupCart").append(
                       "<li class='cartItem'>" +
                       "<div class='itemNo' hidden='hidden'>" + makeup.mp_no + "</div>" + 
                       "<div>" + makeup.mp_image + "</div>" + 
                       "</li>"
                       );
              }
           });
        });
     }
     
     /** 장바구니의 아이템을 클릭하면 삭제되는 클릭 이벤트 */
     function removeItem(){
        $(".cart").on("click", function(){
           $(this).find(".cartItem").on("click", function(){
              $(this).remove();
           });
        })
     }
     
     function addCart(){
        $("#addCartBtn").on("click", function(){
           var sp_no = $("#studioCart").find(".itemNo");
           var dp_no = $("#dressCart").find(".itemNo");
           var mp_no = $("#makeupCart").find(".itemNo");
           
           console.log(sp_no);
           console.log(dp_no);
           console.log(mp_no);
           
           var sp_list = [];
           var dp_list = [];
           var mp_list = [];
           
           sp_no.each(function(){
              sp_list.push($(this).text().trim());
           })
           
           dp_no.each(function(){
              dp_list.push($(this).text().trim());
           })
           
           mp_no.each(function(){
              mp_list.push($(this).text().trim());
           })
           
           var params = {
                 sp_no : sp_list,
                 dp_no : dp_list,
                 mp_no : mp_list
           }
           
           console.log(params);
           
         $.ajax({
              url: "/recommend/addCart",
              type: "post",
              dataType: "json",
              contentType: "application/json; charset=UTF-8",
              data: JSON.stringify(params),
              success: function(){
                 
              }
           });
        });
     }
     
  </script>

  <%@include file="../include/bottom.jsp"%>
</body>
</html>