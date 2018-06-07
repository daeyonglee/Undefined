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

	@RequestMapping(value="/studio", method=RequestMethod.GET)
	public void listStudio(StudioCompany studio, Model model) throws Exception {
		logger.info("스튜디오 리스트 GET");
		model.addAttribute("list", service.listStudio());
	}
	
	@RequestMapping(value="/compare", method=RequestMethod.GET)
	public void detailStudio(@RequestParam("companyNo") int companyNo, Model model) throws Exception {
		model.addAttribute(service.detailStudio(companyNo));
		model.addAttribute("avg", service.avgPoint(companyNo));
		model.addAttribute("count", service.countReview(companyNo));
		model.addAttribute("list", service.reviewStudio(companyNo));
		if (!model.containsAttribute("cart")) {
			model.addAttribute("cart", new ArrayList<StudioCompany>());
		}
	}
	 
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String addCompare(StudioCompany studioCompany, @ModelAttribute("cart") List<StudioCompany> cart, @RequestParam("companyNo") int companyNo) {
		cart.add(studioCompany);
		return "redirect:/company/compare?companyNo="+ companyNo;
	}

	@RequestMapping(value="/review", method=RequestMethod.POST)
	public String addReview(StudioReview studioReview, @RequestParam("companyNo") int companyNo) throws Exception {
		service.addReview(studioReview);
		return "redirect:/company/compare?companyNo="+ companyNo;
	}
	
}
