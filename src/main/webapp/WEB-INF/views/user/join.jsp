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
                            <form action="" method="">                        
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
                                    <li><a href="#step4" data-toggle="tab">회원 가입</a></li>
                                </ul>

                                <div class="tab-content">
                                  <div class="tab-pane" id="step1">                                        
                                    <h4 class="info-text">원터치 스드메 홈페이지에 오신걸 환영합니다.</h4>
                                      <div class="row">  
                                        <div class="col-sm-12">
                                          <div class="">
                                            <p>
                                                <label><strong>Terms and Conditions</strong></label>
                                                By accessing or using  GARO ESTATE services, such as 
                                                posting your property advertisement with your personal 
                                                information on our website you agree to the
                                                collection, use and disclosure of your personal information 
                                                in the legal proper manner
                                            </p>

                                            <div class="checkbox">
                                                <label>
                                                    <input type="radio" name="type" value="users" /> <strong>일반 사용자</strong>
                                                </label>
                                                <label>
                                                    <input type="radio" name="type" value="company" /> <strong>업체</strong>
                                                </label>
                                            </div> 
                                          </div> 
                                        </div>
                                      </div>
                                    </div>
                                  <!--  End step 1 -->
                                  
                                  <div class="tab-pane" id="step2">
                                      <div class="row p-b-15  ">
                                          <h4 class="info-text"> 기본정보 입력</h4>
                                          <!-- <div class="col-sm-4 col-sm-offset-1">
                                              <div class="picture-container">
                                                  <div class="picture">
                                                      <img class="picture-src" id="wizardPicturePreview" title=""/>
                                                      <input type="file" id="wizard-picture">
                                                  </div>
                                                  <div>
                                                    <label>대표 사진</label>
                                                  </div>
                                              </div>
                                          </div> -->
                                          <div class="col-sm-6">
                                              <div class="form-group">
                                                  <label>Property name <small>(required)</small></label>
                                                  <input name="propertyname" type="text" class="form-control" placeholder="Super villa ...">
                                              </div>

                                              <div class="form-group">
                                                  <label>Property price <small>(required)</small></label>
                                                  <input name="propertyprice" type="text" class="form-control" placeholder="3330000">
                                              </div> 
                                              <div class="form-group">
                                                  <label>Telephone <small>(empty if you wanna use default phone number)</small></label>
                                                  <input name="phone" type="text" class="form-control" placeholder="+1 473 843 7436">
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <!-- <div class="tab-pane" id="step2">
                                      <div class="row p-b-15  ">
                                          <h4 class="info-text"> 기본정보 입력</h4>
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
                                                  <label>Property name <small>(required)</small></label>
                                                  <input name="propertyname" type="text" class="form-control" placeholder="Super villa ...">
                                              </div>

                                              <div class="form-group">
                                                  <label>Property price <small>(required)</small></label>
                                                  <input name="propertyprice" type="text" class="form-control" placeholder="3330000">
                                              </div> 
                                              <div class="form-group">
                                                  <label>Telephone <small>(empty if you wanna use default phone number)</small></label>
                                                  <input name="phone" type="text" class="form-control" placeholder="+1 473 843 7436">
                                              </div>
                                          </div>
                                      </div>
                                  </div> -->
                                  <!--  End step 2 -->

                                    <div class="tab-pane" id="step2">
                                        <h4 class="info-text"> How much your Property is Beautiful ? </h4>
                                        <div class="row">
                                            <div class="col-sm-12"> 
                                                <div class="col-sm-12"> 
                                                    <div class="form-group">
                                                        <label>Property Description :</label>
                                                        <textarea name="discrition" class="form-control" ></textarea>
                                                    </div> 
                                                </div> 
                                            </div>

                                            <div class="col-sm-12">
                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <label>Property State :</label>
                                                        <select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="Select your city">
                                                            <option>Seoul</option>
                                                            <option>Paris</option>
                                                            <option>Casablanca</option>
                                                            <option>Tokyo</option>
                                                            <option>Marraekch</option>
                                                            <option>kyoto , shibua</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <label>Property City :</label>
                                                        <select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="Select your city">
                                                            <option>New york, CA</option>
                                                            <option>Paris</option>
                                                            <option>Casablanca</option>
                                                            <option>Tokyo</option>
                                                            <option>Marraekch</option>
                                                            <option>kyoto , shibua</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <label>Property Statue  :</label>
                                                        <select id="basic" class="selectpicker show-tick form-control">
                                                            <option> -Status- </option>
                                                            <option>Rent </option>
                                                            <option>Boy</option>
                                                            <option>used</option>  

                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <label>Property Statue  :</label>
                                                        <select id="basic" class="selectpicker show-tick form-control">
                                                            <option> -Status- </option>
                                                            <option>Rent </option>
                                                            <option>Boy</option>
                                                            <option>used</option>  

                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-12 padding-top-15">                                                   
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label for="property-geo">Min bed :</label>
                                                        <input type="text" class="span2" value="" data-slider-min="0" 
                                                               data-slider-max="600" data-slider-step="5" 
                                                               data-slider-value="[250,450]" id="min-bed" ><br />
                                                        <b class="pull-left color">1</b> 
                                                        <b class="pull-right color">120</b>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">

                                                    <div class="form-group">
                                                        <label for="price-range">Min baths :</label>
                                                        <input type="text" class="span2" value="" data-slider-min="0" 
                                                               data-slider-max="600" data-slider-step="5" 
                                                               data-slider-value="[250,450]" id="min-baths" ><br />
                                                        <b class="pull-left color">1</b> 
                                                        <b class="pull-right color">120</b>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">

                                                    <div class="form-group">
                                                        <label for="property-geo">Property geo (m2) :</label>
                                                        <input type="text" class="span2" value="" data-slider-min="0" 
                                                               data-slider-max="600" data-slider-step="5" 
                                                               data-slider-value="[50,450]" id="property-geo" ><br />
                                                        <b class="pull-left color">40m</b> 
                                                        <b class="pull-right color">12000m</b>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-sm-12 padding-top-15">
                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox"> Swimming Pool
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox"> 2 Stories
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>                                                 
                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox"> Emergency Exit
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>                                                 
                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox"> Fire Place 
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div> 
                                            </div> 
                                            <div class="col-sm-12 padding-bottom-15">
                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox"> Laundry Room
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox"> Jog Path
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox"> Ceilings
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox"> Dual Sinks
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <br>
                                        </div>
                                    </div>
                                    <!-- End step 2 -->

                                    <div class="tab-pane" id="step3">                                        
                                        <h4 class="info-text">Give us somme images and videos ? </h4>
                                        <div class="row">  
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label for="property-images">Chose Images :</label>
                                                    <input class="form-control" type="file" id="property-images">
                                                    <p class="help-block">Select multipel images for your property .</p>
                                                </div>
                                            </div>
                                            <div class="col-sm-6"> 
                                                <div class="form-group">
                                                    <label for="property-video">Property video :</label>
                                                    <input class="form-control" value="" placeholder="http://www.youtube.com, http://vimeo.com" name="property_video" type="text">
                                                </div> 

                                                <div class="form-group">
                                                    <input class="form-control" value="" placeholder="http://www.youtube.com, http://vimeo.com" name="property_video" type="text">
                                                </div>

                                                <div class="form-group">
                                                    <input class="form-control" value="" placeholder="http://www.youtube.com, http://vimeo.com" name="property_video" type="text">
                                                </div>
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
                                        <input type='button' class='btn btn-previous btn-default' name='previous' value='Previous' />
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