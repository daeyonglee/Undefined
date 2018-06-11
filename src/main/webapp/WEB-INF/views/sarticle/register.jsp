<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%@include file="../include/top.jsp"%>
<%

	//board_no 받아오기
	int board_no = 1;
    if(request.getParameter("board_no")!=null){
	board_no = Integer.parseInt(request.getParameter("board_no"));
    }
%>

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
              <!--자유게시판일 경우에만 아래처럼 article_head선택을 할 수 있음  -->
        <% 
            if(Integer.parseInt(request.getParameter("board_no"))==2){
        %>
              <label>머리글</label>
              <select class="selectpicker" name="article_head"
                id="article_head" name="article_head">
                <option value="스튜디오">스튜디오</option>
                <option value="드레스">드레스</option>
                <option value="메이크업">메이크업</option>
              </select>
            </div>
            
            <!--로그인 시 로그인한 user_nm이 화면에 출력되도록 하여아 한다.  -->
            <!--글을 등록할 경우 작성자는 user_no가 들어간다. -->
            <div class="form-group">
              <input type="hidden" name ="user_no" id ="user_no" value='${sessionScope.login.no}'></input> 
            </div>
            
            
        <%    
            }else if(Integer.parseInt(request.getParameter("board_no"))==1){
        %>
             <!--공지사항이나 쪽지함의 경우 article_head에 기타로 입력이 됨-->
              <input type="hidden" name="article_head" class="form-control"
                id="article_head" value="공지사항">
              </div>
              <!--본래는 공지사항에 admin_no가 들어가야 맞지만 편의상 user_no가 20인 이름만 관리자인 user를 사용  -->
            <div class="form-group">
              <input type="hidden" name ="user_no" id ="user_no" value='20'></input> 
            </div>
        <%
            }else{
        %>     
             <!--공지사항이나 쪽지함의 경우 article_head에 기타로 입력이 됨-->
              <input type="hidden" name="article_head" class="form-control"
                id="article_head" value="쪽지">
              </div>        
              
            <!--로그인 시 로그인한 user_nm이 화면에 출력되도록 하여아 한다.  -->
            <!--글을 등록할 경우 작성자는 user_no가 들어간다. -->
            <div class="form-group">
              <input type="hidden" name ="user_no" id ="user_no" value='${sessionScope.login.no}'></input> 
            </div>
        <%
            }
        %>

            
            <div class="form-group">
              <label for="title">제목</label> 
              <input type="text" name="article_title" class="form-control"
                placeholder="제목을 입력하세요" id="article_title">
            </div>

            <div class="form-group">
              <label for="contents">내용</label>
              <textarea class="form-control" name="article_content" rows="3"
                placeholder="내용을 입력하세요"  id ="article_content"></textarea>
            </div>
        </form>    
      </div>
     
          
        <!-- 버튼들 --> 
          <div class="text-center">
            <div class="col-md-12">
              <div class="box-footer">
                <button type="submit" class="btn btn-primary">등록</button>
                <button type="submit" class="btn btn-warning">취소</button>
              </div>
            </div>
          </div>
</section>

  </div>
        <script>
          $(document).ready(function() {
            var formObj = $("form[role='form']");
            console.log(formObj);
            
                /*등록 버튼 이벤트  */
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
