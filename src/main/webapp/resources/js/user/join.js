searchVisible = 0;
transparent = true;

$(document).ready(function () {

    /*  Activate the tooltips      */
    $('[rel="tooltip"]').tooltip();

    $('.wizard-card').bootstrapWizard({
        'tabClass': 'nav nav-pills',
        'nextSelector': '.btn-next',
        'previousSelector': '.btn-previous',
        'lastSelector': '.btn-finish',
        onInit: function (tab, navigation, index) {

            //check number of tabs and fill the entire row
            var $total = navigation.find('li').length;
            $width = 100 / $total;

            $display_width = $(document).width();

            if ($display_width < 600 && $total > 3) {
                $width = 50;
            }

            navigation.find('li').css('width', $width + '%');

        },
        onNext: function (tab, navigation, index) {
            
        	if (!$(".wizard-card form").valid()) {
        		$validator.focusInvalid();
                return false;
            }
            
        	if (index == 1) {
                return validateFirstStep();
            } else if (index == 2) {
               
               var email = $("#email").val();
           	   
           	   // 이메일체크
           	   $.ajax({
           		   url: "/user/emailcheck",
           		   type: "get",
           		   data: {email:email},
           		   dataType: "json",
           		   success:function(data){
           			   console.log(data);
           			   if (data.email == "" || data.email == null || data.email == undefined) {
           				   
           			   } else {
           				   alert("이미 이메일이 존재합니다.");
         				   return;
           			   }
           		   }
           	   });
           	   
          	   return validateSecondStep();
            } else if (index == 3) {
                return validateThirdStep();
            } //etc. 

        	return true;
        },
        onTabClick: function (tab, navigation, index) {
            // Disable the posibility to click on tabs
            return false;
        },
        onTabShow: function (tab, navigation, index) {
            var $total = navigation.find('li').length;
            var $current = index + 1;

            var wizard = navigation.closest('.wizard-card');

            // If it's the last tab then hide the last button and show the finish instead
            if ($current >= $total) {
                $(wizard).find('.btn-next').hide();
                $(wizard).find('.btn-finish').show();
            } else {
                $(wizard).find('.btn-next').show();
                $(wizard).find('.btn-finish').hide();
            }
        }
    });
    
    $('.wizard-card .btn-finish').click(function(e){
    	if (!$(".wizard-card form").valid()) {
    		$validator.focusInvalid();
            return false;
        }
    });
    
    // Prepare the preview for profile picture
    $(document).on('change', '#wizard-picture', function (e) {
        readURL(this);
    });

    $('[data-toggle="wizard-radio"]').click(function () {
        wizard = $(this).closest('.wizard-card');
        wizard.find('[data-toggle="wizard-radio"]').removeClass('active');
        $(this).addClass('active');
        $(wizard).find('[type="radio"]').removeAttr('checked');
        $(this).find('[type="radio"]').attr('checked', 'true');
    });

    $('[data-toggle="wizard-checkbox"]').click(function () {
        if ($(this).hasClass('active')) {
            $(this).removeClass('active');
            $(this).find('[type="checkbox"]').removeAttr('checked');
        } else {
            $(this).addClass('active');
            $(this).find('[type="checkbox"]').attr('checked', 'true');
        }
    });

    $height = $(document).height();
    $('.set-full-height').css('height', $height);

    /**************************************************************
     * 이벤트 등록 영역                                               *
     **************************************************************/
    
    /**
     * 가입하기 버튼에 대한 클릭 이벤트
     */
    $(document).on('click', 'input[name="finish"]', function(e){
    	
    	var type = $(":input:radio[name=type]:checked").val();
    	var form = document.forms[0];
    	
    	if (type == 'users') {
    		form.action = '/user/userjoin';
    	}
    	if (type == 'company') {
    		form.action = '/user/companyjoin';
    		form.enctype = 'multipart/form-data';
    	}
    	
    	form.submit();
    	
    });
    
    /**
     * 사업자번호에 해당하는 사업자 정보 조회하기
     */
    $(document).on('click', '#authCp', function(e){
    	e.preventDefault();
    	
    	var bzowr_rgst_no = $('input[name="companyNo"]').val(); 
    	var wkpl_nm = $('input[name="name"]').val();
    	var url = 'http://apis.data.go.kr/B552015/NpsBplcInfoInqireService/getBassInfoSearch?'+encodeURIComponent('ServiceKey')+'=0FwR7es8bXjf958cfwrKjsoU37Ylsl26vr9cInO9I%2FELaImq4zuqdCQNlnLKMp0kI4f4X6xS9T01iyFhoPOKXw%3D%3D&'+encodeURIComponent('bzowr_rgst_no')+'='+encodeURIComponent(bzowr_rgst_no)+'&'+encodeURIComponent('wkpl_nm')+'='+encodeURIComponent(wkpl_nm);
    	console.log(url);
    	var yqlURL = [ "http://query.yahooapis.com/v1/public/yql", "?q=" + encodeURIComponent("select * from xml where url='" + url + "'"), "&format=xml&callback=?" ].join("");
    	
    	$.ajax({
    		url: yqlURL,
    		dataType: 'json',
    		success:function(data){
    			
    			var companyNo = $(data.results[0]).find("bzowrRgstNo").text();
    			var companyNm = $(data.results[0]).find("wkplNm").text();
    			
    			console.log(data);
    			console.log(companyNo);
    			console.log(companyNm);
    			
    			if (companyNo == "" || companyNm == "") {
    				alert("인증 실패하였습니다.");
    				$('input[name="companyNo"]').prop('disabled', false);
        			$('input[name="name"]').prop('disabled', false);
    			} else {
    				alert("정상적으로 인증되었습니다.");
    				$('input[name="cn"]').val($('input[name="companyNo"]').val());
    				$('input[name="nm"]').val($('input[name="name"]').val());
    				$('input[name="companyNo"]').prop('disabled', true);
        			$('input[name="name"]').prop('disabled', true);
        			$('#authCp').prop('disabled', true);
    			}
    		}
    	});
    });
    
    /**
     * 주소 버튼 클릭 이벤트 처리
     * @returns
     */
    $(document).on('click', '#btnAddr', function(e){
    	e.preventDefault();
    	
    	new daum.Postcode({
             oncomplete: function(data) {
                 // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                 // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                 // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                 var fullAddr = ''; // 최종 주소 변수
                 var extraAddr = ''; // 조합형 주소 변수

                 // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                 if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                     fullAddr = data.roadAddress;

                 } else { // 사용자가 지번 주소를 선택했을 경우(J)
                     fullAddr = data.jibunAddress;
                 }

                 // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                 if(data.userSelectedType === 'R'){
                     //법정동명이 있을 경우 추가한다.
                     if(data.bname !== ''){
                         extraAddr += data.bname;
                     }
                     // 건물명이 있을 경우 추가한다.
                     if(data.buildingName !== ''){
                         extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                     }
                     // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                     fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                 }

                 // 우편번호와 주소 정보를 해당 필드에 넣는다.
                 document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
                 document.getElementById('addr').value = fullAddr;

                 // 커서를 상세주소 필드로 이동한다.
               document.getElementById('addrdetail').value = "";
               document.getElementById('addrdetail').focus();
             }
         }).open();
    });  
});

