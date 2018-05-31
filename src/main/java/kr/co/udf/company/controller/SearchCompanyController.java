package kr.co.udf.company.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.udf.company.domain.PageMaker;
import kr.co.udf.company.domain.SearchCriteria;
import kr.co.udf.company.service.DressService;
import kr.co.udf.company.service.MakeupService;
import kr.co.udf.company.service.StudioService;


@Controller
@RequestMapping("/company/*")
public class SearchCompanyController {

   private static final Logger logger = LoggerFactory.getLogger(SearchCompanyController.class);

   @Inject
   private StudioService ss;
   private DressService ds;
   private MakeupService ms;
   
   //스튜디오 검색 페이징
   @RequestMapping(value = "/slist", method = RequestMethod.GET)
     public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

       logger.info(cri.toString());

       model.addAttribute("list", ss.listSearchCriteria(cri));

       PageMaker pageMaker = new PageMaker();
       pageMaker.setCri(cri);
       pageMaker.setTotalCount(ss.listSearchCount(cri));

       model.addAttribute("pageMaker", pageMaker);
     }
   

}