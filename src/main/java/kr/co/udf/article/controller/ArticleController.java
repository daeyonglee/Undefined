package kr.co.udf.article.controller;


import javax.inject.Inject;

import org.apache.log4j.Logger;
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
import kr.co.udf.article.service.ArticleService;

@Controller
@RequestMapping("/article/*")
public class ArticleController {
	private static final Logger logger = Logger.getLogger(ArticleController.class);  	
	
	@Inject
	private ArticleService service;
	
	@RequestMapping(value = "/listAll", method = RequestMethod.GET)
	public void listAll(Model model,Integer board_no) throws Exception {
		logger.info("show all list......................");
		model.addAttribute("listAll", service.listAll(board_no));
	}
	
    @RequestMapping(value = "/listCri", method = RequestMethod.GET)
    public void listAll(Criteria cri, Model model) throws Exception {
      logger.info("show list Page with Criteria......................");
      model.addAttribute("listCri", service.listCriteria(cri));
    }

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET(Article article, Model model) throws Exception {
		logger.info("register get ...........");
	}
	  
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registPOST(Article article, RedirectAttributes rttr) throws Exception {
		logger.info("regist post ...........");
		logger.info(article.toString());

		service.regist(article);

		rttr.addFlashAttribute("msg", "success");
		return "redirect:/article/listPage?board_no=1";
	}

//	@RequestMapping(value = "/read", method = RequestMethod.GET)
//	public void read(@RequestParam("article_no") int article_no, Model model) throws Exception {
//		model.addAttribute("read", service.read(article_no));
//	}
	
	@RequestMapping(value = "/readPage", method = RequestMethod.GET)
	public void read(@RequestParam("article_no") int article_no, @ModelAttribute("cri") Criteria cri, Model model) throws Exception {
	
		model.addAttribute("read",service.read(article_no));
	}
  
	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String remove(@RequestParam("article_no") int article_no, RedirectAttributes rttr) throws Exception {
		service.remove(article_no);
		rttr.addFlashAttribute("msg", "success");
		return "redirect:/article/listAll?board_no=1";
	}
	
	@RequestMapping(value = "/removePage", method = RequestMethod.POST)
	public String remove(@RequestParam("article_no") int article_no, Criteria cri, RedirectAttributes rttr) throws Exception {
	    service.remove(article_no);

	    rttr.addAttribute("page", cri.getPage());
	    rttr.addAttribute("perPageNum", cri.getPerPageNum());
	    rttr.addFlashAttribute("msg", "success");
	
	    return "redirect:/article/listPage";
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modifyGET(int article_no, Model model) throws Exception {
		model.addAttribute("read",service.read(article_no));
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPOST(Article article, RedirectAttributes rttr) throws Exception {
		logger.info("mod post............");
		
		service.modify(article);
		rttr.addFlashAttribute("msg", "success");

		return "redirect:/article/listAll?board_no=1";
	}
	
	@RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
	  public void modifyPagingGET(@RequestParam("article_no") int article_no, @ModelAttribute("cri") Criteria cri, Model model)
	      throws Exception {
	    model.addAttribute("read",service.read(article_no));
	}
	
	@RequestMapping(value="/modifyPage", method=RequestMethod.POST)
	public String modifyPagingPost(Article article, 
			Criteria cri,RedirectAttributes rttr)throws Exception{
		service.modify(article);
		
		rttr.addAttribute("page",cri.getPage());
		rttr.addAttribute("perPageNum",cri.getPerPageNum());
		rttr.addAttribute("board_no",cri.getBoard_no());
		
		rttr.addFlashAttribute("msg","success");
		
		return "redirect:/article/listPage";
	}
	
	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") Criteria cri, Model model) throws Exception {
	    logger.info(cri.toString());
	
	    model.addAttribute("listPage", service.listCriteria(cri));
	    PageMaker pageMaker = new PageMaker();
	    pageMaker.setCri(cri);
	
	    pageMaker.setTotalCount(service.listCountCriteria(cri));
	    model.addAttribute("pageMaker", pageMaker);
	}
}
