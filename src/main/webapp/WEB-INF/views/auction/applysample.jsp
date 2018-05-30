<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>


<!DOCTYPE html>
<html>
<head>
<title>역경매 신청서</title>
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
  <form action="">
    <div class="testimonial-area recent-property"
      style="background-color: #FCFCFC; padding-bottom: 15px;">
      <div class="container">
        <div class="row">
          <div
            class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">

            <!-- general form elements -->
            <div class="box" style="text-align: center;">
              <div class="box-header with-border">
                <h3 class="box-title">스드메 역경매 신청서</h3>
                <ul class="nav nav-tabs nav-justified">
                  <li class="active"><a href="#">스튜디오</a></li>
                  <li><a href="win">드레스</a></li>
                  <li><a href="win">메이크업</a></li>
                </ul>
              </div>

              <div class="box-body">
                <table class="table table-bordered">
                  <tr>
                    <td colspan="2"></td>
                  </tr>
                  <tr>
                    <th><label for="af_cel">이름</label></th>
                    <td><input type="text" placeholder="홍길동"
                      readonly="readonly" /></td>
                  </tr>
                  <tr>
                    <th>예식 희망 지역</th>
                    <td>
                      <ul class="hope_btn">
                        <li><button type="button" title="1 지망 (필수)"></button></li>
                        <li><button type="button" title="2 지망 (선택)"></button></li>
                        <li><button type="button" title="3 지망 (선택)"></button></li>
                      </ul> <!--                       <ul class="hope_input">
                        <li><span>1지망 :</span> <select
                          name="wish_loc1[]" class="join_select">
                            <option value="">선택</option>
                        </select> <select name="wish_loc1[]" class="join_select">
                            <option value="">선택</option>
                        </select>
                          <button type="button" class="ok">선택</button></li>
                        <li><span>2지망 :</span> <select
                          name="wish_loc2[]" class="join_select">
                            <option value="">선택</option>
                        </select> <select name="wish_loc2[]" class="join_select">
                            <option value="">선택</option>
                        </select>
                          <button type="button" class="ok">선택</button>
                          <button type="button" class="cancel">취소</button>
                        </li>
                        <li><span>3지망 :</span> <select
                          name="wish_loc3[]" class="join_select">
                            <option value="">선택</option>
                        </select> <select name="wish_loc3[]" class="join_select">
                            <option value="">선택</option>
                        </select>
                          <button type="button" class="ok">선택</button>
                          <button type="button" class="cancel">취소</button>
                        </li>
                      </ul> -->
                    </td>
                  </tr>
                  <tr>
                    <th>예식 희망 날짜</th>
                    <td>
                      <ul class="hope_btn">
                        <li><button type="button" title="1 지망 (필수)"></button></li>
                        <li><button type="button" title="2 지망 (선택)"></button></li>
                        <li><button type="button" title="3 지망 (선택)"></button></li>
                      </ul>
                    </td>
                  </tr>
                  <tr>
                    <th>예식 희망 시간</th>
                    <td><input type="text" placeholder="내용을 입력해주세요">
                    </td>
                  </tr>
                  <tr>
                    <th>기타 희망 사항</th>
                    <td><textarea rows="6" cols="200">내용을 입력하세요</textarea>
                    </td>
                  </tr>
                </table>
              </div>
            </div>
            <!-- /.box-body -->


            <div class="box-footer">
              <!-- /.box-footer-->
            </div>
          </div>
          <!--/.col (left) -->

        </div>
        <!-- /.row -->
      </div>
    </div>
    </form>
  </section>
  <!-- /.content -->


  <script>
			var result = '${msg}';

			if (result == 'SUCCESS') {
				alert("처리가 완료되었습니다.");
			}

			$(".pagination li a").on("click", function(event) {

				event.preventDefault();

				var targetPage = $(this).attr("href");

				var jobForm = $("#jobForm");
				jobForm.find("[name='page']").val(targetPage);
				jobForm.attr("action", "/auction/bid").attr("method", "get");
				jobForm.submit();
			});
		</script>

  <script>
			$(document).ready(function() {
				$('#searchType').change(function() {

					alert($(this).val());

					$.ajax({
						type : 'GET',
						url : '/auction/bidlistbytype',
						dataType : 'text',
						data : {
							keyword : $(this).val()
						},
						success : function(data) {
							console.log(data);
						}

					});
				});
			});
		</script>

  <%@include file="../include/bottom.jsp"%>
</body>
</html>
