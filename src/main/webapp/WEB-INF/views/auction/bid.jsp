<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>


<!DOCTYPE html>
<html>
<head>
<title>입찰 중인 경매 리스트</title>
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
                <a href="#" style="float: right">>> 역경매 신청하기</a>
                <ul class="nav nav-tabs nav-justified">
                  <li class="active"><a href="#">입찰 중인 경매</a></li>
                  <li><a href="win">낙찰된 경매</a></li>
                </ul>
              </div>
              <div class="form-group">
                <select id="basic"
                  class="selectpicker show-tick form-control">
                  <option>전체</option>
                  <option>스튜디오</option>
                  <option>드레스</option>
                  <option>메이크업</option>
                </select>
              </div>

              <div class="box-body">
                <table class="table table-bordered">
                  <tr>
                    <td colspan="6">역경매 신청 건수 : 10,000건</td>
                  </tr>
                  <tr>
                    <th style="width: 100px">신청일시</th>
                    <th style="width: 100px">예식일자</th>
                    <th style="width: 100px">작성자</th>
                    <th style="width: 200px">희망지역</th>
                    <th style="width: 100px">입찰마감일</th>
                    <th style="width: 200px">제출된 입찰서</th>
                  </tr>

                  <c:forEach items="${bid}" var="apply">
                    <tr>
                      <td>${apply.regdate }</td>
                      <td>${apply.day }</td>
                      <td>${apply.writer }</td>
                      <td>${apply.loc }</td>
                      <td>${apply.deadline }</td>
                      <td>미공개</td>
                    </tr>
                  </c:forEach>
                  <!--                   <tr>
                    <td>2018-05-14</td>
                    <td>2019-05-14</td>
                    <td>조형팔</td>
                    <td>경기도 의정부시</td>
                    <td>2018-06-05</td>
                    <td>1건</td>
                  </tr>
                  <tr>
                    <td>2018-05-14</td>
                    <td>2019-05-14</td>
                    <td>조형구</td>
                    <td>경기도 의정부시</td>
                    <td>2018-06-05</td>
                    <td>1건</td>
                  </tr>
                  <tr>
                    <td>2018-05-14</td>
                    <td>2019-05-14</td>
                    <td>조형십</td>
                    <td>경기도 의정부시</td>
                    <td>2018-06-05</td>
                    <td>미공개</td>
                  </tr>
                  <tr>
                    <td>2018-05-14</td>
                    <td>2019-05-14</td>
                    <td>조형십일</td>
                    <td>경기도 의정부시</td>
                    <td>2018-06-05</td>
                    <td>1건</td>
                  </tr>
                  <tr>
                    <td>2018-05-14</td>
                    <td>2019-05-14</td>
                    <td>조형십이</td>
                    <td>경기도 의정부시</td>
                    <td>2018-06-05</td>
                    <td>1건</td>
                  </tr> -->

                </table>
              </div>
            </div>
            <!-- /.box-body -->


            <div class="box-footer">

              <div class="col-md-12">
                <div class="pull-center">
                  <div class="pagination">
                    <ul>
                      <c:if test="${pageMaker.prev}">
                        <li><a
                          href="listPage${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
                      </c:if>

                      <c:forEach begin="${pageMaker.startPage }"
                        end="${pageMaker.endPage }" var="idx">
                        <li
                          <c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
                          <a href="listPage${pageMaker.makeQuery(idx)}">${idx}</a>
                        </li>
                      </c:forEach>

                      <c:if
                        test="${pageMaker.next && pageMaker.endPage > 0}">
                        <li><a
                          href="listPage${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
                      </c:if>

                    </ul>
                  </div>
                </div>
              </div>
              <!-- /.box-footer-->
            </div>
          </div>
          <!--/.col (left) -->

        </div>
        <!-- /.row -->
      </div>
    </div>
  </section>
  <!-- /.content -->


  <script>
			var result = '${msg}';

			if (result == 'SUCCESS') {
				alert("처리가 완료되었습니다.");
			}

			$(".pagination li a").on(
					"click",
					function(event) {

						event.preventDefault();

						var targetPage = $(this).attr("href");

						var jobForm = $("#jobForm");
						jobForm.find("[name='page']").val(targetPage);
						jobForm.attr("action", "/board/listPage").attr(
								"method", "get");
						jobForm.submit();
					});
		</script>

  <%@include file="../include/bottom.jsp"%>
</body>
</html>