function validateFirstStep() {

	// 앞에서 일반 사용자를 선택했는지 업체를 선택했는지 확인
	var type = $(":input:radio[name=type]:checked").val();
	
	if (type == "users") {
		
		var html  = "<div class='form-group'>";
		    html += "  <label>이메일 <small>(required)</small></label>";
		    html += "  <input id='email' name='email' type='email' class='form-control' required>";
		    html += "</div>";
		    html += "<div class='form-group'>";
		    html += "  <label>비밀번호 <small>(required)</small></label>";
		    html += "  <input name='pw' id='pw' type='password' class='form-control' required>";
		    html += "</div>";
		    html += "<div class='form-group'>";
		    html += "  <label>비밀번호 확인<small>(required)</small></label>";
		    html += "<input name='repw' id='repw' type='password' class='form-control' required>";
		    html += "</div>";
		$("#base-container").html(html);
	}
	
	if (type == "company") {
		
		var html  = "<div class='form-group'>";
		    html += "  <label>이메일 <small>(required)</small></label>";
		    html += "  <input id='email' name='email' type='email' class='form-control' required>";
		    html += "</div>";
		    html += "<div class='form-group'>";
		    html += "  <label>비밀번호 <small>(required)</small></label>";
		    html += "  <input name='pw' id='pw' type='password' class='form-control' required>";
		    html += "</div>";
		    html += "<div class='form-group'>";
		    html += "  <label>비밀번호 확인<small>(required)</small></label>";
		    html += "<input name='repw' id='repw' type='password' class='form-control' required>";
		    html += "</div>";
	    $("#base-container").html(html);
	}
	
	$(".wizard-card form").validate({
        rules: {
            email: {
                required: true,
                email: true
            },
            pw: {
            	required: true,
            	minlength: 6,
            	maxlength: 20
            },
            repw: {
            	required: true,
            	equalTo: "#pw"
            },
            companyNo: {
        		requrired: true
        	},
        	name : {
        		required: true
        	},
        	mainNm : {
        		required: true
        	},
        	tel:{
        		required: true,
        		tel: true
        	},
        	birthday:{
        		required: true,
        		date: true
        	},
        	addrdetail: {
        		required: "#postcode"
        	}

            /*  other possible input validations
             ,username: {
             required: true,
             minlength: 2
             },
             password: {
             required: true,
             minlength: 5
             },
             confirm_password: {
             required: true,
             minlength: 5,
             equalTo: "#password"
             },
             
             topic: {
             required: "#newsletter:checked",
             minlength: 2
             },
             agree: "required"
             */

        },
        messages: {
            email: "이메일 형식이 유효하지 않습니다.",
            pw: "6~20자 사이의 값을 입력해주세요.",
            repw: {
            	required: "비밀번호가 일치하지 않습니다.",
            	equalTo: "비밀번호가 일치하지 않습니다."
            }
            /*   other posible validation messages
             username: {
             required: "Please enter a username",
             minlength: "Your username must consist of at least 2 characters"
             },
             password: {
             required: "Please provide a password",
             minlength: "Your password must be at least 5 characters long"
             },
             confirm_password: {
             required: "Please provide a password",
             minlength: "Your password must be at least 5 characters long",
             equalTo: "Please enter the same password as above"
             },
             email: "Please enter a valid email address",
             agree: "Please accept our policy",
             topic: "Please select at least 2 topics"
             */

        }
    });
	
    if (!$(".wizard-card form").valid()) {
    	console.log($validator);
    	$validator.focusInvalid();
        return false;
    }

    return true;
}

