package kr.co.udf.board.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/sboard/*")
public class BoardController {

  private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

  @RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listPage() throws Exception {
	  return "/sboard/list";
	}
  
  @RequestMapping(value = "/readPage", method = RequestMethod.GET)
	public String readPage() throws Exception {
	  return "/sboard/readPage";
	}
}
