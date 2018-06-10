<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@include file="../../include/top.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://www.jqueryscript.net/css/top.css" rel="stylesheet"
  type="text/css">
<title>상품 정보</title>
<script>
	$(function(){
		$("#btnRegDc").on('click', function(e){
			self.location = "/user/mypage/writedc";
		});
		
		$("#btnRegMc").on('click', function(e){
			self.location = "/user/mypage/writemc";
		});
		
		$("#btnRegSc").on('click', function(e){
			self.location = "/user/mypage/writesc";
		});
	});
</script>
</head>
  <div class="page-head"> 
      <div class="container">
          <div class="row">
              <div class="page-head-content">
                  <h1 class="page-title">상품 정보</h1>               
              </div>
          </div>
      </div>
  </div>
  
  <!-- <div class="container">
    <div class="col-md-4 p0">
      <button class="btn btn-primary">상품 등록</button>
    </div>
  </div> -->
  
  
  <c:if test="${login.role eq 'dc'}">
    <div class="properties-area recent-property" style="background-color: #FFF;">
      <div class="container">  
        <div class="row">
          <div class="col-md-12 pr0 properties-page">
            <div class="col-md-12 clear"> 
            <c:forEach items="${dlist}" var="item">
              <div id="list-type" class="proerty-th">
                <div class="col-sm-6 col-md-4 p0">
                  <div class="box-two proerty-item">
  
                    <div class="item-thumb">
                      <img src="/user/mypage/imgview?imgview=${item.dpImage}">
                    </div>
  
                    <div class="item-entry overflow">
                      <h5><a href="property-1.html">${item.dpNm}</a></h5>
                      <div class="dot-hr"></div>
                      <span class="proerty-price pull-right"> 가격 : ${item.dpPrice}원</span>
                      <label>드레스스타일 : ${item.dpStyle}</label>
                    </div>
                    <div class="dealer-action pull-right">                                        
                        <a href="submit-property.html" class="button">Edit </a>
                        <a href="#" class="button delete_user_car">Delete</a>
                    </div>
                  </div>
                </div> 
              </div>
            </c:forEach>  
            </div>
            <div class="col-md-12">
              <div class="pull-left">
                <button id="btnRegDc" class="btn btn-primary">상품 등록</button>
              </div>
              <div class="pull-right">
                <div class="pagination">
                  <ul>
                    <li><a href="#">Prev</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">6</a></li>
                    <li><a href="#">7</a></li>
                    <li><a href="#">8</a></li>
                    <li><a href="#">9</a></li>
                    <li><a href="#">Next</a></li>
                  </ul>
                </div>
              </div>                
            </div>
          </div>  
        </div>              
      </div>
    </div>
  </c:if>
  
  <c:if test="${login.role eq 'sc'}">
    <div class="properties-area recent-property" style="background-color: #FFF;">
      <div class="container">  
        <div class="row">
          <div class="col-md-12 pr0 properties-page">
            <div class="col-md-12 clear"> 
            <c:forEach items="${slist}" var="item">
              <div id="list-type" class="proerty-th">
                <div class="col-sm-6 col-md-4 p0">
                  <div class="box-two proerty-item">
  
                    <div class="item-thumb">
                      <img src="/user/mypage/imgview?imgview=${item.spImage}">
                    </div>
  
                    <div class="item-entry overflow">
                      <h5><a href="property-1.html">${item.spNm}</a></h5>
                      <div class="dot-hr"></div>
                      <span class="proerty-price pull-right"> 가격 : ${item.spPrice}원</span>
                      <label>앨범액자비디오여부 : ${item.spApvYn}</label>
                      <label>스튜디오토탈샵여부 : ${item.spTotalYn}</label>
                      <label>실내외촬영 : ${item.spShootType}</label>
                    </div>
                    <div class="dealer-action pull-right">                                        
                        <a href="submit-property.html" class="button">Edit </a>
                        <a href="#" class="button delete_user_car">Delete</a>
                    </div>
                  </div>
                </div> 
              </div>
            </c:forEach>  
            </div>
            <div class="col-md-12">
              <div class="pull-left">
                <button id="btnRegSc" class="btn btn-primary">상품 등록</button>
              </div>
              <div class="pull-right">
                <div class="pagination">
                  <ul>
                    <li><a href="#">Prev</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">6</a></li>
                    <li><a href="#">7</a></li>
                    <li><a href="#">8</a></li>
                    <li><a href="#">9</a></li>
                    <li><a href="#">Next</a></li>
                  </ul>
                </div>
              </div>                
            </div>
          </div>  
        </div>              
      </div>
    </div>
  </c:if>
  
  <c:if test="${login.role eq 'mc'}">
    <div class="properties-area recent-property" style="background-color: #FFF;">
      <div class="container">  
        <div class="row">
          <div class="col-md-12 pr0 properties-page">
            <div class="col-md-12 clear"> 
            <c:forEach items="${mlist}" var="item">
              <div id="list-type" class="proerty-th">
                <div class="col-sm-6 col-md-4 p0">
                  <div class="box-two proerty-item">
  
                    <div class="item-thumb">
                      <img src="/user/mypage/imgview?imgview=${item.mpImage}">
                    </div>
  
                    <div class="item-entry overflow">
                      <h5><a href="property-1.html">${item.mpNm}</a></h5>
                      <div class="dot-hr"></div>
                      <span class="proerty-price pull-right"> 가격 : ${item.mpPrice}원</span>
                      <div class="form-group">
	                      <label>악세사리대여여부 : ${item.mpAccYn}</label>
	                      <label>가족포함여부 : ${item.mpFamilyYn}</label>
	                      <label>헤어스타일링포함여부 : ${item.mpHairYn}</label>
                      </div>
                    </div>
                    <div class="dealer-action pull-right">                                        
                        <a href="submit-property.html" class="button">Edit </a>
                        <a href="#" class="button delete_user_car">Delete</a>
                    </div>
                  </div>
                </div> 
              </div>
            </c:forEach>  
            </div>
            <div class="col-md-12">
              <div class="pull-left">
                <button id="btnRegMc" class="btn btn-primary">상품 등록</button>
              </div>
              <div class="pull-right">
                <div class="pagination">
                  <ul>
                    <li><a href="#">Prev</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">6</a></li>
                    <li><a href="#">7</a></li>
                    <li><a href="#">8</a></li>
                    <li><a href="#">9</a></li>
                    <li><a href="#">Next</a></li>
                  </ul>
                </div>
              </div>                
            </div>
          </div>  
        </div>              
      </div>
    </div>
  </c:if>


<%@include file="../../include/bottom.jsp"%>

</body>
</html>