function validateSecondStep() {
	
	var type = $(":input:radio[name=type]:checked").val();
	
	if (type == "users") {
		var html  = "<div class='row'>";
		    html += "  <div class='container-fluid'>";
		    html += "  <div class='col-sm-3'></div>";
		    html += "  <div class='col-sm-6'>";
		    html += "    <div class='form-group'";
		    html += "      <label>이름<small>(required)</small></label>";
		    html += "      <input name='name' id='name' type='text' class='form-control' required>";
		    html += "    </div>";
		    html += "    <div class='form-group'>";
		    html += "      <label>휴대폰 번호<small>(required)</small></label>";
		    html += "      <input name='tel' id='tel' type='tel' class='form-control' required>";
		    html += "    </div>";
		    html += "    <div class='form-group'>";
		    html += "      <label>생년월일<small>(required)</small></label>";
		    html += "      <input name='birthday' id='birthday' type='date' class='form-control' required>";
		    html += "    </div>";
		    html += "    <div class='form-group'>";
		    html += "      <label class='dp-block'>주소<small>(required)</small></label>";
		    html += "      <input id='postcode' name='postcode' type='text' class='form-control form-addr' placeholder='우편번호' required>";
		    html += "      <button id='btnAddr' class='btn btn-addr'>우편검색</button>";
		    html += "      <input id='addr' name='addr' type='text' class='form-control' placeholder='주소' required>";
		    html += "      <input id='addrdetail'name='addrdetail' type='text' class='form-control' placeholder='상세주소' required>";
		    html += "    </div>";
		    html += "  </div>";
		    html += "  <div class='col-sm-3'></div>";
		    html += "</div>";
	    
		$("#step3").html(html);
	}
	
	if (type == 'company') {
		var html  = "<div class='row'>";
		    html += "  <div class='col-sm-4 col-sm-offset-1'>";
		    html += "    <div class='picture-container'>";
		    html += "	   <div class='picture'>";
		    html += "        <img class='picture-src' id='wizardPicturePreview' title=''/>";
		    html += "        <input name='mainImg' type='file' id='wizard-picture' required>";
		    html += "      </div>";
		    html += "      <div>";
		    html += "        <label>대표 사진</label>";
		    html += "      </div>";
		    html += "    </div>";
		    html += "  </div>";
		    html += "  <div class='col-sm-6'>";
		    html += "    <div class='form-group'>";
		    html += "      <label>사업자번호 앞자리 6자리</label>";
		    html += "      <input name='companyNo' class='form-control' type='text' placeholder='사업자번호 앞 6자리' required>";
		    html += "      <input name='cn' type='hidden'>"
		    html += "    </div>";
		    html += "    <div class='form-group'>";
		    html += "      <label class='dp-block'>회사명</label>";
		    html += "      <input name='name' class='form-control form-addr' type='text' placeholder='회사명' required>";
		    html += "      <input type='hidden' name='authChk' value='n'>";
		    html += "      <input type='hidden' name='nm'>";
		    html += "      <button id='authCp' class='btn btn-addr'>인증하기</button>";
		    html += "    </div>";
		    html += "    <div class='form-group'>";
		    html += "      <label>대표자명</label>";
		    html += "      <input name='mainNm' type='text' class='form-control' placeholder='대표자명' required>";
		    html += "    </div>";
		    html += "    <div class='form-group'>";
		    html += "      <label class='dp-block'>회사 주소</label>";
		    html += "      <input id='postcode' name='postcode' type='text' class='form-control form-addr' placeholder='우편번호' required>";
		    html += "      <button id='btnAddr' class='btn btn-addr'>우편검색</button>";
		    html += "      <input id='addr' name='addr' type='text' class='form-control' placeholder='주소' required>";
		    html += "      <input id='addrdetail'name='addrdetail' type='text' class='form-control' placeholder='상세주소' required>";
		    html += "    </div>";
		    html += "    <div class='form-group'>";
		    html += "      <label>전화 번호</label>";
		    html += "      <input name='tel' class='form-control' type='tel' placeholder='전화 번호' required>";
		    html += "    </div>";
		    html += "    <div class='form-group'>";
		    html += "      <label>업체 종류</label>";
		    html += "        <div class='checkbox'>";
		    html += "          <label>";
		    html += "            <input type='radio' name='companyType' value='dress' checked='checked' /> <strong>드레스</strong>";
		    html += "          </label>";
		    html += "          <label>";
		    html += "            <input type='radio' name='companyType' value='studio' /> <strong>스튜디오</strong>";
		    html += "          </label>";
		    html += "          <label>";
		    html += "            <input type='radio' name='companyType' value='makeup' /> <strong>메이크업</strong>";
		    html += "          </label>";
		    html += "        </div>";
		    html += "    </div>";
		    html += "  </div>";
		    html += "</div>";
		    html += "<div class='row'>";
		    html += "  <div class='col-sm-12'>";
		    html += "  	 <div class='form-group>'";
		    html += "      <label>한 줄 소개</label>";
		    html += "      <input type='text' name='smyIntro' class='form-control' placeholder='간단하게 보여질 한 줄 소개' required>";
		    html += "    </div>";
		    html += "    <div class='form-group'>";
		    html += "      <label>업체 소개</label>";
		    html += "      <textarea name='introduce' class='tx-cp-memo' maxlength='1000' required></textarea>";
		    html += "    </div>";
		    html += "  </div>";
		    html += "</div>";
		 
	   $("#step3").html(html);    
	   
	   // 체크버튼 iCheck 활성화
	   $('input').iCheck({
	        checkboxClass: 'icheckbox_square-yellow',
	        radioClass: 'iradio_square-yellow',
	        increaseArea: '20%' // optional
	   });
	}
	$(".wizard-card form").validate({
        rules: {
            email: {
                required: true,
                email: true
            },
            pw: {
            	required: true,
            	minlength: 6,
            	maxlength: 20
            },
            repw: {
            	required: true,
            	equalTo: "#pw"
            },
            companyNo: {
        		requrired: true
        	},
        	name : {
        		required: true
        	},
        	mainNm : {
        		required: true
        	},
        	tel:{
        		required: true,
        		tel: true
        	},
        	birthday:{
        		required: true,
        		date: true
        	},
        	addrdetail: {
        		required: "#postcode"
        	}

            /*  other possible input validations
             ,username: {
             required: true,
             minlength: 2
             },
             password: {
             required: true,
             minlength: 5
             },
             confirm_password: {
             required: true,
             minlength: 5,
             equalTo: "#password"
             },
             
             topic: {
             required: "#newsletter:checked",
             minlength: 2
             },
             agree: "required"
             */

        },
        messages: {
            email: "이메일 형식이 유효하지 않습니다.",
            pw: "6~20자 사이의 값을 입력해주세요.",
            repw: {
            	required: "비밀번호가 일치하지 않습니다.",
            	equalTo: "비밀번호가 일치하지 않습니다."
            }
            /*   other posible validation messages
             username: {
             required: "Please enter a username",
             minlength: "Your username must consist of at least 2 characters"
             },
             password: {
             required: "Please provide a password",
             minlength: "Your password must be at least 5 characters long"
             },
             confirm_password: {
             required: "Please provide a password",
             minlength: "Your password must be at least 5 characters long",
             equalTo: "Please enter the same password as above"
             },
             email: "Please enter a valid email address",
             agree: "Please accept our policy",
             topic: "Please select at least 2 topics"
             */

        }
    });
	
    if (!$(".wizard-card form").valid()) {
        return false;
    }
    
    return true;

}

function validateThirdStep() {
	
}

//Function to show image before upload
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#wizardPicturePreview').attr('src', e.target.result).fadeIn('slow');
        }
        reader.readAsDataURL(input.files[0]);
    }
}
