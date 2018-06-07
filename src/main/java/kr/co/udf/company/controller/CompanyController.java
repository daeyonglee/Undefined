package kr.co.udf.company.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.udf.common.company.domain.StudioCompany;
import kr.co.udf.company.domain.StudioReview;
import kr.co.udf.company.service.StudioService;

@Controller
@RequestMapping("/company/*")
@SessionAttributes("cart")
public class CompanyController {
	
	Logger logger = Logger.getLogger(CompanyController.class);
	
	@Inject
	private StudioService service;
	
	@RequestMapping(value="/compare", method=RequestMethod.GET)
	public void detailStudio(@RequestParam("sc_no") int sc_no, Model model) throws Exception {
		model.addAttribute(service.detailStudio(sc_no));
		model.addAttribute("avg", service.avgPoint(sc_no));
		model.addAttribute("count", service.countReview(sc_no));
		model.addAttribute("list", service.reviewStudio(sc_no));
		if (!model.containsAttribute("cart")) {
			model.addAttribute("cart", new ArrayList<StudioCompany>());
		}
	}
	 
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String addCompare(StudioCompany studioCompany, @ModelAttribute("cart") List<StudioCompany> cart, @RequestParam("sc_no") int sc_no) {
		cart.add(studioCompany);
		return "redirect:/company/compare?sc_no="+ sc_no;
	}

	@RequestMapping(value="/review", method=RequestMethod.POST)
	public String addReview(StudioReview studioReview, @RequestParam("sc_no") int sc_no) throws Exception {
		service.addReview(studioReview);
		return "redirect:/company/compare?sc_no="+ sc_no;
	}
	
}
