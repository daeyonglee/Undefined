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
    <ul class="list-group">
      <li class="list-group-item">
        <label>항목</label>
        <label class="checkbox-inline"><input type="checkbox" value=""> 스튜디오</label>
        <label class="checkbox-inline"><input type="checkbox" value=""> 드레스</label>
        <label class="checkbox-inline"><input type="checkbox" value=""> 메이크업</label>
      </li>
      <li class="list-group-item">
        <label>지역</label>
        <div class="custom-select" style="width:200px;">
          <select>
            <option value="0">Select car:</option>
            <option value="1">Audi</option>
            <option value="2">BMW</option>
            <option value="3">Citroen</option>
            <option value="4">Ford</option>
            <option value="5">Honda</option>
            <option value="6">Jaguar</option>
            <option value="7">Land Rover</option>
            <option value="8">Mercedes</option>
            <option value="9">Mini</option>
            <option value="10">Nissan</option>
            <option value="11">Toyota</option>
            <option value="12">Volvo</option>
          </select>
        </div>
      </li>
      <li class="list-group-item">
        <label>금액</label>
        <input type="text" class="form-control" placeholder="최소">      
        <input type="text" class="form-control" placeholder="최대">      
      </li>
    </ul>
  </form>
  
  <div class="panel panel-success">
    <div class="panel-heading">스튜디오 옵션</div>
    <div class="panel-body">
      <label class="checkbox-inline"><input type="checkbox" value=""> 실내/외 촬영</label>
      <label class="checkbox-inline"><input type="checkbox" value=""> 토탈샵(메이크업 + 드레스 제공)</label><br>
      <label class="checkbox-inline"><input type="checkbox" value=""> 액자</label>
      <label class="checkbox-inline"><input type="checkbox" value=""> 앨범</label>
      <label class="checkbox-inline"><input type="checkbox" value=""> 비디오</label>
    </div>
  </div>
  <div class="panel panel-success">
    <div class="panel-heading">드레스 종류</div>
    <div class="panel-body">
      <label class="checkbox-inline"><input type="checkbox" value=""> A라인</label>
      <label class="checkbox-inline"><input type="checkbox" value=""> H라인</label>
      <label class="checkbox-inline"><input type="checkbox" value=""> 벨라인</label><br>
      <label class="checkbox-inline"><input type="checkbox" value=""> 프린세스라인</label>
      <label class="checkbox-inline"><input type="checkbox" value=""> 머메이드라인</label>
      <label class="checkbox-inline"><input type="checkbox" value=""> 엠파이어라인</label>
    </div>
  </div>
  <div class="panel panel-success">
    <div class="panel-heading">메이크업 옵션</div>
    <div class="panel-body">
      <label class="checkbox-inline"><input type="checkbox" value=""> 헤어</label>
      <label class="checkbox-inline"><input type="checkbox" value=""> 가족포함</label>
      <label class="checkbox-inline"><input type="checkbox" value=""> 악세사리</label>
    </div>
  </div>
  
  <button class="btn search-btn" type="submit"><i class="fa fa-search"></i></button>
  
</div>



<%@include file="../include/bottom.jsp" %>
</body>
</html>