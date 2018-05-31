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
		        }, 50);
		    }, 10); 
			
		}
	});
	
	// 데이터를 20개씩 조회한다.
	function selectRealTimeList1() {
		$.ajax({
			async : true,
			type : "get",
			url : "/auction/realtimelist",
			success : function(data) {
				// 수신한 데이터 body에 추가
				updateRealTimeList1(data);
			}
		});
	}
	
	selectRealTimeList1(count);
	
	function updateRealTimeList1(data) {
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
			html += "<td>" + data[i].stat +"</td>";
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
			    appendTag += "<td>" + data[index].stat +"</td>";
			
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
	
	function selectRealTimeList2() {
		$.ajax({
			async : true,
			type : "get",
			url : "/auction/winrealtimelist",
			success : function(data) {
				// 수신한 데이터 body에 추가
				updateRealTimeList2(data);
			}
		});
	}
	
	selectRealTimeList2(count);
	
	function updateRealTimeList2(data) {
		if (data.length < 0) {
			return;
		}
		
		var arr = ["success", "danger", "info", "warning", "active"];
		var html = "";
		
		for (var i=0; i<5; i++) {
			html += "<tr class=" + arr[i] + " style='position: relative;'>";
			html += "<td>" + data[i].stat +"</td>";
			html += "<td>" + data[i].writer + "</td>";
			html += "<td>" + data[i].loc +"</td>";
			html += "<td>" + data[i].deadline + "</td>";
			html += "<td>할인율</td>";
			html += "</tr>";
		}
		
		$("#winrealtimelist > tbody:last").append(html);
		
		var index = 5;
		var classIndex = 0;
		setInterval(function(){
			
			$('#winrealtimelist > tbody:first > tr:first').animateCss('fadeOutUp', function() {
				$('#winrealtimelist > tbody:first > tr:first').remove();
				
				var appendTag  = "<tr class='" + arr[classIndex] + "' style='position: relative;'>";
			    appendTag += "<td>" + data[i].stat +"</td>";
			    appendTag += "<td>" + data[index].writer + "</td>";
			    appendTag += "<td>" + data[index].loc +"</td>";
			    appendTag += "<td>" + data[index].deadline + "</td>";
			    appendTag += "<td>할인율</td>";
			
			    $("#winrealtimelist > tbody:first").append(appendTag);
			    $("#winrealtimelist > tbody:first > tr:last").animateCss('fadeInUp');
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
	
	// 데이터를 20개씩 조회한다.
	function selectRealTimeList3() {
		$.ajax({
			async : true,
			type : "get",
			url : "/auction/dressrealtimelist",
			success : function(data) {
				// 수신한 데이터 body에 추가
				updateRealTimeList3(data);
			}
		});
	}
	
	selectRealTimeList3(count);
	
	function updateRealTimeList3(data) {
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
			html += "<td>" + data[i].stat +"</td>";
			html += "</tr>";
		}
		
		$("#dressrealtimelist > tbody:last").append(html);
		
		var index = 5;
		var classIndex = 0;
		setInterval(function(){
			
			$('#dressrealtimelist > tbody:first > tr:first').animateCss('fadeOutUp', function() {
				$('#dressrealtimelist > tbody:first > tr:first').remove();
				
				var appendTag  = "<tr class='" + arr[classIndex] + "' style='position: relative;'>";
			    appendTag += "<td>입찰중</td>";
			    appendTag += "<td>" + data[index].writer + "</td>";
			    appendTag += "<td>" + data[index].loc +"</td>";
			    appendTag += "<td>" + data[index].deadline + "</td>";
			    appendTag += "<td>" + data[index].stat +"</td>";
			
			    $("#dressrealtimelist > tbody:first").append(appendTag);
			    $("#dressrealtimelist > tbody:first > tr:last").animateCss('fadeInUp');
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
	
	function selectRealTimeList4() {
		$.ajax({
			async : true,
			type : "get",
			url : "/auction/dresswinrealtimelist",
			success : function(data) {
				// 수신한 데이터 body에 추가
				updateRealTimeList4(data);
			}
		});
	}
	
	selectRealTimeList4(count);
	
	function updateRealTimeList4(data) {
		if (data.length < 0) {
			return;
		}
		
		var arr = ["success", "danger", "info", "warning", "active"];
		var html = "";
		
		for (var i=0; i<5; i++) {
			html += "<tr class=" + arr[i] + " style='position: relative;'>";
			html += "<td>" + data[i].stat +"</td>";
			html += "<td>" + data[i].writer + "</td>";
			html += "<td>" + data[i].loc +"</td>";
			html += "<td>" + data[i].deadline + "</td>";
			html += "<td>할인율</td>";
			html += "</tr>";
		}
		
		$("#dresswinrealtimelist > tbody:last").append(html);
		
		var index = 5;
		var classIndex = 0;
		setInterval(function(){
			
			$('#dresswinrealtimelist > tbody:first > tr:first').animateCss('fadeOutUp', function() {
				$('#dresswinrealtimelist > tbody:first > tr:first').remove();
				
				var appendTag  = "<tr class='" + arr[classIndex] + "' style='position: relative;'>";
			    appendTag += "<td>" + data[i].stat +"</td>";
			    appendTag += "<td>" + data[index].writer + "</td>";
			    appendTag += "<td>" + data[index].loc +"</td>";
			    appendTag += "<td>" + data[index].deadline + "</td>";
			    appendTag += "<td>할인율</td>";
			
			    $("#dresswinrealtimelist > tbody:first").append(appendTag);
			    $("#dresswinrealtimelist > tbody:first > tr:last").animateCss('fadeInUp');
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
	
	// 데이터를 20개씩 조회한다.
	function selectRealTimeList5() {
		$.ajax({
			async : true,
			type : "get",
			url : "/auction/makeuprealtimelist",
			success : function(data) {
				// 수신한 데이터 body에 추가
				updateRealTimeList5(data);
			}
		});
	}
	
	selectRealTimeList5(count);
	
	function updateRealTimeList5(data) {
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
			html += "<td>" + data[i].stat +"</td>";
			html += "</tr>";
		}
		
		$("#makeuprealtimelist > tbody:last").append(html);
		
		var index = 5; 	
		var classIndex = 0;
		setInterval(function(){
			
			$('#makeuprealtimelist > tbody:first > tr:first').animateCss('fadeOutUp', function() {
				$('#makeuprealtimelist > tbody:first > tr:first').remove();
				
				var appendTag  = "<tr class='" + arr[classIndex] + "' style='position: relative;'>";
			    appendTag += "<td>입찰중</td>";
			    appendTag += "<td>" + data[index].writer + "</td>";
			    appendTag += "<td>" + data[index].loc +"</td>";
			    appendTag += "<td>" + data[index].deadline + "</td>";
			    appendTag += "<td>" + data[index].stat +"</td>";
			
			    $("#makeuprealtimelist > tbody:first").append(appendTag);
			    $("#makeuprealtimelist > tbody:first > tr:last").animateCss('fadeInUp');
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
	
	function selectRealTimeList6() {
		$.ajax({
			async : true,
			type : "get",
			url : "/auction/makeupwinrealtimelist",
			success : function(data) {
				// 수신한 데이터 body에 추가
				updateRealTimeList6(data);
			}
		});
	}
	
	selectRealTimeList6(count);
	
	function updateRealTimeList6(data) {
		if (data.length < 0) {
			return;
		}
		
		var arr = ["success", "danger", "info", "warning", "active"];
		var html = "";
		
		for (var i=0; i<5; i++) {
			html += "<tr class=" + arr[i] + " style='position: relative;'>";
			html += "<td>" + data[i].stat +"</td>";
			html += "<td>" + data[i].writer + "</td>";
			html += "<td>" + data[i].loc +"</td>";
			html += "<td>" + data[i].deadline + "</td>";
			html += "<td>할인율</td>";
			html += "</tr>";
		}
		
		$("#makeupwinrealtimelist > tbody:last").append(html);
		
		var index = 5;
		var classIndex = 0;
		setInterval(function(){
			
			$('#makeupwinrealtimelist > tbody:first > tr:first').animateCss('fadeOutUp', function() {
				$('#makeupwinrealtimelist > tbody:first > tr:first').remove();
				
				var appendTag  = "<tr class='" + arr[classIndex] + "' style='position: relative;'>";
			    appendTag += "<td>" + data[i].stat +"</td>";
			    appendTag += "<td>" + data[index].writer + "</td>";
			    appendTag += "<td>" + data[index].loc +"</td>";
			    appendTag += "<td>" + data[index].deadline + "</td>";
			    appendTag += "<td>할인율</td>";
			
			    $("#makeupwinrealtimelist > tbody:first").append(appendTag);
			    $("#makeupwinrealtimelist > tbody:first > tr:last").animateCss('fadeInUp');
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
