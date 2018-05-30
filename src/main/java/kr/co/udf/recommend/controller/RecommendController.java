package kr.co.udf.recommend.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("recommend")
public class RecommendController {

	@RequestMapping("index")
	public void recommendIndex() {
		
	}
	
	@RequestMapping("option")
	public void recommendOption() {
		
	}
	
	@RequestMapping(value="list", method=RequestMethod.GET)
	public void recommendListGet(HttpServletRequest request, Model model) {
		
	}
	
	@RequestMapping(value="list", method=RequestMethod.POST)
	public void recommendList(HttpServletRequest request, Model model) {
		
	}
}