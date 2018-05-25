package kr.co.udf.auction.controller;


import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.udf.auction.domain.AuctionCount;
import kr.co.udf.auction.service.AuctionCountService;

@Controller
@RequestMapping("/auction/*")
public class AuctionController {

	
	@Inject
	AuctionCountService countService;
	
	@RequestMapping(value="index", method=RequestMethod.GET)
	public String index() {
		return "auction/index";
	}
	
	@RequestMapping(value="apply",method=RequestMethod.GET)
	public String apply() {
		
		return "auction/apply";
		
	} 
	
	@RequestMapping(value="bid",method=RequestMethod.GET)
	public String bid() {
		
		return "auction/bid";
	}
	
	@RequestMapping(value="intro",method=RequestMethod.GET)
	public String intro() {
		
		return "auction/intro";
	}
	
	@RequestMapping(value="submitbid",method=RequestMethod.GET)
	public String submitbid() {
		
		return "auction/submitbid";
	}
	
	@RequestMapping(value="win",method=RequestMethod.GET)
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
