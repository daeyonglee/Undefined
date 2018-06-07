<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>역경매 입찰서 리스트</title>
<style type="text/css">
body {
	background: #F5F5F5;
}

#count #newBtn #basic {
	text-align: center;
}

td, th {
	text-align: center;
}

.form-group {
	margin: 15px auto;
}
</style>
</head>
<body>
  <%@include file="../../include/top.jsp"%>

  <!-- Main content -->
  <section class="content">
    <div class="testimonial-area recent-property"
      style="background-color: #FCFCFC; padding-bottom: 15px;">
      <div class="container">
        <div class="row">
          <div
            class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">

            <!-- general form elements -->
            <div class="box" style="text-align: center;">
              <div class="box-header with-border">
                <h3 class="box-title">입찰서 리스트</h3>
              </div>
                <div class="clearfix" style="height: 15px"></div>
                <form role = "form" method="post">
                    <input type="hidden" name="user" value="${bid.userNo}" />
                </form>
              <div class="box-body">
                <table class="table table-bordered">
                  <tr>
                    <td colspan="6">입찰 신청 건수 : ******* 건</td>
                  </tr>
                  <tr>
                    <th style="width: 100px">번호</th>
                    <th style="width: 100px">종류</th>
                    <th style="width: 100px">예식희망지역</th>
                    <th style="width: 200px">예식희망일자</th>
                    <th style="width: 100px">입찰마감일</th>
                    <th style="width: 200px">상태</th>
                  </tr>
                  <c:forEach items="${bidList}" var="bid">
                    <tr id = "visible">
                      <td>1</td>
                      <td>${bid.type }</td>
                      <td>${bid.loc }</td>
                      <td>${bid.day}</td>
                      <td>${bid.deadline }</td>
                      <td><a href= "bid/read?applyNo=${bid.applyNo}&type=${bid.type }">${bid.stat }</a></td>
                    </tr>
                  </c:forEach>
               </table>
              </div>
            </div>
            <!-- /.box-body -->

          </div>
          <!--/.col (left) -->

        </div>
            <!--  submit 버튼   -->
            <div class="form-group text-center">
              <span id=button>  
              <input type='button' class='btn-primary' id="list" name='list' value='글목록' style="width: 140px; padding-top: 5px; padding-bottom: 5px" />
              </span>
            </div>
            <div class="clearfix"></div>
        <!-- /.row -->
      </div>
    </div>
  </section>
  <!-- /.content -->

 <form id="jobForm">
  <input type='hidden' name="page" value="${pageMaker.params.page}" >
  <input type='hidden' name="perPageNum" value="${pageMaker.params.perPageNum}" >
 </form>

 <script>
      $(document).ready(function() {

			$("#list").on("click", function() {
              self.location = "apply";
            });
      });
    </script>

 
  <%@include file="../../include/bottom.jsp"%>
</body>
</html>
