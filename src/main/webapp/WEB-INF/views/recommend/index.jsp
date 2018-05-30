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
    
    <form>
      <div class="indexForm">
        <ul class="list-group">
          <li class="list-group-item">
            <label>항목</label>
            <label class="checkbox-inline"><input type="checkbox" name="studio" value="s"> 스튜디오</label>
            <label class="checkbox-inline"><input type="checkbox" name="dress" value="d"> 드레스</label>
            <label class="checkbox-inline"><input type="checkbox" name="makeup" value="m"> 메이크업</label>
          </li>
          <li class="list-group-item">
            <label>지역</label>
            <div class="custom-select" style="width:200px;">
              <select name="location">
                <option value="">선택하세요</option>
                <option value="1">서울</option>
                <option value="2">경기</option>
                <option value="3">충북</option>
                <option value="4">충남</option>
                <option value="5">강원</option>
                <option value="6">경북</option>
                <option value="7">경남</option>
                <option value="8">전북</option>
                <option value="9">전남</option>
                <option value="10">제주도</option>
              </select>
            </div>
          </li>
          <li class="list-group-item">
            <label>금액</label>
            <input type="text" class="form-control" name="minCost" placeholder="최소">      
            <input type="text" class="form-control" name="maxCost" placeholder="최대">      
          </li>
        </ul>  
      <button id="nextBtn" class="btn search-btn" type="button" style="float: right"><i class="fa fa-caret-square-o-right"></i></button>
      </div>
      
      <div class="studioForm" hidden="hidden">
        <ul class="list-group">
          <li class="list-group-item">
            <label>스튜디오 옵션</label>
            <label class="checkbox-inline"><input type="checkbox" name="shoot" value="shoot"> 실내/외 촬영</label>
            <label class="checkbox-inline"><input type="checkbox" name="total" value="total"> 토탈샵(메이크업 + 드레스 제공)</label><br>
            <label class="checkbox-inline"><input type="checkbox" name="apv" value="apv"> 액자/앨범/비디오</label>
          </li>
        </ul>
      </div>  
      
      <div class="dressForm" hidden="hidden">
        <ul class="list-group">
          <li class="list-group-item">
            <label>드레스 종류</label>
            <label class="checkbox-inline"><input type="checkbox" name="a" value="a"> A라인</label>
            <label class="checkbox-inline"><input type="checkbox" name="h" value="h"> H라인</label>
            <label class="checkbox-inline"><input type="checkbox" name="b" value="b"> 벨라인</label><br>
            <label class="checkbox-inline"><input type="checkbox" name="p" value="p"> 프린세스라인</label>
            <label class="checkbox-inline"><input type="checkbox" name="m" value="m"> 머메이드라인</label>
            <label class="checkbox-inline"><input type="checkbox" name="e" value="e"> 엠파이어라인</label>
          </li>
        </ul>
      </div>
     
      <div class="makeupForm" hidden="hidden">
        <ul class="list-group">
          <li class="list-group-item">
          <label>메이크업 옵션</label>
          <label class="checkbox-inline"><input type="checkbox" name="hair" value="hair"> 헤어</label>
          <label class="checkbox-inline"><input type="checkbox" name="family" value="family"> 가족포함</label>
          <label class="checkbox-inline"><input type="checkbox" name="acc" value="acc"> 악세사리</label>
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
        	$('.message').css('color', 'red');
      		nextForm();
  	})
  
    function nextForm(){
    	$('#nextBtn').on("click", function(){
    		var studioChecked = $("input:checkbox[name='studio']").is(':checked')
        	var dressChecked = $("input:checkbox[name='dress']").is(':checked')
        	var makeupChecked = $("input:checkbox[name='makeup']").is(':checked')
        	
        	if(studioChecked || dressChecked || makeupChecked){
    			$('.indexForm').toggle("slow", toggleForm(studioChecked, dressChecked, makeupChecked));
        	} else {
        		$('.message').html("최소 하나 이상의 항목을 체크해주세요");
        	}
    	})
  	}
    
    function toggleForm(studioChecked, dressChecked, makeupChecked){
        	if(studioChecked){
    	    	$('.studioForm').toggle("slow");
        	}
        	if(dressChecked){
    	    	$('.dressForm').toggle("slow");
        	}
        	if(makeupChecked){
    	    	$('.makeupForm').toggle("slow");
        	}
        	$('.searchBtn').toggle("slow");
    }
    
</script>


  <%@include file="../include/bottom.jsp" %>
</body>
</html>