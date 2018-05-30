<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<%@include file="../include/top.jsp"%>

<!-- Main content -->
<section class="content">
  <div class="row">
    <!-- left column -->
    <div class="col-sm-12">
      <!-- general form elements -->
      <div class="box box-primary">
        <div class="box-header">
          <h3 class="box-title">게시글 읽기</h3>
        </div>
      </div>
      
      <!-- /.box-header -->
        <form role="form" method="post">
          <input type='hidden' name='article_no'
            value="${read.article_no}">
        </form>

        <div class="box-body">

          <div class="form-group">
            <div class="col-sm-3">
              <label for="article_title">머리글</label> <input type="text"
                name='article_head' class="form-control"
                value="${read.article_head}" readonly="readonly">
            </div>
          </div>
        </div>

        <div class="form-group">
          <div class="col-sm-3">
            <label for="user_nm">작성자</label> <input type="text"
              name="user_nm" class="form-control"
              value="${read.user_nm}" readonly="readonly">
          </div>
        </div>

        <div class="form-group">
          <div class="col-sm-3">
            <label for="regdate">날짜</label> <input type="text"
              name='regdate' class="form-control"
              value="${read.regdate}" readonly="readonly">
          </div>
        </div>

        <div class="form-group">
          <div class="col-sm-3">
            <label for="hitcount">조회수</label> <input type="text"
              name="hitcount" class="form-control"
              value="${read.hitcount}" readonly="readonly">
          </div>
        </div>

        <div class="form-group">
          <div class="col-md-12 ">
            <label for="article_title">제목</label> <input type="text"
              name='article_title' class="form-control"
              value="${read.article_title}" readonly="readonly">
          </div>
        </div>

        <div class="form-group">
          <div class="col-md-12 ">
            <label for="article_content">내용</label>
            <textarea class="form-control" name="article_content"
              rows="3" readonly="readonly">${read.article_content}</textarea>
          </div>
        </div>
   

      <!-- /.box-body -->
      <div class="text-center">
        <div class="col-md-12">
          <div class="box-footer">
            <button type="submit" class="btn btn-warning">수정</button>
            <button type="submit" class="btn btn-danger">삭제</button>
            <button type="submit" class="btn btn-primary">전체목록</button>
          </div>
        </div>
      </div>
    </div>
  </div>
      <script>
		$(document).ready(function() {
			var formObj = $("form[role='form']");
			console.log(formObj);
			$(".btn-warning").on("click",function() {
				formObj.attr("action","/article/modify");
				formObj.attr("method","get");
				formObj.submit();
				});
			$(".btn-danger").on("click",function() {
				formObj.attr("action","/article/remove");
				formObj.submit();
				});

			$(".btn-primary").on("click",function() {
				self.location = "/article/listAll";
			});
		}); 
	</script>
</section>

<%@include file="../include/bottom.jsp"%>
