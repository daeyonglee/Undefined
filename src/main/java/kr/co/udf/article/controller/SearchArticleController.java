package kr.co.udf.article.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.udf.article.domain.Article;
import kr.co.udf.article.domain.Criteria;
import kr.co.udf.article.domain.PageMaker;
import kr.co.udf.article.domain.SearchCriteria;
import kr.co.udf.article.service.ArticleService;

@Controller
@RequestMapping("/sarticle/*")
public class SearchArticleController {
	private static final Logger logger = Logger.getLogger(SearchArticleController.class);  	
	
	@Inject
	private ArticleService service;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
	    logger.info(cri.toString());
	
	    model.addAttribute("list", service.listSearchCriteria(cri));
	    
	    PageMaker pageMaker = new PageMaker();
	    pageMaker.setCri(cri);
	
	    pageMaker.setTotalCount(service.listSearchCount(cri));
	    
	    model.addAttribute("pageMaker", pageMaker);
	    
	}
	
	   @RequestMapping(value="/list/studio", method=RequestMethod.GET)
	   public ResponseEntity<List<Map<String,Object>>> listStudio(SearchCriteria cri) throws Exception{
	      ResponseEntity<List<Map<String,Object>>> entity = null;
	      logger.debug(cri);
	      
	      List<Map<String,Object>> list = service.listSearchCriteria(cri);
	      
	      cri.setSearchType("studio");
	      
	      PageMaker pageMaker = new PageMaker();
	      pageMaker.setCri(cri);
	      pageMaker.setTotalCount(service.listSearchCount(cri));
	      
	      Map<String, Object> map = new HashMap<>();
	      map.put("list", list);
	      map.put("pageMaker", pageMaker);
	    
	      
	      logger.debug(map);
	      
	      try {
	         entity = new ResponseEntity(map, HttpStatus.OK);
	      } catch(Exception e) {
	         e.printStackTrace();
	         entity = new ResponseEntity(HttpStatus.BAD_REQUEST);
	      }
	      return entity;
	   }
	   
	   @RequestMapping(value="/list/dress", method=RequestMethod.GET)
	   public ResponseEntity<List<Map<String,Object>>> listDress(SearchCriteria cri) throws Exception{
	      ResponseEntity<List<Map<String,Object>>> entity = null;

	      List<Map<String,Object>> list = service.listSearchCriteria(cri);
	      
	      cri.setSearchType("dress");
	      
	      PageMaker pageMaker = new PageMaker();
	      pageMaker.setCri(cri);
	      pageMaker.setTotalCount(service.listSearchCount(cri));
	      
	      Map<String, Object> map = new HashMap<>();
	      map.put("list", list);
	      map.put("pageMaker", pageMaker);
	      
	      try {
	         entity = new ResponseEntity(map, HttpStatus.OK);
	      } catch(Exception e) {
	         e.printStackTrace();
	         entity = new ResponseEntity(HttpStatus.BAD_REQUEST);
	      }
	      return entity;
	   }
	   
	   @RequestMapping(value="/list/makeup", method=RequestMethod.GET)
	   public ResponseEntity<List<Map<String,Object>>> listMakeup(SearchCriteria cri) throws Exception{
	      ResponseEntity<List<Map<String,Object>>> entity = null;

	      List<Map<String,Object>> list = service.listSearchCriteria(cri);
	      
	      cri.setSearchType("makeup");
	      
	      PageMaker pageMaker = new PageMaker();
	      pageMaker.setCri(cri);
	      pageMaker.setTotalCount(service.listSearchCount(cri));
	      
	      Map<String, Object> map = new HashMap<>();
	      map.put("list", list);
	      map.put("pageMaker", pageMaker);
	      
	      try {
	         entity = new ResponseEntity(map, HttpStatus.OK);
	      } catch(Exception e) {
	         e.printStackTrace();
	         entity = new ResponseEntity(HttpStatus.BAD_REQUEST);
	      }
	      return entity;
	   }
	
	
	@RequestMapping(value = "/readPage", method = RequestMethod.GET)
	public void read(@RequestParam("article_no") int article_no, @ModelAttribute("cri") Criteria cri, Model model) throws Exception {
		model.addAttribute("read",service.read(article_no));
	}
	
	@RequestMapping(value = "/removePage", method = RequestMethod.POST)
	public String remove(@RequestParam("article_no") int article_no, SearchCriteria cri, RedirectAttributes rttr) throws Exception {
	    service.remove(article_no);

	    rttr.addAttribute("page", cri.getPage());
	    rttr.addAttribute("perPageNum", cri.getPerPageNum());
	    rttr.addAttribute("searchType", cri.getSearchType());
	    rttr.addAttribute("keyword", cri.getKeyword());
	    
	    rttr.addFlashAttribute("msg", "success");
	
		return "redirect:/sarticle/list?board_no="+cri.getBoard_no();
	}
    
	@RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
	  public void modifyPagingGET(@RequestParam("article_no") int article_no, @ModelAttribute("cri") SearchCriteria cri, Model model)
	      throws Exception {
	    model.addAttribute("read",service.read(article_no));
	}
	
	@RequestMapping(value="/modifyPage", method=RequestMethod.POST)
	public String modifyPagingPost(Article article, 
			SearchCriteria cri,RedirectAttributes rttr)throws Exception{
		service.modify(article);
		
		rttr.addAttribute("page",cri.getPage());
		rttr.addAttribute("perPageNum",cri.getPerPageNum());
		rttr.addAttribute("searchType",cri.getSearchType());
		rttr.addAttribute("keyword",cri.getKeyword());
		rttr.addAttribute("board_no",cri.getBoard_no());
		
		rttr.addFlashAttribute("msg","success");
		
		return "redirect:/sarticle/list?board_no="+cri.getBoard_no();
	}
    
//    @RequestMapping(value = "/listCri", method = RequestMethod.GET)
//    public void listAll(Criteria cri, Model model) throws Exception {
//      logger.info("show list Page with Criteria......................");
//      model.addAttribute("listCri", service.listCriteria(cri));
//    }

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET(Article article, Model model) throws Exception {
		logger.info("register get ...........");
	}
	  
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registPOST(Article article, RedirectAttributes rttr, @RequestParam("board_no") int board_no) throws Exception {
		logger.info("regist post ...........");
		logger.info(article.toString());

		service.regist(article);

		rttr.addFlashAttribute("msg", "success");
		return "redirect:/sarticle/list?board_no="+board_no;
	}

}
