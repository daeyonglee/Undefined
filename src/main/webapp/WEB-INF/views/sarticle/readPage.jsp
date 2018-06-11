<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@ page session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="../include/top.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

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

          <div class="form-group">
            <div class="col-sm-3">
              <label for="article_title">머리글</label> <input type="text"
                name='article_head' class="form-control"
                value="${read.article_head}" readonly="readonly">
            </div>
          </div>

        <div class="form-group">
          <div class="col-sm-3">
            <label for="user_nm">작성자</label> 
            <input type="text"
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
    <!--자유게시판에서만 댓글이 보이도록 하기 위한 조건문  -->
    <%
     if(request.getParameter("board_no")!=null){
     if(Integer.parseInt(request.getParameter("board_no"))==2){
    %>

  <div class="row">
    <div class="col-md-12">
    
    <!--로그인 한 사람에게만 댓글 쓰는 폼이 출력  -->
	<c:choose>
      <c:when test="${null ne sessionScope.login || null ne cookie.loginCookie.value}">
          <!-- 댓글 등록에 필요한 div -->
          <div class="box box-success">
            <div class="box-header">
              <h3 class="box-title">댓글 쓰기</h3>
            </div>
            <div class="box-body">
              <label for="exampleInputEmail1">작성자</label> 
              <input class="form-control" type="text" placeholder="${sessionScope.login.nm}"
                id="newReplyWriter" value="${sessionScope.login.nm}" readonly="readonly">
               <label for="exampleInputEmail1">댓글 내용</label> 
               <input class="form-control" type="text"
                placeholder="댓글 내용" id="newReplyText">
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
              <button type="button" class="btn btn-primary" id="replyAddBtn">댓글 쓰기</button>
            </div>
          </div>
        </c:when>   
      </c:choose>    
      <!-- 댓글의 목록과 페이징 처리에 필요한 div-->
      <!-- The time line -->
      <ul class="timeline">
        <!-- timeline time label -->
        <li class="time-label" id="repliesDiv">
        <span class="bg-green">댓글 목록</span></li>
      </ul>
 
      <!--  댓글 페이징은 생략
      <div class='text-center'>
        <ul id="pagination" class="pagination pagination-sm no-margin "> </ul>
      </div> -->

  <%
	 }}
 %>
      <!-- 추가 파라미터 처리를 위함 -->
      <form role="form" action="modifyPage" method="post">
        <input type="hidden" name="article_no" value="${read.article_no }"> 
        <input type="hidden" name="page" value="${cri.page }"> 
        <input type="hidden" name="perPageNum" value="${cri.perPageNum }">
        <!-- 다중 게시판이므로 board_no를 추가해야 함 -->
        <input type="hidden" name="board_no" value="${read.board_no }">
        <!-- 검색을 위한 코드 -->
        <input type="hidden" name="searchType" value="<%=request.getParameter("searchType")%>">
        <input type="hidden" name="keyword" value="<%=request.getParameter("keyword")%>">
      </form>

    </div>
  </div>
  
	<!-- 댓글 수정과 삭제를 위한 Modal창 -->
      <!-- Modal -->
    <div id="modifyModal" class="modal modal-primary fade" role="dialog">
      <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <label><font color="fdc600">댓글 수정하기</font></label>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <label class="modal-title"></label>        
          </div>
          <div class="modal-body" data-reply_no>
            <p><input type="text" id="reply_content" class="form-control"></p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-warning" id="replyModBtn" data-dismiss="modal">수정</button>
            <button type="button" class="btn btn-danger" id="replyDelBtn" data-dismiss="modal">삭제</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
          </div>
        </div>
      </div>
    </div>     
    </div>     
    </div>     
     
</section>
</div>

<%@include file="../include/bottom.jsp"%>

<script type="text/javascript">
/*1페이지 댓글 목록을 가져오기 위한 코드  */
/* 댓글목록 리스트버튼 클릭 시 댓글 보여주기/숨기기 */
$("#repliesDiv").on("click", function() {
   if ($(".timeline li").size() > 1) {
	  //alert("if");
	  $(".replyLi").remove();
  }else{
	  //alert("else");
	  getPage("/replies/" + article_no + "/1");
  } 
});

/*댓글 등록의 이벤트 처리  */
$("#replyAddBtn").on("click",function(){
 var user_nmObj = $("#newReplyWriter");
 var reply_contentObj = $("#newReplyText");
 var user_nm = user_nmObj.val();
 var reply_content = reply_contentObj.val();
  
  $.ajax({
    type:'post',
    url:'/replies/',
    headers: { 
          "Content-Type": "application/json",
          "X-HTTP-Method-Override": "POST" },
    dataType:'text',
    data: JSON.stringify({article_no:article_no, user_nm:user_nm, reply_content:reply_content}),
    success:function(result){
      console.log("result: " + result);
      if(result == 'success'){
        alert("등록 되었습니다.");
        replyPage = 1;
        getPage("/replies/"+article_no+"/"+replyPage );
        //user_nmObj.val("");
        reply_contentObj.val("");
      }
  }});
});

