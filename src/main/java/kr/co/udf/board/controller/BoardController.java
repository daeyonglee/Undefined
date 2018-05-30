package kr.co.udf.board.controller;


import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.udf.board.BoardDaoTest;
import kr.co.udf.board.service.BoardService;


@Controller
@RequestMapping("/board/*")
public class BoardController {

private static final Logger logger = Logger.getLogger(BoardController.class);  	
  @Inject
  private BoardService service;
  
//  	@RequestMapping(value="/listAll", method=RequestMethod.GET)
//  	public void listAll() {
//  		//return "/board/listAll";
//  	}
//
//	@RequestMapping(value="/listAll1", method=RequestMethod.GET)
//  	public String listAll1() {
//  		return "/board/listAll1";
//  	}
//	
//	@RequestMapping(value="/register", method=RequestMethod.GET)
//  	public String register() {
//  		
//  		return "/board/register";
//  	}
//  
//	@RequestMapping(value="/success", method=RequestMethod.GET)
//  	public String success() {
//  		
//  		return "/board/success";
//  	}
//	
//	@RequestMapping(value="/read", method=RequestMethod.GET)
//  	public String read() {
//  		
//  		return "/board/read";
//  	}
//	
//	@RequestMapping(value="/modify", method=RequestMethod.GET)
//  	public String modify() {
//  		
//  		return "/board/modify";
//  	}
//	
//	@RequestMapping(value="/modifyPage", method=RequestMethod.GET)
//  	public String modifyPage() {
//  		
//  		return "/board/modifyPage";
//  	}
//	
//  @RequestMapping(value = "/listCri", method = RequestMethod.GET)
//	public String listAllcri() throws Exception {
//		
//		return "/board/listAllcri";
//	}
//
//  @RequestMapping(value = "/listPage", method = RequestMethod.GET)
//  public String listPage() throws Exception {
//		
//		return "/board/listPage";
//  }
	
//  @Inject
//  private BoardService service;
//
//  @RequestMapping(value = "/register", method = RequestMethod.GET)
//  public void registerGET(Board board, Model model) throws Exception {
//
//    logger.info("register get ...........");
//  }

  // @RequestMapping(value = "/register", method = RequestMethod.POST)
  // public String registPOST(Board board, Model model) throws Exception {
  //
  // logger.info("regist post ...........");
  // logger.info(board.toString());
  //
  // service.regist(board);
  //
  // model.addAttribute("result", "success");
  //
  // //return "/board/success";
  // return "redirect:/board/listAll";
  // }

//  @RequestMapping(value = "/register", method = RequestMethod.POST)
//  public String registPOST(Board board, RedirectAttributes rttr) throws Exception {
//
//    logger.info("regist post ...........");
//    logger.info(board.toString());
//
//    service.regist(board);
//
//    rttr.addFlashAttribute("msg", "success");
//    return "redirect:/board/listAll";
//  }
//
//  @RequestMapping(value = "/listAll", method = RequestMethod.GET)
//  public void listAll(Model model) throws Exception {
//
//    logger.info("show all list......................");
//    model.addAttribute("list", service.listAll());
//  }
//
//  @RequestMapping(value = "/read", method = RequestMethod.GET)
//  public void read(@RequestParam("bno") int bno, Model model) throws Exception {
//
//    model.addAttribute(service.read(bno));
//  }
//
//  @RequestMapping(value = "/remove", method = RequestMethod.POST)
//  public String remove(@RequestParam("bno") int bno, RedirectAttributes rttr) throws Exception {
//
//    service.remove(bno);
//
//    rttr.addFlashAttribute("msg", "SUCCESS");
//
//    return "redirect:/board/listAll";
//  }
//
//  @RequestMapping(value = "/modify", method = RequestMethod.GET)
//  public void modifyGET(int bno, Model model) throws Exception {
//
//    model.addAttribute(service.read(bno));
//  }
//
//  @RequestMapping(value = "/modify", method = RequestMethod.POST)
//  public String modifyPOST(Board board, RedirectAttributes rttr) throws Exception {
//
//    logger.info("mod post............");
//
//    service.modify(board);
//    rttr.addFlashAttribute("msg", "SUCCESS");
//
//    return "redirect:/board/listAll";
//  }

//  @RequestMapping(value = "/listCri", method = RequestMethod.GET)
//  public void listAll(Criteria cri, Model model) throws Exception {
//
//    logger.info("show list Page with Criteria......................");
//
//    model.addAttribute("list", service.listCriteria(cri));
//  }
//
//  @RequestMapping(value = "/listPage", method = RequestMethod.GET)
//  public void listPage(@ModelAttribute("cri") Criteria cri, Model model) throws Exception {
//
//    logger.info(cri.toString());
//
//    model.addAttribute("list", service.listCriteria(cri));
//    PageMaker pageMaker = new PageMaker();
//    pageMaker.setCri(cri);
//    // pageMaker.setTotalCount(131);
//
//    pageMaker.setTotalCount(service.listCountCriteria(cri));
//
//    model.addAttribute("pageMaker", pageMaker);
//  }
//
//  @RequestMapping(value = "/readPage", method = RequestMethod.GET)
//  public void read(@RequestParam("bno") int bno, @ModelAttribute("cri") Criteria cri, Model model) throws Exception {
//
//    model.addAttribute(service.read(bno));
//  }
//
//  @RequestMapping(value = "/removePage", method = RequestMethod.POST)
//  public String remove(@RequestParam("bno") int bno, Criteria cri, RedirectAttributes rttr) throws Exception {
//
//    service.remove(bno);
//
//    rttr.addAttribute("page", cri.getPage());
//    rttr.addAttribute("perPageNum", cri.getPerPageNum());
//    rttr.addFlashAttribute("msg", "SUCCESS");
//
//    return "redirect:/board/listPage";
//  }
//
//  @RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
//  public void modifyPagingGET(@RequestParam("bno") int bno, @ModelAttribute("cri") Criteria cri, Model model)
//      throws Exception {
//
//    model.addAttribute(service.read(bno));
//  }

}
