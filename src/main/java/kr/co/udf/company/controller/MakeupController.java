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

import kr.co.udf.common.company.domain.MakeupCompany;
import kr.co.udf.company.domain.MakeupInterest;
import kr.co.udf.company.domain.MakeupReview;
import kr.co.udf.company.domain.StudioInterest;
import kr.co.udf.company.service.MakeupInterestService;
import kr.co.udf.company.service.MakeupService;
import kr.co.udf.user.domain.Login;

@Controller
@RequestMapping("/company/makeup/*")
@SessionAttributes("cart3")
public class MakeupController {
	
	Logger logger = Logger.getLogger(MakeupController.class);
	
	@Inject
	private MakeupService service;
	@Inject
	private MakeupInterestService mi;
	
	@RequestMapping(value="/makeupDetail", method=RequestMethod.GET)
	public void detailMakeup(@RequestParam("mc_no") int mc_no, Model model, HttpSession session) throws Exception {
		model.addAttribute(service.detailMakeup(mc_no));
		model.addAttribute("pmg", service.productImg(mc_no));
		model.addAttribute("count", service.countReview(mc_no));
		if (0 < service.countReview(mc_no)) {
			model.addAttribute("list", service.reviewMakeup(mc_no));
			model.addAttribute("avg", service.avgPoint(mc_no));
		}
		if (0 < service.countProduct(mc_no)) {
			model.addAttribute("countProduct", service.countProduct(mc_no));
			model.addAttribute("avgPrice", service.avgPrice(mc_no));
		}
		if (!model.containsAttribute("cart3")) {
			model.addAttribute("cart3", new ArrayList<MakeupCompany>());
		}
		
		Login login = (Login)session.getAttribute("login");
		String user_nm = login.getNm();
		logger.info(user_nm);
		model.addAttribute("user_nm", user_nm);
	}
	 
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String addmakeupDetail(MakeupCompany makeupCompany, @ModelAttribute("cart3") List<MakeupCompany> cart3, @RequestParam("mc_no") int mc_no) {
		cart3.add(makeupCompany);
		return "redirect:/company/makeup/makeupDetail?mc_no=" + mc_no;
	}
	
	@RequestMapping(value="/remove", method=RequestMethod.POST)
	public String removemakeupDetail(@ModelAttribute("cart3") List<MakeupCompany> cart3, @RequestParam("mc_nm") String mc_nm, @RequestParam("companyNo") int companyNo, @RequestParam("mc_no") int mc_no) {
		
		Iterator<MakeupCompany> it = cart3.iterator();
		while(it.hasNext()) {
			MakeupCompany std = it.next();
			if(std.getMc_no() == companyNo) {
				it.remove();
			}
		}
		return "redirect:/company/makeup/makeupDetail?mc_no=" + mc_no;
	}

	@RequestMapping(value="/review", method=RequestMethod.POST)
	public String addReview(MakeupReview makeupReview, @RequestParam("mc_no") int mc_no, HttpSession session) throws Exception {
		Login login = (Login) session.getAttribute("login");
		int user_no = login.getNo().intValue();
		makeupReview.setUser_no(user_no);
		
		service.addReview(makeupReview);
		return "redirect:/company/makeup/makeupDetail?mc_no="+ mc_no;
	}
	
	@RequestMapping(value = "/interest", method = RequestMethod.POST)
	public String registPOST(MakeupInterest interest, RedirectAttributes rttr, HttpSession session,
			@RequestParam("mc_no") int mc_no) throws Exception {

		Login login = (Login) session.getAttribute("login");
		int user_no = login.getNo().intValue();
		interest.setUser_no(user_no);
		
		boolean result = true;
		
		List<MakeupInterest> makeupInterest = mi.read(user_no);
		Iterator<MakeupInterest> it = makeupInterest.iterator();
		while(it.hasNext()) {
			MakeupInterest stuInt = it.next();
			if(stuInt.getMc_no() == mc_no) {
				result = false; 
			} 
		} 
		
		if (result == true) {
			mi.create(interest);
		}
		

		return "redirect:/company/makeup/makeupDetail?mc_no=" + mc_no;
	}
	
	@RequestMapping(value = "/compInterest", method=RequestMethod.POST)
	public String compInterest(MakeupInterest interest, RedirectAttributes rttr, HttpSession session, Model model,
			@RequestParam("mc_no") int mc_no, @RequestParam("compNo") int compNo) throws Exception {
 
		Login login = (Login) session.getAttribute("login");
		int user_no = login.getNo().intValue();
		interest.setUser_no(user_no);
		
		boolean result = true;
		
		List<MakeupInterest> makeupInterest = mi.read(user_no);
		Iterator<MakeupInterest> it = makeupInterest.iterator();
		while(it.hasNext()) {
			MakeupInterest stuInt = it.next();
			if(stuInt.getMc_no() == mc_no) {
				result = false; 
			} 
		} 
		
		if (result == true) {
			mi.create(interest);
		}
		
		model.addAttribute("interlist", mi.read(user_no));
				
		return "redirect:/user/mypage/mkinterest";
	}

}
