<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<style type="text/css">
.client-text{
text-align: center; 
}
</style>
<title>스드메 역경매란?</title>
</head>
<body>
	<%@include file="../include/top.jsp"%>


	<!--TESTIMONIALS -->
	<div class="testimonial-area recent-property"
		style="background-color: #FCFCFC; padding-bottom: 15px;">
		<div class="container">
			<div class="row">
				<div
					class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
					<!-- /.feature title -->
					<h2>스드메 역경매 소개</h2>
					<!-- Hooking area -->
					<div class="hook">웨딩경매로 결혼비용 절약하면 신혼 여행지가 바뀐다? 스마트한 결혼준비로 비용은
						절약하고 만족은 높이세요!</div>

				</div>
			</div>

			<div class="row">
				<div class="row testimonial">
					<div class="col-md-12">
						<div id="testimonial-slider">
							<div class="item">
								<div class="welcome-estate">
									<div class="welcome-icon">
										<i class="pe-7s-users pe-4x"></i>
									</div>
									<h3>Step 1</h3>
									<strong>원하는 상품과 조건을 제시한다 </strong>
								</div>
							</div>
							<div class="item">
								<div class="welcome-estate">
									<div class="welcome-icon">
										<i class="pe-7s-pen pe-4x"></i>
									</div>
									<h3>Step 2</h3>
									<strong>웨딩 업체가 입찰서를 제출한다 </strong>
								</div>
							</div>
							<div class="item">
								<div class="welcome-estate">
									<div class="welcome-icon">
										<i class="pe-7s-notebook pe-4x"></i>
									</div>
									<h3>Step 3</h3>
									<strong>가장 마음에 드는 업체를 선택한다 </strong>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
      <button id="mypageBidList">신청서 별 입찰서 리스트</button>
      <button id="bidListBtn">입찰 리스트</button>
      <button id="winListBtn">낙찰 리스트</button>
      <button id="studioRegistBtn">스튜디오 역경매 신청하기</button>
      <button id="dressRegistBtn">드레스 역경매 신청하기</button>
      <button id="makeupRegistBtn">메이크업 역경매 신청하기</button>
		</div>
	</div>
		<div class="client-text">
			결혼을 준비하는 고객이 예식 희망조건을 원터치스드메 웨딩 사이트에 등록하면 제휴되어 있는 스튜디오, 드레스, 메이크업
			업체에서 조건을 살펴보고 신청을 통해 입찰을 제시합니다.<br> 고객들은 웨딩 업체가 서로 경쟁하며 제시하는
			입찰가와 혜택을 보고 가장 마음에 드는 업체를 선택 후 상담 해보고 계약할 수 있습니다.
			<p>*웨딩 역경매 신청은 무료이며, 어떠한 경우에도 별도 비용이 발생하지 않습니다.</p>
		</div>
	<%@include file="../include/bottom.jsp"%>
  
  <script>
  $(document).ready(
      function() {
    	  
        $('#mypageBidList').on("click", function(evt) {

              self.location = "/mypage/auction/apply";

          });

        $('#bidListBtn').on("click", function(evt) {

          self.location = "list";

        });
        
        $('#winListBtn').on("click", function(evt) {

            self.location = "win";

          });
        
        $('#studioRegistBtn').on("click", function(evt) {

            self.location = "apply";

          });
        
        $('#dressRegistBtn').on("click", function(evt) {

            self.location = "apply";

          });
        
        $('#makeupRegistBtn').on("click", function(evt) {

            self.location = "apply";

          });


      });
</script>
</body>
</html>