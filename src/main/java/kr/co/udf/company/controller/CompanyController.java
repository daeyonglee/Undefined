package kr.co.udf.company.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
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

import kr.co.udf.common.company.domain.StudioCompany;
import kr.co.udf.company.domain.StudioInterest;
import kr.co.udf.company.domain.StudioReview;
import kr.co.udf.company.service.StudioInterestService;
import kr.co.udf.company.service.StudioService;
import kr.co.udf.user.domain.Login;

@Controller
@RequestMapping("/company/*")
@SessionAttributes("cart")
public class CompanyController {
	
	Logger logger = Logger.getLogger(CompanyController.class);
	
	@Inject
	private StudioService service;
	@Inject
	private StudioInterestService si;
	
	@RequestMapping(value="/compare", method=RequestMethod.GET)
	public void detailStudio(@RequestParam("sc_no") int sc_no, Model model, HttpSession session) throws Exception {
		model.addAttribute(service.detailStudio(sc_no));
		model.addAttribute("count", service.countReview(sc_no));
		if (0 < service.countReview(sc_no)) {
			model.addAttribute("list", service.reviewStudio(sc_no));
			model.addAttribute("avg", service.avgPoint(sc_no));
		}
		if (0 < service.countProduct(sc_no)) {
			model.addAttribute("countProduct", service.countProduct(sc_no));
			model.addAttribute("avgPrice", service.avgPrice(sc_no));
		}
		if (!model.containsAttribute("cart")) {
			model.addAttribute("cart", new ArrayList<StudioCompany>());
		}
		
		Login login = (Login)session.getAttribute("login");
		String user_nm = login.getNm();
		model.addAttribute("user_nm", user_nm);
	}
	 
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String addCompare(StudioCompany studioCompany, @ModelAttribute("cart") List<StudioCompany> cart, @RequestParam("sc_no") int sc_no) {
		cart.add(studioCompany);
		return "redirect:/company/compare?sc_no=" + sc_no;
	}
	
	@RequestMapping(value="/remove", method=RequestMethod.POST)
	public String removeCompare(@ModelAttribute("cart") List<StudioCompany> cart, @RequestParam("sc_nm") String sc_nm, @RequestParam("companyNo") int companyNo, @RequestParam("sc_no") int sc_no) {
		
		Iterator<StudioCompany> it = cart.iterator();
		while(it.hasNext()) {
			StudioCompany std = it.next();
			if(std.getSc_no() == companyNo) {
				it.remove();
			}
		}
		return "redirect:/company/compare?sc_no=" + sc_no;
	}

	@RequestMapping(value="/review", method=RequestMethod.POST)
	public String addReview(StudioReview studioReview, @RequestParam("sc_no") int sc_no, HttpSession session) throws Exception {
		Login login = (Login) session.getAttribute("login");
		int user_no = login.getNo().intValue();
		studioReview.setUser_no(user_no);
		
		service.addReview(studioReview);
		return "redirect:/company/compare?sc_no="+ sc_no;
	}
	
	@RequestMapping(value = "/interest", method = RequestMethod.POST)
	public String registPOST(StudioInterest interest, RedirectAttributes rttr, HttpSession session, HttpServletResponse response,
	@RequestParam("sc_no") int sc_no, Model model) throws Exception {

		Login login = (Login) session.getAttribute("login");
		int user_no = login.getNo().intValue();
		interest.setUser_no(user_no);
		
		boolean result = true;
				
		List<StudioInterest> studioInterest = si.read(user_no);
		Iterator<StudioInterest> it = studioInterest.iterator();
		while(it.hasNext()) {
			StudioInterest stuInt = it.next();
			if(stuInt.getSc_no() == sc_no) {
				result = false; 
			} 
		} 
		
		if (result == true) {
			si.create(interest);
		}

		return "redirect:/company/compare?sc_no=" + sc_no;
		
	}
	
	@RequestMapping(value = "/compInterest", method=RequestMethod.POST)
	public String compInterest(StudioInterest interest, RedirectAttributes rttr, HttpSession session, Model model,
	@RequestParam("sc_no") int sc_no, @RequestParam("compNo") int compNo) throws Exception {
 
		Login login = (Login) session.getAttribute("login");
		int user_no = login.getNo().intValue();
		interest.setUser_no(user_no);
		
		boolean result = true;
		
		List<StudioInterest> studioInterest = si.read(user_no);
		Iterator<StudioInterest> it = studioInterest.iterator();
		while(it.hasNext()) {
			StudioInterest stuInt = it.next();
			if(stuInt.getSc_no() == sc_no) {
				result = false; 
			} 
		} 
		
		if (result == true) {
			si.create(interest);
		}
		
		model.addAttribute("interlist", si.read(user_no));
				
		return "redirect:/user/mypage/myinterest";
	}

}