/* 각 댓글의 버튼 이벤트 처리  */
$(".timeline").on("click", ".replyLi", function(event){
  
  var reply = $(this);
  $("#reply_content").val(reply.find('.timeline-body').text());
  $(".modal-title").html(reply.attr("data-reply_no"));
  $(".data-reply_no").hide();
  
});

/*댓글 수정 처리  */
$("#replyModBtn").on("click",function(){
    var reply_no = $(".modal-title").html();
    var reply_content = $("#reply_content").val();
	//alert("reply_no"+$(".modal-title").html());
    $.ajax({
      type:'put',
      url:'/replies/'+reply_no,
      headers: { 
            "Content-Type": "application/json",
            "X-HTTP-Method-Override": "PUT" },
      data:JSON.stringify({reply_content:reply_content}), 
      dataType:'text', 
      success:function(result){
        console.log("result: " + result);
        if(result == 'success'){
          alert("수정 되었습니다.");
          getPage("/replies/"+article_no+"/"+replyPage );
        }
    }});
});

/*댓글 삭제 처리  */
$("#replyDelBtn").on("click",function(){
    var reply_no = $(".modal-title").html();
    var reply_content = $("#reply_content").val();
    
    $.ajax({
      type:'delete',
      url:'/replies/'+reply_no,
      headers: { 
            "Content-Type": "application/json",
            "X-HTTP-Method-Override": "DELETE" },
      dataType:'text', 
      success:function(result){
        console.log("result: " + result);
        if(result == 'success'){
    	   alert("삭제 되었습니다.");
           getPage("/replies/"+article_no+"/"+replyPage );
        }
    }});
});


/* 특정한 게시물에 대한 페이징 처리를 위한 코드 */
var article_no=${read.article_no}
var replyPage=1;

function getPage(pageInfo) {
  $.getJSON(pageInfo, function(data) {
    printData(data.list, $("#repliesDiv"), $('#template'));
    printPaging(data.pageMaker, $(".pagination"));
	
    //$("#modifyModal").modal('hide');
  });
}

var printPaging = function(pageMaker, target) {
  var str = "";
  if (pageMaker.prev) {
    str += "<li><a href='" + (pageMaker.startPage - 1)
        + "'> << </a></li>";
  }

  for (var i = pageMaker.startPage, len = pageMaker.endPage; i <= len; i++) {
    var strClass = pageMaker.cri.page == i ? 'class=active' : '';
    str += "<li "+strClass+"><a href='"+i+"'>" + i + "</a></li>";
  }

  if (pageMaker.next) {
    str += "<li><a href='" + (pageMaker.endPage + 1)
        + "'> >> </a></li>";
  }
  target.html(str);
  
};

</script>
<script>
   Handlebars.registerHelper("prettifyDate", function(timeValue) {
    var dateObj = new Date(timeValue);
    var year = dateObj.getFullYear();
    var month = dateObj.getMonth() + 1;
    var date = dateObj.getDate();
    return year + "/" + month + "/" + date;
  });

  var printData = function(replyArr, target, templateObject) {
    var template = Handlebars.compile(templateObject.html());
    var html = template(replyArr);
    $(".replyLi").remove();
    target.after(html);
  } 
</script> 
  
<!--댓글 디자인을 위한 템플릿 코드  -->
<script id="template" type="text/x-handlebars-template">
{{#each .}}
<li class="replyLi" data-reply_no={{reply_no}}>
<i class="fa fa-comments bg-yellow 	"></i>
 <div class="timeline-item" >
  <span class="time">
  <h6 class="timeline-header"> 작성자: {{user_nm}}</h6>
    <i class="fa fa-clock-o"></i>{{prettifyDate regdate}}
  </span>
  <div class="timeline-body">{{reply_content}} </div>
    <div class="timeline-footer">
     <a class="btn btn-primary btn-xs" 
      data-toggle="modal" data-target="#modifyModal">댓글 수정</a>
    </div>
  </div>      
</li>
{{/each}}
</script>

   <script>
    $(document).ready(function() {
      var formObj = $("form[role='form']");
      console.log(formObj);
      
      $(".removeBtn").on("click",function() {
        formObj.attr("action","/sarticle/removePage");
        formObj.submit();
        });

      $(".goListBtn").on("click",function(){
        formObj.attr("method","get");
        formObj.attr("action","/sarticle/list");
        formObj.submit();
      });
      
      $(".modifyBtn").on("click", function(){
        formObj.attr("action", "/sarticle/modifyPage");
        formObj.attr("method","get");
        formObj.submit();
      });
      
    }); 
  </script>
