package kr.co.udf.auction.controller;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.udf.auction.domain.Auction;
import kr.co.udf.auction.domain.AuctionBid;
import kr.co.udf.auction.service.AuctionApplyService;
import kr.co.udf.auction.service.MypageBidService;
import kr.co.udf.common.web.PageMaker;
import kr.co.udf.common.web.SearchParams;
import kr.co.udf.user.domain.User;

@Controller
@RequestMapping("/mypage/auction/*")
public class MypageBidController {

	Logger logger = Logger.getLogger(MypageBidController.class);

	@Inject
	private MypageBidService service;
	
	/** 마이페이지 - 나의 신청서 리스트 조회 */
	@RequestMapping(value = "/apply", method = RequestMethod.GET)
	public String applyList(SearchParams params, HttpSession session, Model model) throws Exception {
		
		User user = (User)session.getAttribute("login");
		int userNo = user.getNo().intValue();
		logger.info(userNo);
		
		model.addAttribute("applyList", service.applyListByUser(userNo));
		
		return "/mypage/apply";

	}
	
	/** 마이페이지 - 나의 낙찰된 신청서 리스트 조회 */
	@RequestMapping(value="/win", method=RequestMethod.GET)
	public String winList(HttpSession session, Model model) throws Exception{
		
		User user = (User)session.getAttribute("login");
		
		int userNo = user.getNo().intValue();
		logger.info(userNo);
		
		model.addAttribute("winList", service.winListByUser(userNo));
		
		return "/mypage/win";
	}
	
	/** 마이페이지 - 입찰중 or 낙찰대기중인 신청서의 입찰서 리스트 조회 */
	@RequestMapping(value="/bidlist", method=RequestMethod.GET)
	public String bidList(@RequestParam("applyNo") int applyNo, @RequestParam("type") String type, HttpSession session, Model model) throws Exception{
		
		User user = (User)session.getAttribute("login");
		int userNo = user.getNo().intValue();
		logger.info(userNo);
		
		List<AuctionBid> bid = service.bidListByUser(userNo, applyNo, type);
		logger.info(bid);
		
		model.addAttribute("bidList", bid);
		
		return "/mypage/bidlist";
	}
	
	/** 마이페이지 - 입찰중 or 낙찰대기중인 신청서 상세 조회 */
	@RequestMapping(value="/bid/read", method=RequestMethod.GET)
	public String readBid(@RequestParam("applyNo") int applyNo, @RequestParam("type") String type, HttpSession session, Model model) throws Exception {
		
		User user = (User)session.getAttribute("login");
		int userNo = user.getNo().intValue();
		logger.info(userNo);
		
		AuctionBid bid = service.readBid(userNo, applyNo, type);
		logger.info(bid);
		
		model.addAttribute("bid", bid);
		
		return "/mypage/bidread";
	}

}
