package kr.co.udf.user.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.udf.common.util.UploadFileUtils;
import kr.co.udf.user.domain.CompanyDTO;
import kr.co.udf.user.domain.Kakao;
import kr.co.udf.user.domain.Login;
import kr.co.udf.user.domain.User;
import kr.co.udf.user.domain.UserDTO;
import kr.co.udf.user.service.UserJoinService;

@RequestMapping("/user/*")
@Controller
public class UserJoinController {

	@Inject
	private UserJoinService joinService;
	
	private static final Logger logger = Logger.getLogger(UserJoinController.class);
	
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
	
	@RequestMapping(value="/emailcheck", method=RequestMethod.GET)
	public ResponseEntity<Login> emailcheck(Login login) {
		
		ResponseEntity<Login> entity = null;
		logger.debug(login);
		try {
			entity = new ResponseEntity<Login>(joinService.emailcheck(login), HttpStatus.OK);
		} catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Login>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
		
	}
	
	@RequestMapping(value="/join/kakao", method=RequestMethod.GET)
	public String kakaojoin(Model model, Kakao kakao) {
		logger.debug(kakao);
		
		model.addAttribute("kakako", kakao);
		
		return "/user/join";
	}
	
	@Transactional
	@RequestMapping(value="/user/kakaojoin", method=RequestMethod.POST)
	public String kakaojoinPOST(Kakao kakao, UserDTO dto) {
		logger.info("kakaojoinPOST..................");
		logger.info(dto);
		logger.info(kakao);
		
		joinService.userjoin(dto);
		User user = joinService.userSelect(dto);
		kakao.setUserNo(user.getNo());
		joinService.kakaojoin(kakao);
		
		
		return "/user/success";
	}
}
