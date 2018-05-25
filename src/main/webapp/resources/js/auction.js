/**
 * 
 */

$(document).ready(function(){

	// 전체 회원 수 조회
	// 스드메 제휴 업체 수 조회
	// 역경매 신청현황 수 조회
	$.ajax({
		async : true,
		type : "get",
		url : "/auction/count",
		success : function(data) {
			// 수신한 데이터 body에 추가
			setTimeout(function () {
		        $('#counter').text('0');
		        $('#counter1').text('0');
		        $('#counter3').text('0');
		        setInterval(function () {
		            var curval = parseInt($('#counter').text());
		            var curval1 = parseInt($('#counter1').text().replace(' ', ''));
		            var curval3 = parseInt($('#counter3').text());
		            
		            // 조회된 값보다 작을 때 +1 씩 하면서 증가
		            if (curval < data.userCnt) {
		            	$('#counter').text(curval+1);
		            }
		            if (curval1 < data.companyCnt) {
		            	$('#counter1').text(curval1+1);
		            }
		            if (curval3 < data.bidCnt) {
		            	$('#counter3').text(curval3+1);
		            }
		        }, 1);
		    }, 10); 
			
		}
	});
})
