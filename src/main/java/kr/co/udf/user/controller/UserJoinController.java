package kr.co.udf.user.controller;

import java.io.IOException;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.udf.user.domain.CompanyDTO;
import kr.co.udf.user.domain.UserDTO;
import kr.co.udf.user.service.UserJoinService;

@RequestMapping("/user/*")
@Controller
public class UserJoinController {

	@Inject
	private UserJoinService joinService;
	
	private static final Logger logger = Logger.getLogger(UserJoinController.class);
	
	@RequestMapping(value="/agree", method=RequestMethod.GET)
	public void agree() {}
	
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public void join() {}
	
	@RequestMapping(value="/userjoin", method=RequestMethod.POST)
	public String userjoin(UserDTO dto) {
		logger.info("userjoin..................");
		logger.info(dto);
		
		joinService.userjoin(dto);
		
		return "/user/success";
		
	}
	
	@RequestMapping(value="/companyjoin", method=RequestMethod.POST)
	public String companyjoin(CompanyDTO dto) throws IOException, Exception {
		logger.info("companyjoin...................");
		logger.info(dto);
		
		joinService.companyjoin(dto);
		
		return "/user/success";
	}
}
