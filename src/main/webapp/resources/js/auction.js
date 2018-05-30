/**
 * 
 */

$.fn.extend({
  animateCss: function(animationName, callback) {
    var animationEnd = (function(el) {
      var animations = {
        animation: 'animationend',
        OAnimation: 'oAnimationEnd',
        MozAnimation: 'mozAnimationEnd',
        WebkitAnimation: 'webkitAnimationEnd',
      };

      for (var t in animations) {
        if (el.style[t] !== undefined) {
          return animations[t];
        }
      }
    })(document.createElement('div'));

    this.addClass('animated ' + animationName).one(animationEnd, function() {
      $(this).removeClass('animated ' + animationName);

      if (typeof callback === 'function') callback();
    });

    return this;
  },
});

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
	function selectRealTimeList() {
		$.ajax({
			async : true,
			type : "get",
			url : "/auction/realtimelist",
			success : function(data) {
				// 수신한 데이터 body에 추가
				updateRealTimeList(data);
			}
		});
	}
	
	selectRealTimeList(count);
	
	function updateRealTimeList(data) {
		console.log(data.length);
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
		
		var index = 5;
		var classIndex = 0;
		setInterval(function(){
			
			$('#realtimelist > tbody:first > tr:first').animateCss('fadeOutUp', function() {
				$('#realtimelist > tbody:first > tr:first').remove();
				
				var appendTag  = "<tr class='" + arr[classIndex] + "' style='position: relative;'>";
			    appendTag += "<td>입찰중</td>";
			    appendTag += "<td>" + data[index].writer + "</td>";
			    appendTag += "<td>" + data[index].loc +"</td>";
			    appendTag += "<td>" + data[index].deadline + "</td>";
			    appendTag += "<td>접수중</td>";
			
			    $("#realtimelist > tbody:first").append(appendTag);
			    $("#realtimelist > tbody:first > tr:last").animateCss('fadeInUp');
			});
			
			index++;
			
			if (classIndex == 4) {
				classIndex = 0;
			} else {
				classIndex++;
			}
			
			if (index == data.length-6) {
				index = 0;
			}
		}, 3000);
	}
});
