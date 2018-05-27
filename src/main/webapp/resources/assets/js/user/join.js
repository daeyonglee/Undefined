searchVisible = 0;
transparent = true;

$(document).ready(function () {
    /*  Activate the tooltips      */
    $('[rel="tooltip"]').tooltip();

    $('.wizard-card').bootstrapWizard({
        'tabClass': 'nav nav-pills',
        'nextSelector': '.btn-next',
        'previousSelector': '.btn-previous',
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
            if (index == 1) {
                return validateFirstStep();
            } else if (index == 2) {
                return validateSecondStep();
            } else if (index == 3) {
                return validateThirdStep();
            } //etc. 

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

    // Prepare the preview for profile picture
    $("#wizard-picture").change(function () {
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

    /**
     * 주소 버튼 클릭 이벤트 처리
     * @returns
     */
    $('#btnAddr').on('click', function(e){
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
		    html += "  <input name='email' type='email' class='form-control'>";
		    html += "</div>";
		    html += "<div class='form-group'>";
		    html += "  <label>비밀번호 <small>(required)</small></label>";
		    html += "  <input name='pw' type='password' class='form-control'>";
		    html += "</div>";
		    html += "<div class='form-group'>";
		    html += "  <label>비밀번호 확인<small>(required)</small></label>";
		    html += "<input name='repw' type='password' class='form-control'>";
		    html += "</div>";
		$("#base-container").html(html);
	}
	
	if (type == "company") {
		
		var html  = "<div class='form-group'>";
		    html += "  <label>이메일 <small>(required)</small></label>";
		    html += "  <input name='email' type='email' class='form-control'>";
		    html += "</div>";
		    html += "<div class='form-group'>";
		    html += "  <label>비밀번호 <small>(required)</small></label>";
		    html += "  <input name='pw' type='password' class='form-control'>";
		    html += "</div>";
		    html += "<div class='form-group'>";
		    html += "  <label>비밀번호 확인<small>(required)</small></label>";
		    html += "<input name='repw' type='password' class='form-control'>";
		    html += "</div>";
		    /*html += "<div class='form-group'>";
		    html += "  <label>전화번호<small>(required)</small></label>";
		    html += "  <input name='tel' type='tel' class='form-control'>";
		    html += "</div>";
		    html += "<div class='form-group'>";
		    html += "  <label>주소<small>(required)</small></label>";
		    html += "  <input name='addr' type='text' class='form-control'>";
		    html += "</div>";*/
	    $("#base-container").html(html);
	}
	// html 태그 구성
	// 1. 일반 사용자 일시
	var html = ""

    $(".wizard-card form").validate({
        rules: {
            firstname: "required",
            lastname: "required",
            email: {
                required: true,
                email: true
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
            firstname: "Please enter your First Name",
            lastname: "Please enter your Last Name",
            email: "Please enter a valid email address",
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
        //form is invalid
        return false;
    }

    return true;
}

function validateSecondStep() {
	
	console.log( $(":input:radio[name=type]:checked").val());
	
	var type = $(":input:radio[name=type]:checked").val();
	
	if (type == "users") {
		var html  = "<div class='row'>";
		    html += "  <div class='container-fluid'>";
		    html += "  <div class='col-sm-3'></div>";
		    html += "  <div class='col-sm-6'>";
		    html += "    <div class='form-group'>";
		    html += "      <label>휴대폰 번호<small>(required)</small></label>";
		    html += "      <input name='tel' type='tel' class='form-control'>";
		    html += "    </div>";
		    html += "    <div class='form-group'>";
		    html += "      <label>생년월일<small>(required)</small></label>";
		    html += "      <input name='birthday' type='date' class='form-control'>";
		    html += "    </div>";
		    html += "    <div class='form-group'>";
		    html += "      <label class='dp-block'>주소<small>(required)</small></label>";
		    html += "      <input id='postcode' name='postcode' type='text' class='form-control form-addr' placeholder='우편번호'>";
		    html += "      <button id='btnAddr' class='btn btn-addr'>우편검색</button>";
		    html += "      <input id='addr' name='addr' type='text' class='form-control' placeholder='주소'>";
		    html += "      <input id='addrdetail' name='addrdetail' type='text' class='form-control' placeholder='상세주소'>";
		    html += "    </div>";
		    html += "  </div>";
		    html += "  <div class='col-sm-3'></div>";
		    html += "</div>";
	    
		$("#step3").html(html);
	}
                                          
    //code here for second step
    $(".wizard-card form").validate({
        rules: {
        },
        messages: {
        }
    });

    if (!$(".wizard-card form").valid()) {
        console.log('invalid');
        return false;
    }
    return true;

}

function validateThirdStep() {
    //code here for third step


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













