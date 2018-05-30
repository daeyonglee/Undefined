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
					<h3 class="box-title">LIST ALL PAGE</h3>
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


<c:forEach items="${list}" var="board">

	<tr>
		<td>${board.bno}</td>
		<td><a href='/board/read?bno=${board.bno}'>${board.title}</a></td>
		<td>${board.writer}</td>
		<td>${board.regdate}</td>
		<td><span class="badge bg-red">${board.viewcnt }</span></td>
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
</div>
<!-- /.content-wrapper -->

<script>
    
    var result = '${msg}';
    
    if(result == 'SUCCESS'){
    	alert("처리가 완료되었습니다.");
    }
    
    </script>

<%@include file="../include/bottom.jsp"%>
