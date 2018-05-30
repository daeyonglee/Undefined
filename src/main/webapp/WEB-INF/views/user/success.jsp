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
                            <form>                        
                                <div class="wizard-header">
                                    <!-- <h3>
                                        <b>약관 동의</b><br>
                                        <small>Lorem ipsum dolor sit amet, consectetur adipisicing.</small>
                                    </h3> -->
                                </div>
                                
                                    <h4 class="info-text">회원가입을 축하드립니다.</h4>
                                      <div class="row">  
                                        <div class="col-lg-12">
                                          <div>
                                            <p>
                                                <label><strong>최선을 다하는 원터치스드메가 되겠습니다. 감사합니다.</strong></label>
                                            </p>
                                          </div>
                                          <div class="col-lg-4"></div>
                                          <div class="col-lg-4 chkbx-mg-lt">
                                          </div>
                                          <div class="col-lg-4"></div>
                                        </div>
                                      </div>
                                  <!--  End step 1 -->
                                <div class="wizard-footer">
                                    <div class="pull-right">
                                        <input type='button' onclick="location.href='/'" class='btn btn-next btn-primary' name='home' value='홈으로 가기' id='' />
                                    </div>

                                    <div class="pull-left">
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
  
</body>
</html>