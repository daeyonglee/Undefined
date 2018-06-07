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
          <h3 class="box-title">${read.board_nm} 읽기</h3>
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

      <!-- 버튼들 -->
      <div class="text-center">
        <div class="col-md-12">
          <div class="box-footer">
            <button type="submit" class="btn btn-warning modifyBtn">수정</button>
            <button type="submit" class="btn btn-danger removeBtn">삭제</button>
            <button type="submit" class="btn btn-primary goListBtn">전체목록</button>
          </div>
        </div>
      </div>

      <!-- 추가 파라미터 처리를 위함 -->
      <form role="form" action="modifyPage" method="post">
        <input type="hidden" name="article_no" value="${read.article_no }"> 
        <input type="hidden" name="page" value="${cri.page }"> 
        <input type="hidden" name="perPageNum" value="${cri.perPageNum }">
        <!-- 다중 게시판이므로 board_no를 추가해야 함 -->
        <input type="hidden" name="board_no" value="${cri.board_no }">
      </form>

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
			$(".removeBtn").on("click",function() {
				formObj.attr("action","/article/removePage");
				formObj.submit();
				});

	/* 		$(".btn-primary").on("click",function() {
				self.location = "/article/listAll?board_no=${read.board_no}";
			}); */
			
			$(".goListBtn").on("click",function(){
				formObj.attr("method","get");
				formObj.attr("action","/article/listPage?board_no=${read.board_no}");
				formObj.submit();
			});
			
			$(".modifyBtn").on("click", function(){
				formObj.attr("action", "/article/modifyPage");
				formObj.attr("method","get");
				formObj.submit();
			});
			
		}); 
	</script>
</section>

<%@include file="../include/bottom.jsp"%>
