<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%@include file="../include/top.jsp"%>
<%
	//board_no 받아오기
	int board_no = 1;
	//board_no = Integer.parseInt(request.getParameter("board_no"));
%>

<!-- Main content -->
<section class="content">
  <div class="row">
    <!-- left column -->
    <div class="col-md-12">
      <!-- general form elements -->
      <div class="box box-primary">
        <div class="box-header">
          <h3 class="box-title">글 작성하기</h3>
        </div>
        <!-- /.box-header -->

        <form role="form" method="post">
          <div class="box-body">
            <input id="board_no" type="hidden" name="board_no" value="<%=board_no%>"></input> 
              
<!--           <select name="article_head" onChange="getSelectValue(this.form);" id ="article_head">
 -->
            <select name="article_head" id="article_head">
              <option value="unselected" selected="selected">선택하세요</option>
              <option value="Studio">스튜디오</option>
              <option value="Dress">드레스</option>
              <option value="Makeup">메이크업</option>
            </select>

            <div class="form-group">
              <label for="title">제목</label> 
              <input type="text" name="article_title" class="form-control"
                placeholder="Enter Title" id="article_title">
            </div>

            <div class="form-group">
              <label for="contents">내용</label>
              <textarea class="form-control" name="article_content" rows="3"
                placeholder="Enter ..."  id ="article_content"></textarea>
            </div>
            
            <!--로그인 시 로그인한 user_nm이 화면에 출력되도록 하여아 한다.  -->
            <!--글을 등록할 경우 작성자는 user_no가 들어간다. -->
            <div class="form-group">
              <input type="hidden" for="writer" name ="user_no" id ="user_no" value="1">작성자</input> 
            </div>
            
          </div>
          <!-- /.box-body -->
          <div class="box-footer">
            <button type="submit" class="btn btn-primary">등록</button>
            <button type="submit" class="btn btn-primary">취소</button>
          </div>
          
        </form>
      </div>
      <!-- /.box -->
    </div>
    <!--/.col (left) -->
  </div>
  <!-- /.row -->
</section>
<!-- /.content -->

<%@include file="../include/bottom.jsp"%>
