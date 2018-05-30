package kr.co.udf.user.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user/mypage/*")
public class UserMypageController {
	private static Logger logger = Logger.getLogger(UserMypageController.class);
	
	/**
	 * 마이페이지 index
	 */
	@RequestMapping(value="index", method=RequestMethod.GET)
	public String index() {
		logger.info("마이페이지 오픈!");
		return "/user/mypageindex";
		
	}
	
	/**
	 * 마이페이지 >> 내정보관리
	 */
	@RequestMapping(value="my", method=RequestMethod.GET)
	public String my() {
		logger.info("마이페이지-내정보관리!");
		return "/user/my";
		
	}
	
	
	/**
	 * 마이페이지 >> 역경매신청현황
	 */
	@RequestMapping(value="bidlist", method=RequestMethod.GET)
	public String bidList() {
		logger.info("마이페이지-역경매 신청 현황 들어왔숑");
		
		return "/user/bidlist";
	}
	
	/**
	 * 마이페이지 >> 관심업체
	 */
	@RequestMapping(value="interest", method=RequestMethod.GET)
	public String interest() {
		logger.info("마이페이지-관심업체 들어왔숑");
		
		return "/user/interest";
	}
	
	/**
	 * 마이페이지 >> 포인트관리
	 */
	@RequestMapping(value="point", method=RequestMethod.GET)
	public String point() {
		logger.info("마이페이지-포인트관리 들어왔숑");
		
		return "/user/point";
	}	
	

}
