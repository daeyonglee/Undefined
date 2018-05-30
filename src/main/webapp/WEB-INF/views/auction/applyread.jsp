<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../include/top.jsp"%>
<!DOCTYPE html>

<html class="no-js">
<!--<![endif]-->
<head>
<link rel="stylesheet" href="/resources/assets/css/wizard.css">
<link rel="stylesheet" href="/resources/assets/css/user/join.css">

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="/resources/assets/js/user/join.js"></script>

</head>
<body>

<article class="container">
   <div class="page-header">
          <h1>상세보기</h1>
        </div> 
  <div class="row"> 
<div class="col-md-6">
<div class="form-group"> 
<label for="name">이름</label> 
<input type="text" class="form-control" name="writer" id="writer" readonly="readonly"value = ""> 
</div> 
</div> 
</div>
<div class="col-md-6"> 
<div class="form-group"> 
<label for="pass">아이피</label> 
<input type="text" class="form-control" name="ip" id="ip" readonly="readonly" value = ""> 
</div> 
</div> 
<div class="col-md-6"> 
<div class="form-group"> 
<label for="email">작성일</label> 
<input type="email" class="form-control" name ="regdate" id="regdate" readonly="readonly" value = ""> 
</div>
</div>
<div class="form-group"> 
<label for="subject">글제목</label> 
<input type="text" class="form-control" name ="subject" id="subject" readonly="readonly" value = ""> 
</div> 
<div class="form-group"> 
<label for="content">글내용</label> 
<textarea class="form-control" rows="10" name="content" id="content" readonly="readonly"></textarea> 
</div>

<input type="hidden" name= "no" value = "">
<input type="hidden" name= "userNo" value ="">
<input type="hidden" name= "stat" value = "">
<input type="hidden" name= "type" value = "">
<input type="hidden" name= "regdate" value = "">
<input type="hidden" name= "regdate" value = "">

<a href="bid" class = "btn btn-defalut pull-right">글목록</a>

</article>




  


  <%@include file="../include/bottom.jsp"%>
</body>
</html>