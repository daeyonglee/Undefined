package kr.co.udf.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("/user/*")
@Controller
public class UserJoinController {

	@RequestMapping(value="/agree", method=RequestMethod.GET)
	public void agree() {}
	
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public void join() {}
	
}
