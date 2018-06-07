<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../../include/top.jsp"%>
<!DOCTYPE html>

<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->

<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->

<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->

<!--[if gt IE 8]><!-->

<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="/resources/assets/css/wizard.css">
<link rel="stylesheet" href="/resources/assets/css/user/join.css">
<style>
.mypage-content {
	float: none;
	margin: 0 auto;
}
</style>
<title>마이페이지</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/resources/js/user/mypage.js"></script>
</head>
<body>
  <div class="page-head">
    <div class="container">
      <div class="row">
        <div class="page-head-content">
          <h1 class="page-title">내정보관리</h1>
        </div>
      </div>
    </div>
  </div>
  <!-- End page header -->

  <!-- register-area -->
<div class="register-area" style="background-color: rgb(249, 249, 249);">
	<div class="container">
		  <c:if test="${msg ne 'success'}">
				<div class="col-md-12">
					<div class="col-md-6 mypage-content">
						<div class="col-md-12 col-xs-12">
							<form action="/user/mypage/my" method="post">
								<div class="form-group">
									<label for="pw">비밀번호</label>
									<input type="password" name="pw" class="form-control" id="pw">
								</div>
								<div class="text-center">
									<button type="submit" class="btn btn-primary" id="btnUserUp">확인</button>
								</div>
							</form>
						</div>
          </div>
				</div>
		  </c:if>
		  <c:if test="${msg eq 'success'}">
			  <c:if test="${role eq 'user'}">
          <div class="box-for overflow">
          <div class="wizard-container"> 
            <div class="wizard-card ct-wizard-orange" id="wizardProperty" style="border: 0px solid #eee;">
    					<div class="col-md-12">
    						<div class="col-md-6 mypage-content">
    							<div class="col-md-12 col-xs-12">
    								<form id="frmUser" action="/user/mypage/userupdate" method="post">
    									<input type="hidden" value="${user.no}" name="no">
    									<input type="hidden" value="${user.email}" name="email">
    									<div class="form-group">
    										<label for="email">이메일</label>
    										<p>${user.email}</p>
    									</div>
    									<div class="form-group">
    										<label for="pw">비밀번호</label>
    										<input type="password" name="pw" class="form-control" id="pw">
    									</div>
    									<div class="form-group">
    										<label for="repw">비밀번호 확인</label>
    										<input type="password" name="repw" class="form-control" id="repw">
    									</div>
    									<div class="form-group">
    										<label for="name">이름</label>
    										<input type="text" name="name" class="form-control" id="name" value="${user.nm}">
    									</div>
    									<div class="form-group">
    										<label for="birthday">생년월일</label>
    										<input type="date" name="birthday" class="form-control" id="birthday" value="${user.birthday}">
    									</div>
    									<div class="form-group">
    										<label for="tel">휴대폰 번호</label>
    										<input type="text" name="tel" class="form-control" id="tel" value="${user.tel}"> 
    									</div>
    									<div class="form-group">
    										<label class='dp-block'>주소</label>
    										<input id='postcode' name='postcode' type='text' class='form-control form-addr' value="${postcode}">
    										<button id='btnAddr' class='btn btn-addr'>우편검색</button>
    										<input id='addr' name='addr' type='text' class='form-control' value="${addr}">
    										<input id='addrdetail'name='addrdetail' type='text' class='form-control' value="${addrdetail}">
    									</div>
    									<div class="text-center">
    										<button type="submit" class="btn btn-primary" id="btnCompanyUp">수정하기</button>
    									</div>
    								</form>
    							</div>
    						</div>
    					</div>
            </div>
          </div>
          </div>
			</c:if>
			<c:if test="${role eq 'company'}">
        <div class="box-for overflow">
         <div class="wizard-container"> 
            <div class="wizard-card ct-wizard-orange" id="wizardProperty" style="border: 0px solid #eee;">
              <div class="tab-content">
                <form action="/user/mypage/companyupdate" method="post" enctype="multipart/form-data">
                  <input type="hidden" name="no" value="${company.no}" >
                  <input type="hidden" name="companyType" value="${company.companyType}">
                  <input type="hidden" name="email" value="${company.email}">
        					<div class="col-md-12">
        						<div class="col-md-4 col-xs-4 col-sm-offset-1">
        							<div class="picture-container">
        								<div class="picture">
        									<img src="/user/mypage/imgview?imgview=${company.mainImg}" class="picture-src" id='wizardPicturePreview' title=''>
        									<input name="mainImg" type="file" id='wizard-picture' value="${company.mainImg}">
        								</div>
        								<div>
        									<label>대표 사진</label>
        								</div>
        							</div>
        						</div>
        						<div class="col-md-6 col-xs-6">
                      <div class='form-group'>
                        <label>사업자번호 앞자리 6자리</label>
                        <input name='companyNo' class='form-control' type='text' placeholder='사업자번호 앞 6자리' value="${company.companyNo}">
                      </div>
        							<div class="form-group">
        								<label class="dp-block">회사명</label>
        								<input name='nm' class='form-control form-addr' type='text' placeholder='회사명' value="${company.nm}">
        								<input type='hidden' name='authChk' value='n'>
        								<button id='authCp' class='btn btn-addr'>인증하기</button>
        							</div>
                      <div class="form-group">
                        <label>비밀번호</label>
                        <input name='pw' id='pw' type='password' class='form-control'>
                      </div>
                      <div class='form-group'>
                       <label>비밀번호 확인</label>
                       <input name='repw' id='repw' type='password' class='form-control'>
                      </div>
        							<div class="form-group">
        								<label>대표자명</label>
        								<input name='mainNm' type='text' class='form-control' placeholder='대표자명' value="${company.mainNm}">
        							</div>
        							<div class="form-group">
        								<label class='dp-block'>회사 주소</label>
        								<input id='postcode' name='postcode' type='text' class='form-control form-addr' placeholder='우편번호' value="${postcode}">
        								<button id='btnAddr' class='btn btn-addr'>우편검색</button>
        								<input id='addr' name='addr' type='text' class='form-control' placeholder='주소' value="${addr}">
        								<input id='addrdetail'name='addrdetail' type='text' class='form-control' placeholder='상세주소' value="${addrdetail}" style='margin-top:5px;'>
        							</div>
        							<div class="form-group">
        								<label>전화 번호</label>
        								<input name='tel' class='form-control' type='tel' placeholder='전화 번호' value="${company.tel}">
        							</div>
        						</div>
        						<div class="col-md-3 col-xs-3"></div>
        					</div>
        					<div class="col-sm-12">
                    <div class='form-group'>
                      <label>한 줄 소개</label>
                      <input type='text' name='smyIntro' class='form-control' placeholder='간단하게 보여질 한 줄 소개' value="${company.smyIntro}">
                    </div>
        						<div class="form-group">
        							<label>업체 소개</label>
        							<textarea name='introduce' class='tx-cp-memo' maxlength='1000'>${company.introduce}</textarea>
        						</div>
        						<div class="form-group">
        							<div class="text-center">
        								<button type="submit" class="btn btn-primary">수정하기</button>
        							</div>
        						</div>
                  </div>
                </form>
               </div>
             </div>
           </div>
         </div>
			</c:if>
		</c:if>
  </div>
  </div>
  
  <%@include file="../../include/bottom.jsp"%>
</body>
</html>