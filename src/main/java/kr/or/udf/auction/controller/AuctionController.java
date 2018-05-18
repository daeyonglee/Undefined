package kr.or.udf.auction.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/auction/*")
public class AuctionController {

	
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
}
