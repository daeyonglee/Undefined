package kr.co.udf.company.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.udf.common.company.domain.DressCompany;
import kr.co.udf.company.domain.DressInterest;
import kr.co.udf.company.domain.DressReview;
import kr.co.udf.company.domain.StudioInterest;
import kr.co.udf.company.service.DressInterestService;
import kr.co.udf.company.service.DressService;
import kr.co.udf.user.domain.Login;

@Controller
@RequestMapping("/company/dress/*")
@SessionAttributes("cart2")
public class DressController {
	
	Logger logger = Logger.getLogger(DressController.class);
	
	@Inject
	private DressService service;
	@Inject
	private DressInterestService di;
	
	@RequestMapping(value="/dressDetail", method=RequestMethod.GET)
	public void detailStudio(@RequestParam("dc_no") int dc_no, Model model, HttpSession session) throws Exception {
		model.addAttribute(service.detailDress(dc_no));
		model.addAttribute("count", service.countReview(dc_no));
		if (0 < service.countReview(dc_no)) {
			model.addAttribute("list", service.reviewDress(dc_no));
			model.addAttribute("avg", service.avgPoint(dc_no));
		}
		if (!model.containsAttribute("cart2")) {
			model.addAttribute("cart2", new ArrayList<DressCompany>());
		}
		
		Login login = (Login)session.getAttribute("login");
		String user_nm = login.getNm();
		logger.info(user_nm);
		model.addAttribute("user_nm", user_nm);
	}
	 
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String addCompare(DressCompany dressCompany, @ModelAttribute("cart2") List<DressCompany> cart2, @RequestParam("dc_no") int dc_no) {
		cart2.add(dressCompany);
		return "redirect:/company/dress/dressDetail?dc_no=" + dc_no;
	}
	
	@RequestMapping(value="/remove", method=RequestMethod.POST)
	public String removeCompare(@ModelAttribute("cart2") List<DressCompany> cart2, @RequestParam("dc_nm") String dc_nm, @RequestParam("companyNo") int companyNo, @RequestParam("dc_no") int dc_no) {
		
		Iterator<DressCompany> it = cart2.iterator();
		while(it.hasNext()) {
			DressCompany std = it.next();
			if(std.getDc_no() == companyNo) {
				it.remove();
			}
		}
		return "redirect:/company/dress/dressDetail?dc_no=" + dc_no;
	}

	@RequestMapping(value="/review", method=RequestMethod.POST)
	public String addReview(DressReview dressReview, @RequestParam("dc_no") int dc_no, HttpSession session) throws Exception {
		Login login = (Login) session.getAttribute("login");
		int user_no = login.getNo().intValue();
		dressReview.setUser_no(user_no);
		
		service.addReview(dressReview);
		return "redirect:/company/dress/dressDetail?dc_no="+ dc_no;
	}
	
	@RequestMapping(value = "/interest", method = RequestMethod.POST)
	public String registPOST(DressInterest interest, RedirectAttributes rttr, HttpSession session,
			@RequestParam("dc_no") int dc_no) throws Exception {

		Login login = (Login) session.getAttribute("login");
		int user_no = login.getNo().intValue();
		interest.setUser_no(user_no);
		
		boolean result = true;
		
		List<DressInterest> dressInterest = di.read(user_no);
		Iterator<DressInterest> it = dressInterest.iterator();
		while(it.hasNext()) {
			DressInterest stuInt = it.next();
			if(stuInt.getDc_no() == dc_no) {
				result = false; 
			} 
		} 
		
		if (result == true) {
			di.create(interest);
		}

		return "redirect:/company/dress/dressDetail?dc_no=" + dc_no;
	}
	
	@RequestMapping(value = "/compInterest", method=RequestMethod.POST)
	public String compInterest(DressInterest interest, RedirectAttributes rttr, HttpSession session, Model model,
			@RequestParam("dc_no") int dc_no, @RequestParam("compNo") int compNo) throws Exception {
 
		Login login = (Login) session.getAttribute("login");
		int user_no = login.getNo().intValue();
		interest.setUser_no(user_no);
		
		di.create(interest);
		model.addAttribute("interlist", di.read(user_no));
				
		return "redirect:/company/dress/dressDetail?dc_no="+ compNo;
	}

}
