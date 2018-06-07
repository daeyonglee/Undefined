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
<div class="container">
<section class="content">
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
   
        <!-- 총게시글수 보여주기  -->
        <div class="text-right">
        <label>총게시글수: ${pageMaker.getTotalCount()}</label>
        </div>
  
        <div class="text-center">
          <table class="table table-bordered" align="center">
            <tr align="center">
              <th style="width: 60px" align="center">번호</th>
              <th align="center">제목</th>
              <th style="width: 140px" align="center" >작성자</th>
              <th style="width: 200px" align="center">게시날짜</th>
              <!--쪽지함의 경우에는 조회수가 나타나지 않도록 하기 위한 코드 -->
                <%
                 if(request.getParameter("board_no")!=null){
                 if(Integer.parseInt(request.getParameter("board_no"))!=3){
                %>
                <th style="width: 60px">조회수</th>
                 <%
                 }}
                %>
            </tr>
          <!--게시글 번호 내림차순 출력하기 위한 변수 처리-->
          <c:set var="i" value="0" />
          <c:set var="TotalCount" value="${pageMaker.totalCount}" />
          <c:set var="PageSize" value="${cri.perPageNum}" />
          <c:set var="Page" value="${cri.page}" />
    
          <!-- 리스트 보여주기  -->
          <c:forEach items="${list}" var="article">
            <tr>
            <!--게시글 번호 내림차순 출력하는 계산식 (전체 글 수-(선택한 페이지 *페이지에 출력되는 article수)+페이지에 출력되는 article수)- i%> -->
              <td><c:out value="${(TotalCount-(Page*PageSize)+PageSize)-i}"/></td>
              <!--자유게시판일 경우에만 Article_head를 보여주기 위한 코드  -->
            <%
             if(request.getParameter("board_no")!=null){
             if(Integer.parseInt(request.getParameter("board_no"))!=2){
            %>              
              <td><a
                href='/sarticle/readPage${pageMaker.makeSearch(pageMaker.cri.page) }&article_no=${article.ARTICLE_NO}&board_no=<%=request.getParameter("board_no")%>'>
                  ${article.ARTICLE_TITLE}</a></td>
            <%
             }else{
            %>
                 <td><a
                 href='/sarticle/readPage${pageMaker.makeSearch(pageMaker.cri.page) }&article_no=${article.ARTICLE_NO}&board_no=<%=request.getParameter("board_no")%>'>
                    <font color="orange">[${article.ARTICLE_HEAD}]</font> ${article.ARTICLE_TITLE} <font color="yellow">[${article.REPLY_COUNT}]</font></a></td>
              <%
             }}
              %>
              <td>${article.USER_NM}</td>
              <td>${article.REGDATE}</td>
               <!--쪽지함의 경우에는 조회수가 나타나지 않도록 하기 위한 코드 -->
              <%
                 if(request.getParameter("board_no")!=null){
                 if(Integer.parseInt(request.getParameter("board_no"))!=3){
                %>
                <td><span class="badge bg-red">${article.HITCOUNT }</span></td>
                 <%
                 }}
                %>

            </tr>
            <c:set var="i" value="${i+1}" />
          </c:forEach>
       </table>
       </div>
     </div>
     </div>
      <!-- 로그인 여부에 따라 글쓰기 버튼 생성 여부 -->
      <!-- admin계정의 경우에만 공지사항에 글쓰기가 가능하도록 하여야 함 -->
      <c:choose>
        <c:when test="${null ne sessionScope.login || null ne cookie.loginCookie.value}">
          <div class="text-right">
             <button id = 'newBtn'  class="btn btn-primary btn-sm">글쓰기</button>
          </div>
        </c:when>
        <c:otherwise>
        </c:otherwise>
      </c:choose>
          
            <!--페이지 네이션  -->
          <div class="text-center">
            <ul class="pagination">
              <c:if test="${pageMaker.prev }">
                <li><a
                  href="list${pageMaker.makeSearch(pageMaker.startPage-1) }&board_no=<%=request.getParameter("board_no")%>">&laquo;</a></li>
              </c:if>

              <c:forEach begin="${pageMaker.startPage }"  end="${pageMaker.endPage }" var="idx">
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
          <div class="container">
            <div class="row">
              <div class="col-xs-6 col-xs-offset-2">
                <div class="input-group">
                  <div class="input-group-btn search-panel">
                    <select name="searchType" class="selectpicker">
                      <option value="n"
                        <c:out value="${cri.searchType==null?'selected':'' }"/>>
                        검색유형선택</option>
      
                      <option value="t"
                        <c:out value="${cri.searchType eq 't'?'selected':'' }"/>>
                        제목</option>
      
                      <option value="c"
                        <c:out value="${cri.searchType eq 'c'?'selected':'' }"/>>
                        내용</option>
      
                      <option value="w"
                        <c:out value="${cri.searchType eq 'w'?'selected':'' }"/>>
                        작성자</option>
      
                      <option value="tc"
                        <c:out value="${cri.searchType eq 'tc'?'selected':'' }"/>>
                        제목 Or 내용</option>
      
                      <option value="cw"
                        <c:out value="${cri.searchType eq 'cw'?'selected':'' }"/>>
                        내용 Or 작성자</option>
      
                      <option value="tcw"
                        <c:out value="${cri.searchType eq 'tcw'?'selected':'' }"/>>
                        전체</option>
                    </select>
                  </div>
                  <!--검색어 입력 박스 -->
                  <input type="text" class="form-control" name="keyword"
                    id="keywordInput" width=".5px" value='${cri.keyword }'
                    placeholder="검색어를 입력하세요">
                  <!--검색버튼 -->
                  <span class="input-group-btn">
                    <button class="btn btn-primary btn-sm" id='searchBtn'>
                      <span class="glyphicon glyphicon-search"></span>
                    </button>
                  </span>
                </div>
              </div>
            </div>
          </div>
      
          <div></div>

  </section>
</div>
 
  
<script>
	var result = '${msg}';

	if (result == 'success') {
		alert("처리가 완료되었습니다.");
	}

	$(document).ready(function() {
		$('#searchBtn').on("click",function(event) {
			self.location = "list"
				+ '${pageMaker.makeQuery(1)}'
				+ "&searchType="
				+ $("select option:selected").val()
				+ "&keyword="
				+ encodeURIComponent($('#keywordInput')
						.val()) + "&board_no="
				+ <%=request.getParameter("board_no")%>;
		});
		
		$('#newBtn').on("click", function(evt){
			self.location="register"
			+'${pageMaker.makeQuery(1)}'
			+"&searchType="
			+$("select option:selected").val()
			+"&keyword="+encodeURIComponent($('#keywordInput').val())
			+"&board_no="
			+<%=request.getParameter("board_no")%>
			;
		});
	});

</script>
<%@include file="../include/bottom.jsp"%>
  </html>
