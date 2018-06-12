<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@include file="../include/top.jsp"%>

<!--ArticleLayout.css  -->
<link href="/resources/bootstrap/css/ArticleLayout.css" rel="stylesheet" type="text/css" />

<!-- Ionicons -->
<link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="/resources/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
<!-- AdminLTE Skins. Choose a skin from the css/skins 
     folder instead of downloading all of them to reduce the load. -->
<link href="/resources/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

<!-- Main content -->
<div class="container">
<section class="content">
  <div class="row">
    <!-- left column -->
    <div class="col-sm-12">
      <div class="box box-primary">
        <div class="box-header">
          <h3 class="box-title">글수정</h3>
        </div>
      </div>

          <!-- 추가 파라미터 처리를 위함 -->
      <form role="form" action="modifyPage" method="post">
        <input type="hidden" name="article_no" value="${read.article_no }"> 
        <input type="hidden" name="page" value="${cri.page }"> 
        <input type="hidden" name="perPageNum" value="${cri.perPageNum }">
        <input type="hidden" name="searchType" value="${cri.searchType }">
        <input type="hidden" name="keyword" value="${read.keyword }">
        <!-- 다중 게시판이므로 board_no를 추가해야 함 -->
        <input type="hidden" name="board_no" value="${read.board_no }">
        
        <div class="box-body">
            <div class="form-group">
              <!-- 번호를 위한 코드 -->
              <input type="hidden"
                name='article_no' class="form-control"
                value="${read.article_no}" readonly="readonly">
          </div>

          <div class="form-group">
            <div class="col-sm-3">
              <label for="article_no">머리글</label> 
              <select class="selectpicker" name="article_head"
                id="article_head" name="article_head">
                <option value="${read.article_head}" selected="selected">${read.article_head}</option>
                <option value="스튜디오">스튜디오</option>
                <option value="드레스">드레스</option>
                <option value="메이크업">메이크업</option>
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
      
    </div>
  </div>
</section>
</div>


<script>
  $(document).ready(function() {
    var formObj = $("form[role='form']");
    console.log(formObj);
    
        /*저장 버튼 이벤트  */
      $(".btn-primary").on("click",function(){ 
        formObj.submit();
      });

        /*취소버튼 이벤트*/
    $(".btn-warning").on("click",function(){
      parent.history.back();
    });
  });
</script>
<%@include file="../include/bottom.jsp"%>