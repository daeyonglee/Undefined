<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../include/top.jsp" %> 
<%@include file="../include/loginAPI.jspf" %>
<link rel="stylesheet" href="/resources/assets/css/user/login.css">
<body>
  <div class="page-head"> 
      <div class="container">
          <div class="row">
              <div class="page-head-content">
                  <h1 class="page-title">로그인</h1>
              </div>
          </div>
      </div>
  </div>
  <!-- End page header -->
  
  <form method="post" action="/user/kakaologin">
  	<input type="hidden" value="" name="userNo">
  </form>
  
  <!-- register-area -->
	<div class="register-area" style="background-color: rgb(249, 249, 249);">
		<div class="container">
			<div class="col-md-12">
				<div class="col-md-6 register-content">
					<div class="box-for overflow">                         
						<div class="col-md-12 col-xs-12 login-blocks">
							<h2>Login : </h2> 
							<form id="frmLogin" action="/user/loginp" method="post">
								<div class="form-group">
									<label for="email">Email</label>
									<input type="text" name="email" class="form-control" id="email">
								</div>
								<div class="form-group">
									<label for="pw">Password</label>
									<input type="password" name="pw" class="form-control" id="pw">
								</div>
                <div class="row">
                  <div class="checkbox icheck">
                    <label>
                      <input type="checkbox" name="useCookie"> 자동 로그인
                    </label>
                  </div>                        
                </div>
								<div class="text-center">
									<button type="submit" class="btn btn-default btn-login"> Log in</button>
								</div>
							</form>
							<br>
           
							<h2>Social login :  </h2> 
           
							<p>
							<a id="kakao" class="login-social" href="#"><i class="fa"><b>K</b></i>&nbsp;</a>  
							</p> 
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <script type="text/javascript">
  	$(document).ready(function(){
  		
  		// 이메일과 비밀번호 체크
  		$(".btn.btn-default.btn-login").on('click', function(e){
  			e.preventDefault();
  			
  			var email = $("#email").val();
  			var pw = $("#pw").val();
  			
  			var data = {
  					email: email,
  					pw: pw
  			}
  			
  			$.ajax({
  				type : "get",
  				url : "/user/logincheck",
  				data : data,
  				success: function(data){
  					console.log(data);
  					
  					if (data == "" || data == null || data == undefined) {
  						alert("이메일과 비밀번호가 일치하지 않습니다.");
  						return;
  					} else {
  						$("#frmLogin").submit();
  					}
  				}
  			});
  		});
  		
  		//네이버 로그인  
  		$('#naver').on('click', function(e){
	 			var naverLogin = new naver.LoginWithNaverId( 
				{ 
	 					clientId: "8dv6U1Q50QW6V3uNnEdA", 
	 					callbackUrl: "http://" + window.location.hostname + ((location.port==""||location.port==undefined)?"":":" + location.port) + "/user/login", 
	 					isPopup: true, 
	 					callbackHandle: false 
				});

				naverLogin.init();
 				
				console.log(naverLogin);
				
				naverLogin.getLoginStatus(function (status) {
  				if (status) {
  					var email = naverLogin.user.getEmail(); 
  					var nickName = naverLogin.user.getNickName(); 
  					var name = naverLogin.user.getName(); 
  					var profileImage = naverLogin.user.getProfileImage(); 
  					var birthday = naverLogin.user.getBirthday(); 
  					var uniqId = naverLogin.user.getId(); 
  					var age = naverLogin.user.getAge(); 
  				} else {
  					console.log("AccessToken이 올바르지 않습니다.");
  				}
				});
 			});
  		
  		// 카카오 로그인
	  	$('#kakao').on('click', function(e){
	  		Kakao.init('1bc0928a7a681869b51f62debb67182a');
					Kakao.Auth.login({
						success: function(authObj) {
							// 로그인 성공시, API를 호출합니다.
		        	Kakao.API.request({
  		          url: '/v1/user/me',
  		          success: function(res) {
  		            checkUser(res);
  		          },
  		          fail: function(error) {
  		            alert(JSON.stringify(error));
  		          }
		        	});
						},
						fail: function(err) {
	         		alert(JSON.stringify(err));
	 	        }
	 	      });
	  	});
  		
  		// icheck
	  	$('input').iCheck({
        checkboxClass: 'icheckbox_square-blue',
        radioClass: 'iradio_square-blue',
        increaseArea: '20%' // optional
      });
  		
  		// 가입한 회원인지 체크
  		function checkUser(data) {
  			var profileImage = data.properties.profile_image;
  			var thumbnailImage = data.properties.thumbnail_image;
  			
  			if (profileImage == null || profileImage == "" || profileImage == undefined) {
  				profileImage = "N";
  			}
  			if (thumbnailImage == null || thumbnailImage == "" || thumbnailImage == undefined) {
  				thumbnailImage = "N";
  			}
  			
  			console.log(profileImage);
  			console.log(thumbnailImage);
  			
  			var param = {
  					id:data.id,
  					nickname:data.properties.nickname,
  					profileImage: profileImage,
  					thumbnailImage: thumbnailImage
  					}
  			
  			// 데이터 체크
  			for ( var i in data) {
					console.log("key : " + i);
					console.log("val : " + data[i]);
				}
  			
  			$.ajax({
  				type : "get",
  				url : "/user/kakaocheck",
  				data : param,
  				success: function(data){
  					console.log(data);
  					console.log(param);
  					if (data.result == 'success') {
  						// 로그인 처리
  						$("input[name='userNo']").val(data.info.userNo);
  						
  						$("form[action='/user/kakaologin']").submit();
  						
  					}
  					if (data.result == 'fail') {
  						// 회원가입 화면으로 이동
  						self.location = "/user/join/kakao?"+$.param(param);
  					}
  				}
  			});
  		}
  	});
  </script>
  
  <!-- Footer area-->
  <%@include file="../include/bottom.jsp" %>      
</body>
</html>