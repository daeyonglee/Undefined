package kr.co.udf.company.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import kr.co.udf.company.service.DressInterestService;
import kr.co.udf.company.service.MakeupInterestService;
import kr.co.udf.company.service.StudioInterestService;
import kr.co.udf.user.domain.Login;

@Controller
@RequestMapping("/user/mypage/*")
public class InterestController {
	private static final Logger logger = Logger.getLogger(InterestController.class);  	
	

	@Inject
	private StudioInterestService service;
	@Inject
	private DressInterestService ds;
	@Inject
	private MakeupInterestService ms;
	
	/** 스튜디오 관심업체 컨트롤러 */
	@RequestMapping(value = "/myinterest", method = RequestMethod.GET)
	public String read(Model model, HttpSession session) throws Exception {
		
		Login login = (Login)session.getAttribute("login");
		int user_no = login.getNo().intValue();
		logger.info(user_no);
		
		model.addAttribute("interlist", service.read(user_no));
		
		return "company/myinterest";
	}
	
	@RequestMapping(value = "/myinterest/remove", method = RequestMethod.GET)	 	
	public String delete(@RequestParam("sic_no") int sic_no, RedirectAttributes rttr) throws Exception {		
		service.delete(sic_no);

		rttr.addFlashAttribute("msg", "삭제되었습니다.");
	    return "redirect:/user/mypage/myinterest";
	}
	
	/** 드레스 컨트롤러*/
	@RequestMapping(value = "/dsinterest", method = RequestMethod.GET)
	public String dsread(Model model, HttpSession session) throws Exception {
		
		Login login = (Login)session.getAttribute("login");
		int user_no = login.getNo().intValue();
		logger.info(user_no);
		
		model.addAttribute("interlist", ds.read(user_no));
		
		return "company/dsinterest";
	}
	
	@RequestMapping(value = "/dsinterest/remove", method = RequestMethod.GET)	 	
	public String dsdelete(@RequestParam("dic_no") int dic_no, RedirectAttributes rttr) throws Exception {		
		ds.delete(dic_no);

		rttr.addFlashAttribute("msg", "삭제되었습니다.");
	    return "redirect:/user/mypage/dsinterest";
	}
	
	
	/** 메이크업 컨트롤러 */
	@RequestMapping(value = "/mkinterest", method = RequestMethod.GET)
	public String msread(Model model, HttpSession session) throws Exception {
		
		Login login = (Login)session.getAttribute("login");
		int user_no = login.getNo().intValue();
		logger.info(user_no);
		
		model.addAttribute("interlist", ms.read(user_no));
		
		return "company/mkinterest";
	}
	
	@RequestMapping(value = "/mkinterest/remove", method = RequestMethod.GET)	 	
	public String msdelete(@RequestParam("mic_no") int mic_no, RedirectAttributes rttr) throws Exception {		
		ms.delete(mic_no);

		rttr.addFlashAttribute("msg", "삭제되었습니다.");
	    return "redirect:/user/mypage/mkinterest";
	}
	

	
}
