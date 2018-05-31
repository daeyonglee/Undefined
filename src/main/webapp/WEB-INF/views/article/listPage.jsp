<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@include file="../include/top.jsp"%>

<!-- 리스트 보여주기  -->
<c:forEach items="${list}" var="article">
  <tr>
    <td>${article.article_no}</td>
    <td><a
      href='/article/readPage${pageMaker.makeQuery(pageMaker.cri.page) }&article_no=${article.article_no}'>
        ${article.article_title}</a></td>
    <td>${article.user_nm}</td>
    <td>${article.regdate}"</td>
    <td><span class="badge bg-red">${article.hitcount }</span></td>
  </tr>
</c:forEach>










<!--페이지 네이션  -->
	<div class="text-center">
		<ul class="pagination">
			<c:if test="${pageMaker.prev}">
				<li><a href="${pageMaker.startPage - 1}">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<li
					<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
					<a href="${idx}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li><a
					href="${pageMaker.endPage +1}">&raquo;</a></li>
			</c:if>
		</ul>
	</div>
<script>

	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
	
	$(".pagination li a").on("click", function(event){
		
		event.preventDefault(); 
		
		var targetPage = $(this).attr("href");
		
		var jobForm = $("#jobForm");
		jobForm.find("[name='page']").val(targetPage);
		jobForm.attr("action","/board/listPage").attr("method", "get");
		jobForm.submit();
	});
	
</script>

<%@include file="../include/bottom.jsp"%>
