package kr.co.udf.company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/company/*")
public class CompanyController {
	
	@RequestMapping(value="/listmap", method=RequestMethod.GET)
	public void listmapGET() {
	
	}
	
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public void detailGET() {

	}
	
	@RequestMapping(value="/compare", method=RequestMethod.GET)
	public void compareGET() {
		
	}

}