<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

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
  <%@include file="../include/top.jsp"%>

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
                <h3 class="box-title">스드메 역경매</h3>
                <ul class="nav nav-tabs nav-justified">
                  <li class="active"><a href="#">입찰 중인 경매</a></li>
                  <li><a href="win">낙찰된 경매</a></li>
                </ul>
              </div>
              <div class="form-group">
                <select name="searchType" id="searchType" class="selectpicker show-tick form-control">
                  <option value="" selected="selected">종류를 선택하세요</option>
                  <option value="studio">스튜디오</option>
                  <option value="dress">드레스</option>
                  <option value="makeup">메이크업</option>
                </select>
              </div>

              <div class="box-body">
                <table class="table table-bordered">
                  <tr>
                    <td colspan="6">입찰 신청 건수 : 1000 건</td>
                  </tr>
                  <tr>
                    <th style="width: 100px">신청일시</th>
                    <th style="width: 100px">예식일자</th>
                    <th style="width: 100px">작성자</th>
                    <th style="width: 200px">희망지역</th>
                    <th style="width: 100px">입찰마감일</th>
                    <th style="width: 200px">제출된 입찰서</th>
                  </tr>
               </table>
              </div>
            </div>
            <!-- /.box-body -->

          </div>
          <!--/.col (left) -->

        </div>
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
			var result = '${msg}';

			if (result == 'SUCCESS') {
				alert("처리가 완료되었습니다.");
			}
 </script>
 
  <%@include file="../include/bottom.jsp"%>
</body>
</html>
