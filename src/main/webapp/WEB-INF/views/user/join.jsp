<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../include/top.jsp" %> 
<!DOCTYPE html>

<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->

<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->

<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->

<!--[if gt IE 8]><!--> 

<html class="no-js"> <!--<![endif]-->
    <head>
      <link rel="stylesheet" href="/resources/assets/css/wizard.css">
      <link rel="stylesheet" href="/resources/assets/css/user/join.css">
      
      <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
      <script type="text/javascript" src="/resources/assets/js/user/join.js"></script>
      
    </head>
    <body>
        <div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title"><span>회원 가입</span></h1>               
                    </div>
                </div>
            </div> 
        </div>
        <!-- End page header --> 
        
        <!-- property area -->
        <div class="content-area submit-property" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">
                <div class="clearfix" > 
                    <div class="wizard-container"> 

                        <div class="wizard-card ct-wizard-orange" id="wizardProperty">
                            <form action="">                        
                                <div class="wizard-header">
                                    <!-- <h3>
                                        <b>약관 동의</b><br>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing.</small>
                                    </h3> -->
                                </div>

                                <ul>
                                    <li><a href="#step1" data-toggle="tab">회원 분류</a></li>
                                    <li><a href="#step2" data-toggle="tab">기본 정보</a></li>
                                    <li><a href="#step3" data-toggle="tab">추가 정보</a></li>
                                </ul>

                                <div class="tab-content">
                                  
                                  <div class="tab-pane" id="step1">                                        
                                    <h4 class="info-text">원터치 스드메 홈페이지에 오신걸 환영합니다.</h4>
                                      <div class="row">  
                                        <div class="col-lg-12">
                                          <div>
                                            <p>
                                                <label><strong>Terms and Conditions</strong></label>
                                                By accessing or using  GARO ESTATE services, such as 
                                                posting your property advertisement with your personal 
                                                information on our website you agree to the
                                                collection, use and disclosure of your personal information 
                                                in the legal proper manner
                                            </p>
                                          </div>
                                          <div class="col-lg-4"></div>
                                          <div class="col-lg-4 chkbx-mg-lt">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="radio" name="type" value="users" checked="checked" /> <strong>일반 사용자</strong>
                                                </label>
                                                <label>
                                                    <input type="radio" name="type" value="company" /> <strong>업체</strong>
                                                </label>
                                            </div>
                                          </div>
                                          <div class="col-lg-4"></div>
                                        </div>
                                      </div>
                                    </div>
                                  <!--  End step 1 -->
                                  
                                  <div class="tab-pane" id="step2">
                                    <div class="row">
                                      <div class="container-fluid">
                                        <div class="col-sm-3"></div>
                                        <div id="base-container" class="col-sm-6"></div>
                                        <div class="col-sm-3"></div>
                                      </div>
                                    </div>
                                  </div>
                                  <!--  End step 2 -->
                                  
                                  <div class="tab-pane" id="step3">
                                    <div class="row">
                                      <div class="col-sm-4 col-sm-offset-1">
                                        <div class="picture-container">
                                            <div class="picture">
                                                <img class="picture-src" id="wizardPicturePreview" title=""/>
                                                <input type="file" id="wizard-picture">
                                            </div>
                                            <div>
                                              <label>대표 사진</label>
                                            </div>
                                        </div>
                                      </div>
                                      <div class="col-sm-6">
                                        <div class="form-group">
                                          <label class="dp-block">사업자번호<small>(required)</small></label>
                                          <input class="form-control form-addr" type="text" placeholder="사업자번호">
                                          <button class="btn btn-addr">검색</button>
                                        </div>
                                        <div class="form-group">
                                          <label>회사명</label>
                                          <input class="form-control" type="text" placeholder="회사명">
                                        </div>
                                        <div class="form-group">
                                          <label>회사 주소</label>
                                          <input class="form-control" type="text" placeholder="회사 주소">
                                        </div>
                                        <div class="form-group">
                                          <label>전화 번호</label>
                                          <input class="form-control" type="tel" placeholder="전화 번호">
                                        </div>
                                        <div class="form-group">
                                          <label>업체 종류</label>
                                          <div class="checkbox">
                                            <label>
                                                <input type="radio" name="company-type" value="dress" checked="checked" /> <strong>드레스</strong>
                                            </label>
                                            <label>
                                                <input type="radio" name="company-type" value="studio" /> <strong>스튜디오</strong>
                                            </label>
                                            <label>
                                              <input type="radio" name="company-type" value="makeup" /> <strong>메이크업</strong>
                                            </label>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="row">
                                      <div class="col-sm-12">
                                        <div class="form-group">
                                          <label>업체 소개</label>
                                          <textarea class="tx-cp-memo" maxlength="1000"></textarea>
                                        </div>
                                      </div>
                                    </div>
                                  <!--  End step 3 -->
                                  
                                </div>

                                <div class="wizard-footer">
                                    <div class="pull-right">
                                        <input type='button' class='btn btn-next btn-primary' name='next' value='Next' id='' />
                                        <input type='button' class='btn btn-finish btn-primary ' name='finish' value='Finish' />
                                    </div>

                                    <div class="pull-left">
                                        <input type='button' class='btn btn-previous btn-primary' name='previous' value='Previous' />
                                    </div>
                                    <div class="clearfix"></div>                                            
                                </div>	
                            </form>
                        </div>
                        <!-- End submit form -->
                    </div> 
                </div>
            </div>
        </div>
         
  <%@include file="../include/bottom.jsp" %> 
  
  <script>
  	$(document).ready(function(){
  		
  		$('.wizard-card').bootstrapWizard({
  			
  			
  		});
  		
  	});
  </script>
  
</body>
</html>