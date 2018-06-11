<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<%@include file="../../include/top.jsp"%>
<style>
#itemMenu {
	background-color: white;
}

.topFix {
	position: fixed;
	top: 0px;
	z-index: 999;
	cursor:
}

#studioCart #dressCart #makeupCart {
	border-color: #eeeeee;
}
</style>
</head>
<body>
  <div class="container">
    <h2 class="text-center">관심상품</h2>

    <!-- 패키지 list -->
      <ul id="itemMenu" class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#studioTab">스튜디오</a></li>
        <li><a data-toggle="tab" href="#dressTab">드레스</a></li>
        <li><a data-toggle="tab" href="#makeupTab">메이크업</a></li>
      </ul>

    <div class="tab-content">
      <div id="studioTab" class="tab-pane fade in active">
        <c:forEach var="studio" items="${studioList}">
          <div class="proerty-th studioItem">
            <div class="col-sm-6 col-md-3 p0">
              <div class="box-two proerty-item">
                <div class="item-thumb">
                  <a href="javascript:void(0);" onclick="showDetail('studio', ${studio.SP_NO})"><img src="/resources/assets/img/demo/property-4.jpg"></a>
                </div>
                <div class="studioNo" hidden="hidden">${studio.SP_NO}</div>
                <div class="item-entry overflow">
                  <h5><a href="javascript:void(0);" onclick="showDetail('studio', ${studio.SP_NO})">${studio.SP_NM} </a></h5>
                  <div class="dot-hr"></div>
                  <span class="pull-left"><b>${studio.SC_NM}</b> </span>
                  <span class="proerty-price pull-right">${studio.SP_PRICE}원</span>
                </div>
                <div>
                  <button name="sAddBtn" class="addCartBtn">
                    <i class="fa fa-cart-arrow-down"></i>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </c:forEach>
      </div>
      
      <div id="dressTab" class="tab-pane fade">
        <c:forEach var="dress" items="${dressList}">
          <div class="proerty-th dressItem">
            <div class="col-sm-6 col-md-3 p0">
              <div class="box-two proerty-item">
                <div class="item-thumb">
                  <a href="javascript:void(0);" onclick="showDetail('dress', ${dress.DP_NO})"><img src="/resources/assets/img/demo/property-4.jpg"></a>
                </div>
                <div class="dressNo" hidden="hidden">${dress.DP_NO}</div>
                <div class="item-entry overflow">
                  <h5><a href="javascript:void(0);" onclick="showDetail('dress', ${dress.DP_NO})">${dress.DP_NM} </a></h5>
                  <div class="dot-hr"></div>
                  <span class="pull-left"><b>${dress.DC_NM}</b> </span>
                  <span class="proerty-price pull-right">${dress.DP_PRICE}원</span>
                </div>
                <div>
                  <button name="dAddBtn" class="addCartBtn">
                    <i class="fa fa-cart-arrow-down"></i>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </c:forEach>
      </div>
      
      <div id="makeupTab" class="tab-pane fade">
        <c:forEach var="makeup" items="${makeupList}">
          <div class="proerty-th makeupItem">
            <div class="col-sm-6 col-md-3 p0">
              <div class="box-two proerty-item">
                <div class="item-thumb">
                  <a href="javascript:void(0);" onclick="showDetail('makeup', ${makeup.MP_NO})"><img src="/resources/assets/img/demo/property-4.jpg"></a>
                </div>
                <div class="makeupNo" hidden="hidden">${makeup.MP_NO}</div>
                <div class="item-entry overflow">
                  <h5><a href="javascript:void(0);" onclick="showDetail('makeup', ${makeup.MP_NO})">${makeup.MP_NM} </a></h5>
                  <div class="dot-hr"></div>
                  <span class="pull-left"><b>${makeup.MC_NM}</b> </span>
                  <span class="proerty-price pull-right">${makeup.MP_PRICE}원</span>
                </div>
                <div>
                  <button name="mAddBtn" class="addCartBtn">
                    <i class="fa fa-cart-arrow-down"></i>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </c:forEach>
      </div>
      
      <!-- Modal -->
      <div class="modal fade" id="addStatus" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">관심상품 삭제</h4>
            </div>
            <div class="modal-body">
              <p>관심상품이 삭제되었습니다.</p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
      </div>
      <!-- itemDetail Modal -->
      <div class="modal fade" id="showDetail" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">상세정보</h4>
            </div>
            <div class="modal-body">
              <p>상세정보...</p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
      </div>
    <!-- div container close -->
    </div>
  </div>
  <script>
  	$(document).ready(function() {
  		topFix();
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
  	
  	function addCart(){
  		var btns = $(".addCartBtn");
  		btns.on("click", function(){
  				
			var params = null;
			var role = "${sessionScope['login'].role}";
  			var no = "${sessionScope['login'].no}";
  			var btnName = $(this).attr("name");
  			
  			console.log(no);
  			console.log(role);
  			
  			if(role !== "users"){
  				$(".modal-body").html("관심상품 추가가 제한된 사용자입니다.");
  				$("#addStatus").modal();
  				return false;
  			}
  			
  			if(btnName === "sAddBtn"){
  				var sp_no = $(this).parent().prevAll(".studioNo").text().trim();
  				params = {
  						sp_no : sp_no,
  						no : no
  				};
  			} else if(btnName === "dAddBtn"){
  				var dp_no = $(this).parent().prevAll(".dressNo").text().trim();
  				params = {
  						dp_no : dp_no,
  						no : no
  				};
  			} else if(btnName === "mAddBtn"){
  				var mp_no = $(this).parent().prevAll(".makeupNo").text().trim();
  				params = {
  						mp_no : mp_no,
  						no : no
  				};
  			}
			$.ajax({
  				url: "/recommend/addToCart",
  				type: "post",
  				dataType: "json",
  				contentType: "application/json; charset=UTF-8",
  				data: JSON.stringify(params),
  				success: function(){
  					$(".modal-body").html("상품이 등록되었습니다.");
  					$("#addStatus").modal();
  				},
  				error: function(){
  					$(".modal-body").html("이미 등록된 상품입니다.");
  					$("#addStatus").modal();
  				}
  			});
		})
  	}
  	
  	function showDetail(item, no){
        var modal = $("#showDetail");
        
        if(item === "studio"){
          var param = {
              sp_no : no
          };
          $.ajax({
            url: "/recommend/list/sdetail",
            type: "get",
            async: false,
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            dataType: "json",
            data: param,
            success: function(studio){
            	console.log(studio);
            	var html = "<table>" +
                  		    "<tr>" +
                		      "<th>상품명</th>" +
                		      "<td colspan='3'>" + studio.SP_NM + "</td>" +
                		    "</tr>" +
                		    "<tr>" +
                		      "<th>업체명</th>" +
                		      "<td>" + studio.SC_NM + "</td>" +
                		      "<th>가격</th>" +
                		      "<td>" + studio.SP_PRICE + "</td>" +
                		    "</tr>" +
                		    "<tr>" +
                		      "<th>앨범/액자/비디오</th>";
                		      if(studio.SP_APV_YN === 'y'){
                		      html += "<td>포함</td>";
                		      } else {
                		    	  html += "<td>미포함</td>";
                		      }
                		      html += "<th>토탈샵</th>";
                		      if(studio.SP_TOTAL_YN === 'y'){
                		    	  html += "<td>포함</td>";
                		      } else {
                		    	  html += "<td>미포함</td>";
                		      }
                		      html += "</tr>" +
                		    "<tr>" +
                		      "<th>촬영장소(실내/외)</th>" +
                		      "<td>" + studio.SP_SHOOT_TYPE + "</td>" +
                		      "<th>갱신 날짜</th>" +
                		      "<td>" + studio.UPDATEDATE + "</td>" +
                		    "</tr>" +
                		    "<tr>" +
                		      "<th colspan='4'>상품 이미지</th>" +
                		    "</tr>" +
                		    "<tr>" +
                		      "<td colspan='4'>" + studio.SP_IMAGE + "</td>" +
                		    "</tr>" +
                		  "</table>";
              modal.find(".modal-body").html(html);
              modal.modal();
            },
            error: function(error){
            	console.log(error);
              modal.find(".modal-body").html(item + " error...");
              modal.modal();
            }
          });
          
        } else if(item === "dress"){
          var param = {
              dp_no : no
          };
          $.ajax({
            url: "/recommend/list/ddetail",
            type: "get",
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            data: param,
            success: function(){
              modal.find(".modal-body").html(item + " example");
              modal.modal();
            },
            error: function(){
              modal.find(".modal-body").html(item + " example");
              modal.modal();
            }
          });
          
        } else if(item === "makeup"){
          var param = {
              mp_no : no
          };
          $.ajax({
            url: "/recommend/list/mdetail",
            type: "get",
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            data: param,
            success: function(){
              modal.find(".modal-body").html(item + " example");
              modal.modal();
            },
            error: function(){
              modal.find(".modal-body").html(item + " example");
              modal.modal();
            }
          });
        }
      }
  </script>
  <%@include file="../../include/bottom.jsp"%>
</body>
</html>