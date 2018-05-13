<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../include/top.jsp" %>
<%@include file="../include/loginAPI.jspf" %>
<link rel="stylesheet" href="/resources/assets/css/user/login.css">
<body>
  <div class="page-head"> 
      <div class="container">
          <div class="row">
              <div class="page-head-content">
                  <h1 class="page-title">Home New account / Sign in </h1>               
              </div>
          </div>
      </div>
  </div>
  <!-- End page header -->
  
  <!-- register-area -->
	<div class="register-area" style="background-color: rgb(249, 249, 249);">
		<div class="container">
			<div class="col-md-12">
				<div class="col-md-6 register-content">
					<div class="box-for overflow">                         
						<div class="col-md-12 col-xs-12 login-blocks">
							<h2>Login : </h2> 
							<form action="" method="post">
								<div class="form-group">
									<label for="email">Email</label>
									<input type="text" class="form-control" id="email">
								</div>
								<div class="form-group">
									<label for="password">Password</label>
									<input type="password" class="form-control" id="password">
								</div>
								<div class="text-center">
									<button type="submit" class="btn btn-default btn-login"> Log in</button>
								</div>
							</form>
							<br>
           
							<h2>Social login :  </h2> 
           
							<p>
							<a id="facebook" class="login-social" href="#"><i class="fa fa-facebook"></i>&nbsp;</a> 
							<a id="google" class="login-social" href="#"><i class="fa fa-google-plus"></i>&nbsp;</a> 
							<a id="twitter" class="login-social" href="#"><i class="fa fa-twitter"></i>&nbsp;</a>
							<a id="naver" class="login-social" href="#"><i class="fa"><b>N</b></i>&nbsp;</a>
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
	  		Kakao.init('8cf547c17ecd2ac1e0269a8ace8f1cb4');
					Kakao.Auth.login({
						success: function(authObj) {
							// 로그인 성공시, API를 호출합니다.
		        	Kakao.API.request({
		          url: '/v1/user/me',
		          success: function(res) {
		            alert(JSON.stringify(res));
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
  	});
  </script>
  
  <!-- Footer area-->
  <%@include file="../include/bottom.jsp" %>      
</body>
</html>