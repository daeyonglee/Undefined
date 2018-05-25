<%@ page contentType="text/html; charset=UTF-8"%>

 

<!DOCTYPE html>

<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->

<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->

<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->

<!--[if gt IE 8]><!--> 

<html class="no-js"> <!--<![endif]-->
    <head>
        <meta name="description" content="GARO is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <script src="/resources/assets/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
        <script src="/resources/assets/js/jquery.validate.min.js"></script>
        <script src="/resources/assets/js/wizard.js"></script>
    </head>
    <body>
    
    <jsp:include page="../include/top.jsp" />


        <div class="page-head"> 

            <div class="container">

                <div class="row">

                    <div class="page-head-content">

                        <h1 class="page-title"><span class="orange strong">업체 정보 등록</span></h1>               

                    </div>

                </div>

            </div> 

        </div>

        <!-- End page header --> 


        <!-- property area -->

        <div class="content-area user-profiel" style="background-color: #FCFCFC;">&nbsp;

            <div class="container">   

                <div class="row">

                    <div class="col-sm-10 col-sm-offset-1 profiel-container">

 

                        <form action="" method="">

                            <div class="profiel-header">

                                <h3>

                                    <b>BUILD</b> YOUR PROFILE <br>

                                    <small>This information will let us know more about you.</small>

                                </h3>

                                <hr>

                            </div>

 

                            <div class="clear">

                                <div class="col-sm-3 col-sm-offset-1">

                                    <div class="picture-container">

                                        <div class="picture">

                                            <img src="/resources/sassets/img/avatar.png" class="picture-src" id="wizardPicturePreview" title=""/>

                                            <input type="file" id="wizard-picture">

                                        </div>

                                        <h6>대표사진 등록</h6>

                                    </div>

                                </div>

 

                                <div class="col-sm-3 padding-top-25">

 

                                    <div class="form-group">

                                        <label>회사 이름 <small>(required)</small></label>

                                        <input name="companyname" type="text" class="form-control" placeholder="company name">

                                    </div>

                                    <div class="form-group">

                                        <label>위치 등록 <small>(required)</small></label>

                                        <input name="location" type="text" class="form-control" placeholder="도로명 주소 입력">

                                    </div> 

                                </div>

                                <div class="col-sm-3 padding-top-25">

                                    <div class="form-group">

                                        <label>대표자 이름<small>(required)</small></label>

                                        <input name="name" type="text" class="form-control">

                                    </div>

                                    <div class="form-group">

                                        <label>업체 소개 <small>(required)</small></label>

                                        <input type="detail" type="text"  class="form-control">

                                    </div>

                                </div>  

 

                            </div>

 

                            <div class="clear">

                                <br>

                                <hr>

                                <br>

                                <div class="col-sm-5 col-sm-offset-1">

                                    <div class="form-group">

                                        <label>Facebook :</label>

                                        <input name="Facebook" type="text" class="form-control" placeholder="https://facebook.com/user">

                                    </div>

                                    <div class="form-group">

                                        <label>Twitter :</label>

                                        <input name="Twitter" type="text" class="form-control" placeholder="https://Twitter.com/@user">

                                    </div>

                                    <div class="form-group">

                                        <label>Website :</label>

                                        <input name="website" type="text" class="form-control" placeholder="https://yoursite.com/">

                                    </div>

                                </div>  

 

                                <div class="col-sm-5">

                                    <div class="form-group">

                                        <label>Public email :</label>

                                        <input name="p-email" type="email" class="form-control" placeholder="p-email@rmail.com">

                                    </div>

                                    <div class="form-group">

                                        <label>Phone :</label>

                                        <input name="Phone" type="text" class="form-control" placeholder="+1 9090909090">

                                    </div>

                                    <div class="form-group">

                                        <label>FAX :</label>

                                        <input name="FAX" type="text" class="form-control" placeholder="+1 9090909090">

                                    </div>

                                </div>

 

                            </div>

                    

                            <div class="col-sm-5 col-sm-offset-1">

                                <br>

                                <input type='button' class='btn btn-finish btn-primary' name='finish' value='Finish' />

                            </div>

                            <br>

                    </form>

 

                </div>

            </div><!-- end row -->

 

        </div>

    </div>

 

 

         
  <jsp:include page="../include/bottom.jsp" />

 

</body>

</html>