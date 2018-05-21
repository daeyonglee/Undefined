package kr.co.udf.user.controller;

import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.udf.user.domain.User;
import kr.co.udf.user.service.UserLoginService;

@Controller
@RequestMapping("/user/*")
public class UserLoginController {

	private static Logger logger = Logger.getLogger(UserLoginController.class);
	
	@Inject
	UserLoginService loginService;
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public void loginGET() {
	}
	
	/**
	 * 일반 사용자 login 처리
	 * @param users
	 * @param model 
	 * @return
	 */
	@RequestMapping(value="login", method=RequestMethod.POST)
	public void loginPOST(User user, @RequestParam("useCookie") boolean isUseCookie,
			              HttpSession session, Model model) {
		
		logger.info("##### loginPOST start #####");
		
		// 회원 여부 확인
		User isUser = loginService.login(user);
		
		if (isUser == null) {
			return;
		}
		
		model.addAttribute("user", isUser);
		
		if (isUseCookie) {
			
			int amount = 60 * 60 * 24 * 7;
			
			Date sessionlimit = new Date(System.currentTimeMillis()+(1000*amount));
			
			loginService.keepLogin(isUser.getNo(), session.getId(), sessionlimit);
		}
		
		logger.info("##### loginPOST end #####");
		
	} 
	
}
