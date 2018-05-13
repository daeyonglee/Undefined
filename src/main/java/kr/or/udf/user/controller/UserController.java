package kr.or.udf.user.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user/*")
public class UserController {

	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String loginGET() {
		return "user/login";
	}
	
}
