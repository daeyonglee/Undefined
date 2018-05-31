package kr.co.udf.auction.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.util.JSONPObject;

import kr.co.udf.auction.domain.Auction;
import kr.co.udf.auction.domain.AuctionCount;
import kr.co.udf.auction.service.AuctionApplyService;
import kr.co.udf.auction.service.AuctionCountService;
import kr.co.udf.common.web.PageMaker;
import kr.co.udf.common.web.SearchParams;
import kr.co.udf.user.domain.Login;
import kr.co.udf.user.domain.User;

@Controller
@RequestMapping("/auction/*")
public class AuctionController {

	Logger logger = Logger.getLogger(AuctionController.class);

	@Inject
	private AuctionApplyService service;

	@Inject
	private AuctionCountService countService;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "auction/index";
	}

	@RequestMapping(value = "/apply", method = RequestMethod.GET)
	public void form() {
		logger.info("apply form.....");
	}
	
	// 상세보기	
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(@RequestParam("no") int no, @RequestParam("type")String type, Model model) throws Exception {
				
		model.addAttribute("Auction",service.read(no,type));				
		
	}
	
	// 삭제
	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String delete(@RequestParam("no") int no, @RequestParam("type") String type, RedirectAttributes rttr) throws Exception {
				
		service.delete(no, type);
		
		rttr.addFlashAttribute("");
		
		return "redirect:/auction/bid";
		
	}
	
	/** 스드메 카테고리 별로 신청서 등록하기*/

	@RequestMapping(value = "/apply", method = RequestMethod.POST)
	public String apply(@RequestParam("type") String type, Auction auction, HttpSession session, RedirectAttributes rttr) throws Exception {
		
		logger.info("apply post 진입");
		User user = (User)session.getAttribute("login");
		logger.info(user);
		
		auction.setUserNo(user.getNo());
		auction.setDate(auction.getDay() + " " + auction.getTime());
		auction.setLoc(auction.getLocFirst() + "||" + auction.getLocSecond() + "||" +  auction.getLocThird());

		if (type.equals("dress")) {

			logger.info("apply post..... 전달받은 인자 : " + auction);
			service.createDress(auction);
			
		} else if (type.equals("studio")) {

			logger.info("apply post..... 전달받은 인자 : " + auction);
			service.createStudio(auction);

		} else if (type.equals("makeup")) {
			logger.info("apply post..... 전달받은 인자 : " + auction);
			service.createMakeup(auction);

		}			

		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/auction/bid";

	} 
	/*
	 * @RequestMapping(value="/bid",method=RequestMethod.GET) public void
	 * bid(SearchParams params, Model model) throws Exception {
	 * logger.info("listPage get...."); model.addAttribute("bid",
	 * service.listParams(params)); }
	 */

	@RequestMapping(value = "/bid", method = RequestMethod.GET)
	public void bid(@ModelAttribute("parmas") SearchParams params, Model model) throws Exception {
		logger.info("listParams get...." + params.toString());

		model.addAttribute("list", service.listParams(params));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setParams(params);
		pageMaker.setTotalCount(service.listByTypeCount());
		logger.info(pageMaker.toString());

		model.addAttribute("pageMaker", pageMaker);
	}

	@RequestMapping(value = "/bid/studio", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody ResponseEntity<List<JSONPObject>> studioApplyList(
			@RequestParam("params") SearchParams params) {

		return null;

		/*
		 * @RequestMapping(value="", method=RequestMethod.GET,
		 * produces=MediaType.APPLICATION_JSON_VALUE) public @ResponseBody
		 * List<JSONObject> getAll() { List<Entity> entityList =
		 * entityManager.findAll();
		 * 
		 * List<JSONObject> entities = new ArrayList<JSONObject>(); for (Entity n :
		 * entityList) { JSONObject entity = new JSONObject(); entity.put("id",
		 * n.getId()); entity.put("address", n.getAddress()); entities.add(entity); }
		 * return entities; }
		 */

		/*
		 * @RequestMapping(value="", method=RequestMethod.GET,
		 * produces=MediaType.APPLICATION_JSON_VALUE) public @ResponseBody
		 * ResponseEntity<Object> getAll() { List<Entity> entityList =
		 * entityManager.findAll();
		 * 
		 * List<JSONObject> entities = new ArrayList<JSONObject>(); for (Entity n :
		 * entityList) { JSONObject Entity = new JSONObject(); entity.put("id",
		 * n.getId()); entity.put("address", n.getAddress()); entities.add(entity); }
		 * return new ResponseEntity<Object>(entities, HttpStatus.OK); }
		 */

	}

	@RequestMapping(value = "/bid/dress", method = RequestMethod.GET)
	public ResponseEntity<List<Auction>> dressApplyList(@RequestParam("params") SearchParams params) {

		ResponseEntity<List<Auction>> entity = null;
		params.setPerPageNum(10);

		try {
			entity = new ResponseEntity<>(service.listByDress(params), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@RequestMapping(value = "/bid/makeup", method = RequestMethod.GET)
	public ResponseEntity<List<Auction>> makeupApplyList(@RequestParam("params") SearchParams params) {

		ResponseEntity<List<Auction>> entity = null;
		params.setPerPageNum(10);

		try {
			entity = new ResponseEntity<>(service.listByMakeup(params), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@RequestMapping(value = "/intro", method = RequestMethod.GET)
	public String intro() {

		return "auction/intro";
	}

	@RequestMapping(value = "/submitbid", method = RequestMethod.GET)
	public String submitbid() {

		return "auction/submitbid";
	}

	@RequestMapping(value = "/win", method = RequestMethod.GET)
	public String win() {

		return "auction/win";
	}

	@RequestMapping(value = "count", method = RequestMethod.GET)
	public ResponseEntity<AuctionCount> userCnt() {
		// service 호출해서 dao 가서 데이터 조회

		ResponseEntity<AuctionCount> entity = null;
		try {
			entity = new ResponseEntity<>(countService.count(), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value = "realtimelist", method = RequestMethod.GET)
	public ResponseEntity<List<Auction>> realtimelist() {

		ResponseEntity<List<Auction>> entity = null;
		try {
			entity = new ResponseEntity<>(service.realtimelist(), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

		return entity;

	}
	
	@RequestMapping(value = "winrealtimelist", method = RequestMethod.GET)
	public ResponseEntity<List<Auction>> winrealtimelist() {

		ResponseEntity<List<Auction>> entity = null;
		try {
			entity = new ResponseEntity<>(service.winrealtimelist(), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

		return entity;

	}
	
	@RequestMapping(value = "dressrealtimelist", method = RequestMethod.GET)
	public ResponseEntity<List<Auction>> dressrealtimelist() {

		ResponseEntity<List<Auction>> entity = null;
		try {
			entity = new ResponseEntity<>(service.dressrealtimelist(), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

		return entity;

	}
	
	@RequestMapping(value = "dresswinrealtimelist", method = RequestMethod.GET)
	public ResponseEntity<List<Auction>> dresswinrealtimelist() {

		ResponseEntity<List<Auction>> entity = null;
		try {
			entity = new ResponseEntity<>(service.dresswinrealtimelist(), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

		return entity;

	}
	
	@RequestMapping(value = "makeuprealtimelist", method = RequestMethod.GET)
	public ResponseEntity<List<Auction>> makuprealtimelist() {

		ResponseEntity<List<Auction>> entity = null;
		try {
			entity = new ResponseEntity<>(service.makeuprealtimelist(), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

		return entity;

	}
	
	@RequestMapping(value = "makeupwinrealtimelist", method = RequestMethod.GET)
	public ResponseEntity<List<Auction>> makeupwinrealtimelist() {

		ResponseEntity<List<Auction>> entity = null;
		try {
			entity = new ResponseEntity<>(service.makeupwinrealtimelist(), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

		return entity;

	}
}
