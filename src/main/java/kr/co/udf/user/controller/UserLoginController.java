package kr.co.udf.user.controller;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.udf.user.domain.Login;
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
	@RequestMapping(value="loginp", method=RequestMethod.POST)
	public void loginPOST(Login login, HttpSession session, Model model) {
		
		logger.info("##### loginPOST start #####");
		logger.info(login);
		// 회원 여부 확인
		HashMap<String, Object> rMap = loginService.login(login);
		
		if (rMap == null || rMap.isEmpty()) {
			return;
		}
		
		logger.info(rMap);
		
		User user = new User();
		
		user.setEmail((String)rMap.get("EMAIL"));
		user.setNo((BigDecimal)rMap.get("NO"));
		user.setPw((String)rMap.get("PW"));
		
		model.addAttribute("user", user);
		model.addAttribute("role", (String)rMap.get("ROLE"));
		
		if (login.isUseCookie()) {
			
			if (((String)rMap.get("ROLE")).equals("admin")) {
				return;
			}
			
			int amount = 60 * 60 * 24 * 7;
			
			Date sessionlimit = new Date(System.currentTimeMillis()+(1000*amount));
			
			loginService.keepLogin(user.getNo(), session.getId(), sessionlimit, (String)rMap.get("ROLE"));
		}
		
		logger.info("##### loginPOST end #####");
		
	} 
}
