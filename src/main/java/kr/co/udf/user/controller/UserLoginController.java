package kr.co.udf.user.controller;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.WebUtils;

import kr.co.udf.user.domain.Kakao;
import kr.co.udf.user.domain.Login;
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

		login.setNo((BigDecimal)rMap.get("NO"));
		login.setRole((String)rMap.get("ROLE"));
		login.setNm((String)rMap.get("NM"));
		
		model.addAttribute("login", login);
		model.addAttribute("role", (String)rMap.get("ROLE"));
		
		if (login.isUseCookie()) {
			
			if (((String)rMap.get("ROLE")).equals("admin")) {
				return;
			}
			
			int amount = 60 * 60 * 24 * 7;
			
			Date sessionlimit = new Date(System.currentTimeMillis()+(1000*amount));
			
			loginService.keepLogin(login.getNo(), session.getId(), sessionlimit, (String)rMap.get("ROLE"));
		}
		
		logger.info("##### loginPOST end #####");
		
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
		
		Object obj = session.getAttribute("login");
		Object obj2 = session.getAttribute("role");
		
		logger.info(obj);
		logger.info(obj2);
		
		Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
		
		if (obj != null) {
			Login login = (Login)obj;
			session.removeAttribute("login");
			session.invalidate();
			
			logger.info(loginCookie);
			
			loginService.keepLogin(login.getNo(), session.getId(), new Date(), (String)obj2);
			
		}
		
		if (loginCookie != null) {
			loginCookie.setPath("/");
			loginCookie.setMaxAge(0);
			response.addCookie(loginCookie);
		}
		return "redirect:/";
	}
	
	@RequestMapping(value="/user/logincheck", method=RequestMethod.GET)
	public ResponseEntity<Login> logincheck(Login dto) {
		
		ResponseEntity<Login> responseEntity = null;
		Login login = loginService.logincheck(dto);
		
		try {
			if (login != null)
				responseEntity = new ResponseEntity<Login>(login,HttpStatus.OK);
			else
				responseEntity = new ResponseEntity<Login>(HttpStatus.OK);
		} catch(Exception e) {
			e.printStackTrace();
			responseEntity = new ResponseEntity<Login>(HttpStatus.BAD_REQUEST);
		}
		
		return responseEntity;
		
	}
	
	@RequestMapping(value="/user/kakaocheck", method=RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> kakaocheck(Kakao k) {
		
		logger.debug(k);
		
		ResponseEntity<Map<String, Object>> entity = null;
		
		Kakao kakao = loginService.kakaocheck(k);
		logger.debug(kakao);
		
		Map<String, Object> map = new HashMap<>();
		map.put("info", k);
		
		try {
			if (kakao != null) {
				map.put("result", "success");
			} else {
				map.put("result", "fail");
			}
			entity = new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
		} catch(Exception e) {
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping(value="/join/kakao", method=RequestMethod.GET)
	public String kakaojoin(Model model, Kakao kakao) {
		logger.debug(kakao);
		
		model.addAttribute("kakako", kakao);
		
		return "/user/join";
	}
}
