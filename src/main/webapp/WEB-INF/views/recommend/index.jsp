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
            <label>항목</label>
            <label class="checkbox-inline"><input type="checkbox" name="item" value="studio"> 스튜디오</label>
            <label class="checkbox-inline"><input type="checkbox" name="item" value="dress"> 드레스</label>
            <label class="checkbox-inline"><input type="checkbox" name="item" value="makeup"> 메이크업</label>
          </li>
          <li class="list-group-item">
            <label>지역</label>
            <div class="custom-select" style="width:200px;">
              <select name="location">
                <option value="">선택하세요</option>
                <option value="서울">서울</option>
                <option value="경기">경기</option>
                <option value="충북">충북</option>
                <option value="충남">충남</option>
                <option value="강원">강원</option>
                <option value="경북">경북</option>
                <option value="경남">경남</option>
                <option value="전북">전북</option>
                <option value="전남">전남</option>
                <option value="제주">제주</option>
              </select>
            </div>
          </li>
          <li class="list-group-item">
            <label>금액</label>
            <input type="text" class="form-control" name="minCost" placeholder="최소">      
            <input type="text" class="form-control" name="maxCost" placeholder="최대">      
          </li>
        </ul>  
<!--       <button id="nextBtn" class="btn search-btn" type="button" style="float: right"><i class="fa fa-caret-square-o-right"></i></button>
 -->      </div>
      
      <div class="studioForm" hidden="hidden">
        <ul class="list-group">
          <li class="list-group-item">
            <label>스튜디오 옵션</label>
            <label class="checkbox-inline"><input type="checkbox" name="studio" value="sp_shoot_type"> 실내/외 촬영</label>
            <label class="checkbox-inline"><input type="checkbox" name="studio" value="sp_total_yn"> 토탈샵(메이크업 + 드레스 제공)</label><br>
            <label class="checkbox-inline"><input type="checkbox" name="studio" value="sp_apv_yn"> 액자/앨범/비디오</label>
          </li>
        </ul>
      </div>  
      
      <div class="dressForm" hidden="hidden">
        <ul class="list-group">
          <li class="list-group-item">
            <label>드레스 종류</label>
            <label class="checkbox-inline"><input type="checkbox" name="line" value="a"> A라인</label>
            <label class="checkbox-inline"><input type="checkbox" name="line" value="h"> H라인</label>
            <label class="checkbox-inline"><input type="checkbox" name="line" value="b"> 벨라인</label><br>
            <label class="checkbox-inline"><input type="checkbox" name="line" value="p"> 프린세스라인</label>
            <label class="checkbox-inline"><input type="checkbox" name="line" value="m"> 머메이드라인</label>
            <label class="checkbox-inline"><input type="checkbox" name="line" value="e"> 엠파이어라인</label>
          </li>
        </ul>
      </div>
     
      <div class="makeupForm" hidden="hidden">
        <ul class="list-group">
          <li class="list-group-item">
          <label>메이크업 옵션</label>
          <label class="checkbox-inline"><input type="checkbox" name="makeup" value="mp_hair_yn"> 헤어</label>
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
        	$('.message').css('color', 'red');
      		//nextForm();
      		toggleForm();
  	})
  	
  	function numOnly(){
    	$("input:text[name='minCost']").on("keyup", function () { 
    	    this.value = this.value.replace(/[^0-9]/g,'');
    	});
    	$("input:text[name='maxCost']").on("keyup", function () { 
    	    this.value = this.value.replace(/[^0-9]/g,'');
    	});
    }
  
    function nextForm(){
    	$('#nextBtn').on("click", function(){
        	var itemChecked = $("input:checkbox[name='item']").is(':checked');
        	
        	var locationChecked = $(".custom-select option:selected").val();
    		
    		var minCostChecked = $("input:text[name='minCost']").val();
    		var maxCostChecked = $("input:text[name='maxCost']").val();
    		
    		if(!itemChecked){
        		$('.message').html("최소 하나 이상의 항목을 체크해주세요");
        		return;
        	}
        	
        	if(locationChecked == ""){
        		$('.message').html("지역을 선택해주세요");
        		return;
        	}
        	
			if(minCostChecked == "" || maxCostChecked == ""){
        		$('.message').html("최소/최대 금액을 입력해주세요.");
        		return;
        	} else if(parseInt(minCostChecked) > parseInt(maxCostChecked)){
        		$('.message').html("최대 금액은 최소 금액보다 커야 합니다.");
        		return;
        	}
			
			$('.indexForm').toggle("slow", toggleForm())
    	})
  	}
    
    function toggleForm(){

    	/* $("input:checkbox[name='item']:checked").each(function(){
    		var form = '.' + $(this).val() + 'Form';
    		$(form).toggle("slow");
    		$('.searchBtn').toggle("slow");
    		$('.message').html("");
    	}) */
    }
    
</script>


  <%@include file="../include/bottom.jsp" %>
</body>
</html>