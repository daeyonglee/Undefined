/**
 * 
 */

$(document).ready(function(){

	var realTimeList = [];
	var count = 1;
	
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
		        }, 100);
		    }, 10); 
			
		}
	});
	
	// 데이터를 20개씩 조회한다.
	function selectRealTimeList(count) {
		$.ajax({
			async : true,
			type : "get",
			data: {count:count},
			url : "/auction/realtimelist",
			success : function(data) {
				// 수신한 데이터 body에 추가
				
				updateRealTimeList(data);
				
			}
		});
	}
	
	selectRealTimeList(count);
	
	function updateRealTimeList(data) {
		
		if (data.length < 0) {
			return;
		}
		
		var arr = ["success", "danger", "info", "warning", "active"];
		var html = "";
		
		for (var i=0; i<5; i++) {
			html += "<tr class=" + arr[i] + " style='position: relative;'>";
			html += "<td>입찰중</td>";
			html += "<td>" + data[i].writer + "</td>";
			html += "<td>" + data[i].loc +"</td>";
			html += "<td>" + data[i].deadline + "</td>";
			html += "<td>접수중</td>";
			html += "</tr>";
		}
		
		$("#realtimelist > tbody:last").append(html);
		
		var index = 6;
		
		// remove ㅇ나되고 5개씩 추가되지
		
		
		setInterval(function(){
			
			if (index == 20) {
				selectRealTimeList(++count);
			}
			
			/*$("#realtimelist > tbody:first > tr:first").fadeOut(function(){
				$(this).remove();
			});*/
			
			$('#realtimelist').animateCss('fadeOutUp', function() {
				$(this).remove();
			});
			
			var appendTag  = "<tr class='' style='position: relative;'>";
			    appendTag += "<td>입찰중</td>";
			    appendTag += "<td>" + data[index].writer + "</td>";
			    appendTag += "<td>" + data[index].loc +"</td>";
			    appendTag += "<td>" + data[index].deadline + "</td>";
			    appendTag += "<td>접수중</td>";
			
			$("#realtimelist > tbody:first").append(appendTag);
			
			index++;
			
		}, 3000);
		
		// 6 ~ 20 까지 1번째 tr을 제거하고 5번째 tr을 추가한다.
		// 1
		// 만약에 realTimeList이 마지막이라면 다시 재 조회
		
		/*
		
		var html = "";
		
		for (var i in data) {
			html += "<tr class=" + arr[i] + " style='position: relative;'>";
			html += "<td>입찰중</td>";
			html += "<td>" + data[i].writer + "</td>";
			html += "<td>" + data[i].loc +"</td>";
			html += "<td>" + data[i].deadline + "</td>";
			html += "<td>접수중</td>";
			html += "</tr>";
			console.log(html);
		}
		
		console.log($("#realtimelist"));
		$("#realtimelist > tbody:last").slideUp(300).append(html);*/
		
	}
	
	// 실시간으로 역경매 현황을 조회한다. 2초마다.
	/*setInterval(function(){
		console.log($("#realtimelist > tbody:last").length);
	}, 3000);*/
});
