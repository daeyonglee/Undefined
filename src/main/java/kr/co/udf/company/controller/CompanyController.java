package kr.co.udf.company.controller;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.udf.common.company.domain.DressCompany;
import kr.co.udf.common.company.domain.StudioCompany;
import kr.co.udf.company.domain.Criteria;
import kr.co.udf.company.domain.PageMaker;
import kr.co.udf.company.service.StudioService;

@Controller
@RequestMapping("/company/*")
public class CompanyController {
	
	Logger logger = Logger.getLogger(CompanyController.class);
	
	@Inject
	private StudioService service;
	
//	@RequestMapping(value="/studio", method=RequestMethod.GET)
//	public void studio(StudioCompany studio, Model model) throws Exception {
//		logger.info("스튜디오 리스트 GET");
//		model.addAttribute("list", service.listAll());
//	}
	
	@RequestMapping(value="/studio", method=RequestMethod.GET)
	public void studio(Criteria cri, Model model) throws Exception {
		logger.info("스튜디오 페이징 ");
		model.addAttribute("list", service.listCriteria(cri));
		PageMaker pagemaker = new PageMaker();
		pagemaker.setCri(cri);
		pagemaker.setTotalCount(service.countPaging(cri));
		
		model.addAttribute("pageMaker", pagemaker);
	}
	
	
	
	@RequestMapping(value="/dress", method=RequestMethod.GET)
	public void dress(Criteria cri, Model model) throws Exception {
		logger.info("드레스 페이징 ");
		model.addAttribute("list", service.listCriteria(cri));
		PageMaker pagemaker = new PageMaker();
		pagemaker.setCri(cri);
		pagemaker.setTotalCount(service.countPaging(cri));
		
		model.addAttribute("pageMaker", pagemaker);
	}
	
	@RequestMapping(value="/makeup", method=RequestMethod.GET)
	public void makeup(Criteria cri, Model model) throws Exception {
		logger.info("메이크업 페이징 ");
		model.addAttribute("list", service.listCriteria(cri));
		PageMaker pagemaker = new PageMaker();
		pagemaker.setCri(cri);
		pagemaker.setTotalCount(service.countPaging(cri));
		
		model.addAttribute("pageMaker", pagemaker);
	}
	
	
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public void detailGET() {

	}
	
	@RequestMapping(value="/compare", method=RequestMethod.GET)
	public void compareGET() {
		
	}
	
	@RequestMapping(value="/submit", method=RequestMethod.GET)
	public void submitGET() {
		
	}

	

	
	
	
}
