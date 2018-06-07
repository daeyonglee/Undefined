<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<%@include file="../include/top.jsp" %>
</head>
<body>

  <div class="container">
    <h2 class="text-center">스드메 통합추천</h2>
    
    <form action="/recommend/list" method="post">
      <div class="indexForm">
        <ul class="list-group">
          <li class="list-group-item">
            <label style="float: left;">항목</label>
            <label class="checkbox-inline" id="studio"><input type="checkbox" name="item" value="studio"> 스튜디오</label>
            <label class="checkbox-inline" id="dress"><input type="checkbox" name="item" value="dress"> 드레스</label>
            <label class="checkbox-inline" id="makeup"><input type="checkbox" name="item" value="makeup"> 메이크업</label>
          </li>
          <li class="list-group-item">
            <label style="float: left;">지역</label>
              <select name="location" style="margin-left: 20px;">
                <option value="선택">선택하세요</option>
                <option value="서울">서울</option>
                <option value="경기">경기</option>
                <option value="충청북도">충북</option>
                <option value="충청남도">충남</option>
                <option value="강원도">강원</option>
                <option value="경상북도">경북</option>
                <option value="경상남도">경남</option>
                <option value="전라북도">전북</option>
                <option value="전라남도">전남</option>
                <option value="제주">제주</option>
              </select>
          </li>
          <li class="list-group-item">
            <label style="float: left;">금액</label>
            <input type="text" class="form-control" name="minCost" placeholder="최소">      
            <input type="text" class="form-control" name="maxCost" placeholder="최대">      
          </li>
        </ul>  
      </div>
      
      <div class="studioForm" hidden="hidden">
        <ul class="list-group">
          <li class="list-group-item">
            <label style="float: left;">스튜디오 옵션</label>
            <label class="checkbox-inline" id="shoot"><input type="checkbox" name="studio"> 실내/외 촬영</label>
            <select name="studio" disabled="disabled">
              <option value="실내">실내</option>
              <option value="실외">실외</option>
              <option value="모두">모두</option>
            </select>
            <label class="checkbox-inline"><input type="checkbox" name="studio" value="sp_total_yn"> 토탈샵(메이크업 + 드레스 제공)</label>
            <label class="checkbox-inline"><input type="checkbox" name="studio" value="sp_apv_yn"> 액자/앨범/비디오</label>
          </li>
        </ul>
      </div>  
      
      <div class="dressForm" hidden="hidden">
        <ul class="list-group">
          <li class="list-group-item">
            <label style="float: left;">드레스 종류</label>
            <label class="checkbox-inline"><input type="checkbox" name="dress" value="a"> A라인</label>
            <label class="checkbox-inline"><input type="checkbox" name="dress" value="h"> H라인</label>
            <label class="checkbox-inline"><input type="checkbox" name="dress" value="벨"> 벨라인</label>
            <label class="checkbox-inline"><input type="checkbox" name="dress" value="프린세스"> 프린세스라인</label>
            <label class="checkbox-inline"><input type="checkbox" name="dress" value="머메이드"> 머메이드라인</label>
            <label class="checkbox-inline"><input type="checkbox" name="dress" value="엠파이어"> 엠파이어라인</label>
          </li>
        </ul>
      </div>
     
      <div class="makeupForm" hidden="hidden">
        <ul class="list-group">
          <li class="list-group-item">
          <label style="float: left;">메이크업 옵션</label>
          <label class="checkbox-inline"><input type="checkbox" name="makeup" value="mp_hair_yn"> 헤어포함</label>
          <label class="checkbox-inline"><input type="checkbox" name="makeup" value="mp_family_yn"> 가족포함</label>
          <label class="checkbox-inline"><input type="checkbox" name="makeup" value="mp_acc_yn"> 악세사리</label>
          </li>
        </ul>
      </div>
      
      <div class="searchBtn" hidden="hidden">
        <button id="searchBtn" class="btn search-btn" type="submit" style="float: right"><i class="fa fa-search"></i></button>
      </div>
    </form>
    <div class="message text-center"></div>
  </div>
  
<script>
    $(document).ready(
    	function(){
        	numOnly();
      		toggleForm();
      		shootTypeSwitch();
      		searchBtnEvent();
  	})
  	
  	function numOnly(){
    	$("input:text[name='minCost']").keyup(function () {
    	    this.value = this.value.replace(/[^0-9]/g,'');
    	});
    	$("input:text[name='maxCost']").keyup(function () {
    	    this.value = this.value.replace(/[^0-9]/g,'');
    	});
    }
    
  	function toggleStudio(){
		$('.studioForm').toggle("slow");
	}
  	
  	function toggleDress(){
		$('.dressForm').toggle("slow");
	}
  	
  	function toggleMakeup(){
		$('.makeupForm').toggle("slow");
	}
  	
    function toggleForm(){
    	
    	$('#studio').on("click", toggleStudio);
    	 
    	$('#dress').on("click", toggleDress);
    	
    	$('#makeup').on("click", toggleMakeup);
    	
    	$(".checkbox-inline").on("click", function(){
    		var xor = [];
    		$("input:checkbox[name='item']").each(function(index){
    			var isItemChecked = $("input:checkbox[value=" + $(this).val() + "]").is(":checked");
    			var isOptionChecked = $("input:checkbox[name=" + $(this).val() + "]").is(":checked");
    			xor[index] = isOptionChecked || (!isItemChecked && !isOptionChecked);
    		});
    		
    		if(xor[0] && xor[1] && xor[2] && $("input:checkbox[name='item']").is(":checked")){
				$(".searchBtn").show("slow");
			} else {
				$(".searchBtn").hide("slow");
			}
    	});
    }
    
    function shootTypeSwitch(){
    	$("#shoot").on("click", function(){
    		if($(this).find("input:checkbox").is(":checked")){
    			$("select[name='studio']").attr("disabled", false);
    		} else {
    			$("select[name='studio']").attr("disabled", true);
    		}
    	});
    }
    
    function searchBtnEvent(){
    	$('.message').css('color', 'red');
    	$(".searchBtn").on("click", function(){
    		if($("select[name='location']").val() == "선택"){
    			$(".message").html("지역을 선택해주세요...");
    			return false;
    		}
    		
    		if($("input:text[name='minCost']").val() == "" || $("input:text[name='maxCost']").val() == ""){
    			$(".message").html("금액을 입력해주세요...");
    			return false;
    		}
    	})
    }
    
</script>


  <%@include file="../include/bottom.jsp" %>
</body>
</html>