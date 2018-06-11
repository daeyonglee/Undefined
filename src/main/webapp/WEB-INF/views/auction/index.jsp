<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
        <script src="/resources/js/auction.js"></script>
<title>역경매 메인 페이지</title>

</head>
<body>

  <!-- Count area -->
  <div class="count-area">
    <div class="container"> 
      <div class="row">
        <div
          class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
          <!-- /.feature title -->
          <h2>스드메 역경매</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 col-xs-12 percent-blocks m-main"
          data-waypoint-scroll="true">
          <div class="row">
            <div class="col-sm-4 col-xs-6">
              <div class="count-item">
                <div class="count-item-circle">
                  <span class="pe-7s-users"></span>
                </div>
                <div class="chart" data-percent="12000">
                  <h2 class="percent" id="counter">0</h2>
                  <h5>전체회원수</h5>
                </div>
              </div>
            </div>
            <div class="col-sm-4 col-xs-6">
              <div class="count-item">
                <div class="count-item-circle">
                  <span class="pe-7s-home"></span>
                </div>
                <div class="chart" data-percent="12000">
                  <h2 class="percent" id="counter1">0</h2>
                  <h5>스드메 제휴 업체</h5> 
                </div>
              </div>
            </div>
            <div class="col-sm-4 col-xs-6">
              <div class="count-item">
                <div class="count-item-circle">
                  <span class="pe-7s-graph2"></span>
                </div>
                <div class="chart" data-percent="12000">
                  <h2 class="percent" id="counter3">0</h2>
                  <h5>역경매 신청 현황</h5>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <br>
  <div class="container">
    <h4 align="center">스튜디오 실시간 입낙찰 현황</h4>
  </div>
  <br>
  
  
    <div class="container" >
    
    <div class="form-group text-center" >
    
    <table id="realtimelist" class="table" style="width: 800px; height : 221px; display: inline-block;  transition-duration: 0.2s; text-align: center ;   " >
    <thead><tr class = "active"><td colspan = "5" align = "center"><a href = "list">입찰중 역경매</a></td></tr></thead>
    <tbody></tbody>     
    </table>
    
      
    <table id="winrealtimelist" class="table" style="width: 800px; height : 221px; display: inline-block;  transition-duration: 0.2s; text-align: center; " >
    <thead><tr class = "active"><td colspan = "5" align = "center"><a href = "win">낙찰된 역경매</a></td></tr></thead>
    <tbody></tbody>     
    </table>
    
    </div>
    
    <div class="container">
    <h4 align="center">드레스 실시간 입낙찰 현황</h4>
    </div>
    <br>
    <div class="form-group text-center">
    <table id="dressrealtimelist" class="table" style="width: 800px; height : 221px; display: inline-block;  transition-duration: 0.2s; text-align: center;" >
    <thead><tr class = "active"><td colspan = "5" align = "center"><a href = "list">입찰중 역경매</a></td></tr></thead>
    <tbody></tbody>     
    </table>
    
    
    <table id="dresswinrealtimelist" class="table" style="width: 800px; height : 221px; display: inline-block;  transition-duration: 0.2s; text-align: center; " >
    <thead><tr class = "active"><td colspan = "5" align = "center"><a href = "win">낙찰된 역경매</a></td></tr></thead>
    <tbody></tbody>     
    </table>
    </div>
    <div class="container">
    <h4 align="center">메이크업 실시간 입낙찰 현황</h4>
    </div>
    <br>
    <div class="form-group text-center">
    <table id="makeuprealtimelist" class="table" style="width: 800px; height : 221px; display: inline-block;  transition-duration: 0.2s; text-align: center; " >
    <thead><tr class = "active"><td colspan = "5" align = "center"><a href = "list">입찰중 역경매</a></td></tr></thead>
    <tbody></tbody>     
    </table>
    
       
    <table id="makeupwinrealtimelist" class="table" style="width: 800px; height : 221px; display: inline-block;  transition-duration: 0.2s; text-align: center; " >
    <thead><tr class = "active"><td colspan = "5" align = "center"><a href = "win">낙찰된 역경매</a></td></tr></thead>
    <tbody></tbody>     
    </table>           
    </div>
    
      <div class="form-group text-center">
           <a href="apply" class="btn btn-primary">역경매 신청하기<i class="fa fa-check spaceLeft"></i></a>
      </div>
    </div>

    <%@include file="../include/bottom.jsp"%>
    
</body>
</html>