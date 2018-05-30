package kr.co.udf.user.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.udf.common.util.UploadFileUtils;
import kr.co.udf.user.domain.CompanyDTO;
import kr.co.udf.user.domain.UserDTO;
import kr.co.udf.user.service.UserJoinService;

@RequestMapping("/user/*")
@Controller
public class UserJoinController {

	@Inject
	private UserJoinService service;
	
	private static final Logger logger = Logger.getLogger(UserJoinController.class);
	
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public void join() {}
	
	/**
	 * 일반 사용자 회원가입
	 * @param user
	 */
	@RequestMapping(value="/userjoin", method=RequestMethod.POST)
	public void userjoin(UserDTO user) {
		
		logger.info("userjoin.........");
		logger.info(user.toString());
		
		service.userJoin(user);
	}
	
	/**
	 * 업체 회원가입
	 * @param company
	 * @throws Exception 
	 * @throws IOException 
	 */
	@RequestMapping(value="/companyjoin", method=RequestMethod.POST)
	public String companyjoin(CompanyDTO company) throws IOException, Exception{
		logger.info("companyjoin........");
		logger.info(company);
		
		service.companyJoin(company);
		
		return "/user/success";
	}
	
	@RequestMapping(value="/success", method=RequestMethod.GET)
	public void success() {
		
	}
}
