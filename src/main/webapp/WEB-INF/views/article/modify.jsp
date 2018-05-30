<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/top.jsp"%>

<!-- Main content -->
<section class="content">
  <div class="row">
    <!-- left column -->
    <div class="col-sm-12">
      <div class="box box-primary">
        <div class="box-header">
          <h3 class="box-title">글수정</h3>
        </div>
      </div>

      <form role="form" method="post">
        <div class="box-body">
          <div class="col-sm-3">
            <div class="form-group">
              <label for="article_no">번호</label> <input type="text"
                name='article_no' class="form-control"
                value="${read.article_no}" readonly="readonly">
            </div>
          </div>

          <div class="form-group">
            <div class="col-sm-3">
              <label for="article_no">머리글</label> 
              <select class="selectpicker" name="article_head"
                id="article_head" name="article_head">
                <option value="${read.article_head}" selected="selected">${read.article_head}</option>
                <option value="Studio">스튜디오</option>
                <option value="Dress">드레스</option>
                <option value="Makeup">메이크업</option>
              </select>
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
            <div class="col-md-12 ">
              <label for="article_title">제목</label> <input type="text"
                name='article_title' class="form-control"
                value="${read.article_title}">
            </div>
          </div>

          <div class="form-group">
            <div class="col-md-12 ">
              <label for="article_content">내용</label>
              <textarea class="form-control" name="article_content"
                rows="3">${read.article_content}</textarea>
            </div>
          </div>
        </div>
      </form>

      <div class="text-center">
        <div class="col-md-12">
          <div class="box-footer">
            <button type="submit" class="btn btn-primary">저장</button>
            <button type="submit" class="btn btn-warning">취소</button>
          </div>
        </div>
      </div>

        <script>
        	$(document).ready(function() {
        		var formObj = $("form[role='form']");
        		console.log(formObj);
        		$(".btn-warning").on("click", function() {
        			self.location = "/article/listAll";
        		});
        		$(".btn-primary").on("click", function() {
        			formObj.submit();
        		});
        	});
		</script>
    </div>
  </div>
</section>

<%@include file="../include/bottom.jsp"%>
