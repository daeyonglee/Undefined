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
    width: 76%;
	z-index: 999;
	cursor:
}

.bottomFix {
	position: fixed;
	/* height: 100px; */
	bottom: 0px;
	z-index: 999;
}

.studioItem .dressItem .makeupItem {
	cursor: url("");
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
        <ul class="list-inline">
          <c:forEach var="studio" items="${studioList}">
            <li class="studioItem">
              <div class="studioNo" hidden="hidden">${studio.SP_NO}</div>
              <div>${studio.SP_IMAGE}</div>
              <div>${studio.SP_NM}</div>
              <div>${studio.SC_NM}</div>
              <div>${studio.SP_PRICE}</div>
              <div>${studio.SP_APV_YN}</div>
              <div>${studio.SP_TOTAL_YN}</div>
              <div>${studio.SP_SHOOT_TYPE}</div>
              <div>${studio.REGDATE}</div>
            </li>
          </c:forEach>
        </ul>
      </div>
      <div id="dressTab" class="tab-pane fade">
        <ul class="list-inline">
          <c:forEach var="dress" items="${dressList}">
            <li class="dressItem">
              <div class="dressNo" hidden="hidden">${dress.DP_NO}</div>
              <div>${dress.DP_IMAGE}</div>
              <div>${dress.DP_NM}</div>
              <div>${dress.DC_NM}</div>
              <div>${dress.DP_PRICE}</div>
              <div>${dress.DP_STYLE}</div>
              <div>${dress.REGDATE}</div>
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
              <div>${makeup.MP_PRICE}</div>
              <div>${makeup.MP_ACC_YN}</div>
              <div>${makeup.MP_FAMILY_YN}</div>
              <div>${makeup.MP_HAIR_YN}</div>
              <div>${makeup.REGDATE}</div>
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
  							"<div>" + studio.sp_nm + "</div>" +
  							"<div>" + studio.sp_price + "원</div>" +
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
  							"<div>" + dress.dp_nm + "</div>" +
  							"<div>" + dress.dp_price + "원</div>" +
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
  							"<div>" + makeup.mp_nm + "</div>" +
  							"<div>" + makeup.mp_price + "원</div>" +
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
  			var items = $("#cart").find(".itemNo");
  			
  			if(items.size() != 3){
  				return false;
  			} else {
    			var sp_no = $("#studioCart").children(".itemNo").text().trim();
    			var dp_no = $("#dressCart").children(".itemNo").text().trim();
    			var mp_no = $("#makeupCart").children(".itemNo").text().trim();
    			var params = {
    					sp_no : sp_no,
    					dp_no : dp_no,
    					mp_no : mp_no
    			}
    			
  				$.ajax({
  	  				url: "/recommend/addCart",
  	  				type: "post",
  	  				dataType: "json",
  	  				contentType: "application/json; charset=UTF-8",
  	  				data: JSON.stringify(params),
  	  				success: function(){
  	  					
  	  				}
  	  			});
  			}
  		});
  	}
  	
  </script>

  <%@include file="../include/bottom.jsp"%>
</body>
</html>