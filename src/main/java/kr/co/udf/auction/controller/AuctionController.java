package kr.co.udf.auction.controller;


import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.udf.auction.domain.Auction;
import kr.co.udf.auction.domain.AuctionCount;
import kr.co.udf.auction.service.AuctionApplyService;
import kr.co.udf.auction.service.AuctionCountService;

@Controller
@RequestMapping("/auction/*")
public class AuctionController {
	
	Logger logger = Logger.getLogger(AuctionController.class);
	
	@Inject
	private AuctionApplyService service;
	
	@Inject
	private AuctionCountService countService;

	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String index() {
		return "auction/index";
	}
	
	@RequestMapping(value="/apply",method=RequestMethod.GET)
	public void form() {
		logger.info("apply form.....");		
	} 
	
	@RequestMapping(value="/apply",method=RequestMethod.POST)
	public String apply(Auction auction, RedirectAttributes rttr) throws Exception {
		logger.info("apply post..... 전달받은 인자 : " + auction);
		service.create(auction);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/auction/bid"; 
		
	} 

	
	@RequestMapping(value="/bid",method=RequestMethod.GET)
	public void bid(Model model) throws Exception {
		logger.info("list get....");
		model.addAttribute("bid", service.listAll());
	}
	
	@RequestMapping(value="/intro",method=RequestMethod.GET)
	public String intro() {
		
		return "auction/intro";
	}
	
	@RequestMapping(value="/submitbid",method=RequestMethod.GET)
	public String submitbid() {
		
		return "auction/submitbid";
	}
	
	@RequestMapping(value="/win",method=RequestMethod.GET)
	public String win() {
		
		return "auction/win";
	}
	
	@RequestMapping(value="count", method=RequestMethod.GET)
	public ResponseEntity<AuctionCount> userCnt() {
		// service 호출해서 dao 가서 데이터 조회
		
		ResponseEntity<AuctionCount> entity = null;
		try {
			entity = new ResponseEntity<>(countService.count(), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}
