<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>낙찰 된 경매 리스트</title>
<style type="text/css">
body {
	background: #F5F5F5;
}

#count #newBtn #basic {
	text-align: center;
}

th{
  text-align: center;
}

td {
	text-align: center;
}

.form-group {
	margin: 15px auto;
}
</style>
</head>
<body>
  <%@include file="../../include/top.jsp"%>

  <!-- Main content -->
  <section class="content">
    <div class="testimonial-area recent-property"
      style="background-color: #FCFCFC; padding-bottom: 15px;">
      <div class="container">
        <div class="row">
          <div
            class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">

            <!-- general form elements -->
            <div class="box" style="text-align: center;">
              <div class="box-header with-border">
                <h3 class="box-title">스드메 역경매</h3>
                <ul class="nav nav-tabs nav-justified">
                  <li><a href="apply">입찰 중인 경매</a></li>
                  <li class="active"><a href="win">낙찰된 경매</a></li>
                </ul>
              </div>
              <div class="clearfix" style="height: 15px">
              </div>

              <div class="box-body" >
                <table class="table table-bordered">
                <thead>
                  <tr>
                    <th style="width: 100px">번호</th>
                    <th style="width: 100px">타입</th>
                    <th style="width: 200px">낙찰업체</th>
                    <th style="width: 200px">낙찰상품</th>
                    <th style="width: 100px">업체번호</th>
                    <th style="width: 200px">할인율</th>
                  </tr>
                 </thead>

                  <c:forEach items="${winList}" var="win" varStatus="status">
                    <tr id = "visible">
                      <td>${status.count }</td>
                      <td>${win.type}</td>
                      <td>${win.companyNm}</td>
                      <td>${win.productNm }</td>
                      <td>${win.tel }</td>
                      <td><fmt:formatNumber value ="${win.price * (win.discount * 0.01)}" pattern="0"/>원</td>
                    </tr>
                  </c:forEach>
                </table>
              </div>
            </div>
            <!-- /.box-body -->


<%--             <div class="box-footer">

              <div class="col-md-12">
                <div class="pull-center">
                  <div class="pagination">
                    <ul id = "visible2">
                      <c:if test="${pageMaker.prev}">
                        <li><a href="${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
                      </c:if>

                      <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
                        <li
                          <c:out value="${pageMaker.params.page == idx?'class =active':''}"/>>
                          <a class="paging" href="#">${idx}</a>
                        </li>
                      </c:forEach>

                      <c:if
                        test="${pageMaker.next && pageMaker.endPage > 0}">
                        <li><a
                          href="${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
                      </c:if>

                    </ul>
                  </div>
                </div>
              </div>
              <!-- /.box-footer-->
            </div> --%>
          </div>
          <!--/.col (left) -->

        </div>
        <!-- /.row -->
      </div>
    </div>
  </section>
  <!-- /.content -->
 <form id="jobForm">
  <input type='hidden' name="page" value="${pageMaker.params.page}" >
  <input type='hidden' name="perPageNum" value="${pageMaker.params.perPageNum}" >
 </form>


  <script>
			var result = '${msg}';

			if (result == 'SUCCESS') {
				alert("처리가 완료되었습니다.");
			}
 </script>
 
 <!--  <script>
  $(document).ready(function () {
    
   // 화면 로드 시 searchType 값이 있다면 그 값으로 변경
   var searchType = "${pageMaker.params.searchType}";
   
   console.log(searchType);
   
   if (searchType != null) {
     $("#searchType").val(searchType);
   }
  
    
   $('#searchType').change(function () {
     
     var type = $('#searchType').val();
     var url;
     
     console.log(type);
     
     if (type == 'studio') {
       url = "win/studio";
     } else if (type == 'dress'){
       url = "win/dress";
     } else if (type == 'makeup'){
       url = "win/makeup";
     }
     
       $.ajax({
       type : 'get',
       url : url,
       dataType : "json",
       data : {searchType : type},
       success:function(searchList){
         console.log(searchList);
         $(".table.table-bordered tr#visible").remove();
         $(".pagination ul#visible2").remove();
         console.log($(".table.table-bordered tr#visible"));
                         
         var text = "";
         
         for ( var i in searchList) {
           
           text += "<tr>";
           text += "<td>" +searchList[i].regdate+"</td>";
           text += "<td>" +searchList[i].day+"</td>";
           text += "<td> <a href = 'winread?no="+searchList[i].no+"&type="+searchList[i].type+"'>"+searchList[i].writer+"</a></td>";
           text += "<td>" +searchList[i].loc+"</td>";
           text += "<td>" +searchList[i].deadline + "</td>";
           text += "<td>할인율</td>";
           text += "</tr>";
           
          
        }
        $(".table.table-bordered > tbody").html(text); 
       },
           error:function(){
              console.log("오류");
           }
     }); 
        
    });
   
   $("a.paging").click(function(e){
     e.preventDefault();
     
     var perPageNum = ${pageMaker.params.perPageNum};
     var searchType = $("#searchType").val();
     var url;
     
     if (searchType == null || searchType == undefined || searchType == "") {
       url = "/auction/win?page="+e.target.innerHTML+"&perPageNum="+perPageNum;
     } else {
       url = "/auction/win?page="+e.target.innerHTML+"&perPageNum="+perPageNum+"&searchType="+searchType;
     }
     
     self.location.href=url;
   });
   
    
  });  
  -->
 
 
  </script>
 
 
 
  <%@include file="../../include/bottom.jsp"%>
</body>
</html>
