package kr.co.udf.recommend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("recommend")
public class RecommendController {

	@RequestMapping("index")
	public void recommendIndex() {
		
	}
	
	@RequestMapping(value="list", method=RequestMethod.GET)
	public void recommendList() {
		
	}
}
