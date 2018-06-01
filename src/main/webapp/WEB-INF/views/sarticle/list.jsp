<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@include file="../include/top.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>

  
  
<!-- 게시글 출력하기 -->
<section class="content">
  <div class="row">
    <!-- left column -->
    <div class="col-md-12">
     
      <!-- general form elements -->
      <div class="box">
        <div class="box-header with-border">
       <!-- 리스트 페이지의 이름을 출력함 e.g.공지사항 or 자유게시판 -->
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
        <!-- 목록 제목 리스트 보여주기  -->
        <div class="box-body">
          <table class="table table-bordered">
            <tr>
              <th style="width: 60px">번호</th>
              <th>제목</th>
              <th style="width: 140px">작성자</th>
              <th style="width: 200px">게시날짜</th>
              <th style="width: 60px">조회수</th>
            </tr>

          <!-- 리스트 보여주기  -->
          <c:forEach items="${list}" var="article">
            <tr>
              <td>${article.ARTICLE_NO}</td>
              <td><a
                href='/sarticle/readPage${pageMaker.makeSearch(pageMaker.cri.page) }&article_no=${article.ARTICLE_NO}'>
                  ${article.ARTICLE_TITLE}</a></td>
              <td>${article.USER_NM}</td>
              <td>${article.REGDATE}</td>
              <td><span class="badge bg-red">${article.HITCOUNT }</span></td>
            </tr>
          </c:forEach>
       </table>
          
            <!--페이지 네이션  -->
          <div class="text-center">
            <ul class="pagination">
              <c:if test="${pageMaker.prev }">
                <li><a
                  href="list${pageMaker.makeSearch(pageMaker.startPage-1) }&board_no=<%=request.getParameter("board_no")%>">&laquo;</a></li>
              </c:if>

              <c:forEach begin="${pageMaker.startPage }"
                end="${pageMaker.endPage }" var="idx">
                <li
                  <c:out value="${pageMaker.cri.page==idx?'class=active':''}"/>>
                  <a href="list${pageMaker.makeSearch(idx) }&board_no=<%=request.getParameter("board_no")%>">${idx }</a>
                </li>
              </c:forEach>

              <c:if test="${pageMaker.next&&pageMaker.endPage>0 }">
                <li><a
                  href="list${pageMaker.makeSearch(pageMaker.endPage+1) }&board_no=<%=request.getParameter("board_no")%>">&raquo;</a>
              </c:if>
            </ul>
          </div>

          <!--검색을 위한 코드  -->            
            <div class='box-body'>
              <select name="searchType">
              
              <option value="n"
              <c:out value="${cri.searchType==null?'selected':'' }"/>>
              ---</option>
              
              <option value="t" 
              <c:out value="${cri.searchType eq 't'?'selected':'' }"/>>
              Title</option>
              
              <option value="c" 
              <c:out value="${cri.searchType eq 'c'?'selected':'' }"/>>
              Content</option>
              
              <option value="w" 
              <c:out value="${cri.searchType eq 'w'?'selected':'' }"/>>
              Writer</option>
              
              <option value="tc" 
              <c:out value="${cri.searchType eq 'tc'?'selected':'' }"/>>
              Title OR Content</option>
              
              <option value="cw" 
              <c:out value="${cri.searchType eq 'cw'?'selected':'' }"/>>
              Content Or Writer</option>
              
              <option value="tcw" 
              <c:out value="${cri.searchType eq 'tcw'?'selected':'' }"/>>
              Title Or Content Or Writer</option>
              </select>
              
              <input type="text" name="keyword" id="keywordInput" value='${cri.keyword }'>
              <button id = 'searchBtn'>Search</button>
              <button id = 'newBtn'>New Board</button>
          </div>
            
              
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
  
<script>
	var result = '${msg}';

	if (result == 'success') {
		alert("처리가 완료되었습니다.");
	}
	
	$(document).ready(function(){
		$('#searchBtn').on("click",function(event){
				self.location="list"
				+'${pageMaker.makeQuery(1)}'
				+"&searchType="
				+$("select option:selected").val()
				+"&keyword="+encodeURIComponent($('#keywordInput').val())
				+"&board_no="
				+<%=request.getParameter("board_no")%>
				;
			});
		
		$('#newBtn').on("click", function(evt){
			self.location="register";
		});
	});

	
	
	
	
</script>

<%@include file="../include/bottom.jsp"%>

  </html>
