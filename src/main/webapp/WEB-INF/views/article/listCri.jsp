<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<%@include file="../include/top.jsp"%>

<!-- Main content -->
<section class="content">
  <div class="row">
    <!-- left column -->
    <div class="col-md-12">
     
      <!-- general form elements -->
      <div class="box">
        <div class="box-header with-border">
        <!-- 게시글 출력하기 -->
        <%
        if(request.getParameter("board_no")!=null){
        if(Integer.parseInt(request.getParameter("board_no"))==1){
        %>
            <h3 class="box-article_title">공지사항</h3>
        <%    
        }else if(Integer.parseInt(request.getParameter("board_no"))==2){
        %>
            <h3 class="box-article_title">자유게시판</h3>
        <%
        }else{
        %>
         <h3 class="box-article_title">쪽지함</h3>
        <%
        }}else{
        %>
         <h3 class="box-article_title">List All 입니다.</h3>
        <%         
        }
        %>
        
        </div>
        <div class="box-body">
          <table class="table table-bordered">
            <tr>
              <th style="width: 60px">번호</th>
              <th>제목</th>
              <th style="width: 140px">작성자</th>
              <th style="width: 200px">게시날짜</th>
              <th style="width: 60px">조회수</th>
            </tr>

           <!-- 게시글 출력하기 -->
            <c:forEach items="${listCri}" var="listCri">
              <tr>
                <td>${listCri.ARTICLE_NO}</td>
                <td><a
                  href='/article/read?board_no=${listCri.BOARD_NO}&article_no=${listCri.ARTICLE_NO}'>${listCri.ARTICLE_TITLE}</a></td>
                <td>${listCri.USER_NM}</td>
                <td>${listCri.REGDATE}</td>
                <td><span class="badge bg-red">${listCri.HITCOUNT }</span></td>
              </tr>
            </c:forEach>

          </table>
        </div>
        <!-- /.box-body -->
        <div class="box-footer">Footer</div>
        <!-- /.box-footer-->
      </div>
    </div>
    <!--/.col (left) -->

  </div>
  <!-- /.row -->
</section>
<!-- /.content -->
<!-- /.content-wrapper -->

<script>
	var result = '${msg}';
	if (result == 'success') {
		alert("처리가 완료되었습니다.");
	}
</script>

<%@include file="../include/bottom.jsp"%>