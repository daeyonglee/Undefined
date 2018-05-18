<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
 <style>
  table, th, td {
    border: 1px solid #bcbcbc;
  }
  table {
    width: 400px;
    height: 200px;
    margin-left: auto;
    margin-right: auto;
  }
  
</style>
<title>역경매 메인 페이지</title>
</head>
<body>
  <%@include file="../include/top.jsp"%>


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
  <div class="container">
    <h4 align="center">스드메 역경매 입찰 현황</h4>
  </div>
  <div class="container" >
    <table border="1">
    <tr>
    <td>입찰중</td>
    <td>일종찬</td>
    <td>서울특별시 금천구</td>
    <td>D-21일</td>
    <td>접수중</td>
    </tr>
    <tr>
    <td>입찰중</td>
    <td>일종찬</td>
    <td>서울특별시 금천구</td>
    <td>D-21일</td>
    <td>접수중</td>
    </tr>
    <tr>
    <td>입찰중</td>
    <td>일종찬</td>
    <td>서울특별시 금천구</td>
    <td>D-21일</td>
    <td>접수중</td>
    </tr>
    <tr>
    <td>입찰중</td>
    <td>일종찬</td>
    <td>서울특별시 금천구</td>
    <td>D-21일</td>
    <td>접수중</td>
    </tr>
    <tr>
    <td>입찰중</td>
    <td>일종찬</td>
    <td>서울특별시 금천구</td>
    <td>D-21일</td>
    <td>접수중</td>
    </tr>
    </table>

  </div>


  <%@include file="../include/bottom.jsp"%>
</body>
</html>