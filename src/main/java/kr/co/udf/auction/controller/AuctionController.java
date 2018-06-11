package kr.co.udf.auction.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.udf.auction.company.domain.DressCompany;
import kr.co.udf.auction.company.domain.MakeupCompany;
import kr.co.udf.auction.company.domain.StudioCompany;
import kr.co.udf.auction.domain.Auction;
import kr.co.udf.auction.domain.AuctionBid;
import kr.co.udf.auction.domain.AuctionCount;
import kr.co.udf.auction.domain.DayCount;
import kr.co.udf.auction.product.domain.DressProduct;
import kr.co.udf.auction.product.domain.MakeupProduct;
import kr.co.udf.auction.product.domain.StudioProduct;
import kr.co.udf.auction.service.AuctionApplyService;
import kr.co.udf.auction.service.AuctionBidService;
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

	@Inject
	private AuctionBidService bidService;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "auction/index";
	}

	@RequestMapping(value = "/apply", method = RequestMethod.GET)
	public void form(Model model, HttpSession session) {
		Login login = (Login) session.getAttribute("login");
		model.addAttribute("login", login);
		logger.info("apply form.....");
	}

	/** 상세보기 */
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(@RequestParam("no") int no, @RequestParam("type") String type, Model model) throws Exception {

		Auction auction = service.read(no, type);
		DayCount dayCount = service.daycount(no, type);

		model.addAttribute("Auction", auction);

		int day = Integer.valueOf(dayCount.getDay());
		int si = Integer.valueOf(dayCount.getSi());
		int min = Integer.valueOf(dayCount.getMin());
		int sec = Integer.valueOf(dayCount.getSec());

		if (day > -1 && day < 10) {
			dayCount.setDay("0" + day);
		}
		if (si > -1 && si < 10) {
			dayCount.setSi("0" + si);
		}
		if (min > -1 && min < 10) {
			dayCount.setMin("0" + min);
		}
		if (sec > -1 && sec < 10) {
			dayCount.setSec("0" + sec);
		}

		model.addAttribute("daycount", dayCount);

	}

	/** 낙찰서 상세보기 */
	@RequestMapping(value = "/winread", method = RequestMethod.GET)
	public void winread(@RequestParam("no") int no, @RequestParam("type") String type, Model model) throws Exception {

		model.addAttribute("Auction", bidService.winread(no, type));

	}

	/** 삭제 */
	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String delete(@RequestParam("no") int no, @RequestParam("type") String type, RedirectAttributes rttr)
			throws Exception {

		service.delete(no, type);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/auction/list";

	}

	/** 수정(리드) */
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modifyGET(int no, String type, Model model) throws Exception {

		model.addAttribute("Auction", service.read(no, type));

	}

	/** 수정 */
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPost(Auction auction, RedirectAttributes rttr) throws Exception {

		logger.info(auction);

		service.modify(auction);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/auction/list";

	}

	/** 스드메 카테고리 별로 신청서 등록하기 */

	@RequestMapping(value = "/apply", method = RequestMethod.POST)
	public String apply(@RequestParam("type") String type, Auction auction, HttpSession session,
			RedirectAttributes rttr) throws Exception {

		logger.info("apply post 진입");
		Login login = (Login) session.getAttribute("login");
		logger.info(login);

		auction.setUserNo(login.getNo());
		auction.setDate(auction.getDayFirst() + " " + auction.getTimeFirst());
		auction.setLoc(auction.getLocFirst() + "||" + auction.getLocSecond() + "||" + auction.getLocThird());

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
		return "redirect:/auction/list";

	}
	/*
	 * @RequestMapping(value="/bid",method=RequestMethod.GET) public void
	 * bid(SearchParams params, Model model) throws Exception {
	 * logger.info("listPage get...."); model.addAttribute("bid",
	 * service.listParams(params)); }
	 */

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void bid(SearchParams params, Model model) throws Exception {

		if (params.getSearchType() == null) {
			params.setSearchType("all");
		}

		// 화면 변경이 될 때 searchType이 존재 하는지 확인 후 그에 맞는 데이터 조회.
		// 근데 지금은 그냥 무조건 전체조회.
		// 그러므로 확인해야한다. 무엇을? searchType을

		if ("studio".equals(params.getSearchType())) {
			model.addAttribute("list", service.listByStudio(params));
		} else if ("dress".equals(params.getSearchType())) {
			model.addAttribute("list", service.listByDress(params));
		} else if ("makeup".equals(params.getSearchType())) {
			model.addAttribute("list", service.listByMakeup(params));
		} else {
			model.addAttribute("list", service.listParams(params));
		}

		PageMaker pageMaker = new PageMaker();
		pageMaker.setParams(params);
		pageMaker.setTotalCount(service.listByTypeCount(params));

		model.addAttribute("pageMaker", pageMaker);
	}

	@RequestMapping(value = "/win", method = RequestMethod.GET)
	public void win(AuctionBid bid, SearchParams params, Model model) throws Exception {

		if (params.getSearchType() == null) {
			params.setSearchType("all");
		}

		if ("studio".equals(params.getSearchType())) {
			model.addAttribute("winlist", service.winlistByStudio(params));
		} else if ("dress".equals(params.getSearchType())) {
			model.addAttribute("winlist", service.winlistByDress(params));
		} else if ("makeup".equals(params.getSearchType())) {
			model.addAttribute("winlist", service.winlistByMakeup(params));
		} else {
			model.addAttribute("winlist", service.winlistParams(params));
		}

		PageMaker pageMaker = new PageMaker();
		pageMaker.setParams(params);
		pageMaker.setTotalCount(service.winlistByTypeCount(params));

		model.addAttribute("pageMaker", pageMaker);
	}

	// 입찰서 신규 등록하기(bid)
	@RequestMapping(value = "/bid", method = RequestMethod.GET)
	public void bidForm(int no, String type, HttpSession session, Model model) throws Exception {

		// 회사 정보 + 상품 정보 얻어오기
		logger.info("bidForm 진입");
		Login login = (Login) session.getAttribute("login");
		String role = (String) session.getAttribute("role");

		int loginNo = (login.getNo()).intValue();

		logger.info("회사 타입은?" + role);
		logger.info("회사의 정체는?" + login);

		if (role.equals("mc")) {
			logger.info("[makeup] 업체입니다...");
			MakeupCompany company = bidService.searchMakeupCompany(loginNo);
			logger.info(company);
			model.addAttribute("Company", company);
			List<MakeupProduct> makeupProduct = bidService.searchMakeupProduct(loginNo);
			logger.info("메이크업 상품들 : " + makeupProduct);
			model.addAttribute("products", makeupProduct);
			
		} else if (role.equals("dc")) {
			logger.info("[dress] 업체입니다...");
			DressCompany company = bidService.searchDressCompany(loginNo);
			logger.info(company);
			model.addAttribute("Company", company);
			List<DressProduct> dressProduct = bidService.searchDressProduct(loginNo);
			logger.info("드레스 상품들 : " + dressProduct);
			model.addAttribute("products", dressProduct);


		} else if (role.equals("sc")) {
			logger.info("[studio] 업체입니다...");
			StudioCompany company = bidService.searchStudioCompany(loginNo);
			logger.info(company);
			model.addAttribute("Company", company);
			List<StudioProduct> studioProduct = bidService.searchStudioProduct(loginNo);
			logger.info(studioProduct);
			model.addAttribute("products", studioProduct);

		}

		// 신청서 게시글 정보 얻어오기
		logger.info(no);
		logger.info(type);
		Auction auction = new Auction();
		auction = service.read(no, type);

		model.addAttribute("Auction", auction);

		// 근데 dress_company, studio_company, makeup_company, users 등 어디에 있는 데이터인지 모른다
		// 근데 로그인을 한 경우라면 session값에 login을 출력해보면
		// 그 안에 role이라는게 있다. 예를 들어 dc, mc, sc, users 등 4가지 경우로 나뉜다.
		// 그 값을 알게되면 그에 해당하는 테이블에서 데이터를 조회하면 된다.
		// Login 객체에 no, email, pw, role;
		// Login의 no로 데이터를 조회해
		// 그러면 그에대한 데이터를 얻을 수 있잖아.

	}

	@Transactional
	@RequestMapping(value = "/bid", method = RequestMethod.POST)
	public String winPost(@RequestParam("type") String type, @RequestParam("no") int no, AuctionBid bid,
			HttpSession session, RedirectAttributes rttr) throws Exception {

		Login login = (Login) session.getAttribute("login");
		Auction auction = service.read(no, type);

		bid.setApplyNo(no);
		bid.setCompanyNo(login.getNo().intValue());
		bid.setUserNo(auction.getUserNo().intValue());

		logger.info("회사의 정체는?" + login);
		logger.info("입찰서 내용은?" + auction);
		logger.info(bid);

		if (type.equals("dress")) {
			bidService.createDressBid(bid);
			bidService.createDressProd(bid);
			logger.info("[dress] 입찰서 제출합니다");
			logger.info(bid);

		} else if (type.equals("makeup")) {
			bidService.createMakeupBid(bid);
			bidService.createMakeupProd(bid);
			logger.info("[makeup] 입찰서 제출합니다");
			logger.info(bid);

		} else if (type.equals("studio")) {
			bidService.createStudioBid(bid);
			bidService.createStudioProd(bid);
			logger.info("[studio] 입찰서 제출합니다");
			logger.info(bid);

		}

		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/auction/list";
	}

	// 경매 입찰서 리스트 전체 조회(list)
	@RequestMapping(value = "/bidlist", method = RequestMethod.GET)
	public void bidlist(@RequestParam("userNo") int userNo, AuctionBid bid, HttpSession session, Model model)
			throws Exception {
		logger.info("bidlist get....");

		User user = (User) session.getAttribute("login");
		logger.info(user);

		bid.setUserNo(userNo);
		bid.getName();

		model.addAttribute("bidList", bidService.listByUser(userNo));

		/*
		 * PageMaker pageMaker = new PageMaker();
		 * pageMaker.setTotalCount(service.listByTypeCount());
		 * logger.info(pageMaker.toString());
		 * 
		 * model.addAttribute("pageMaker", pageMaker);
		 */ }

	@RequestMapping(value = "/bid/studio", method = RequestMethod.GET)
	public ResponseEntity<List<Auction>> studioApplyList(SearchParams params) throws Exception {

		ResponseEntity<List<Auction>> entity = null;

		List<Auction> list = service.listByStudio(params);

		params.setSearchType("studio");

		PageMaker pageMaker = new PageMaker();
		pageMaker.setParams(params);
		pageMaker.setTotalCount(service.listByTypeCount(params));

		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("pageMaker", pageMaker);

		try {
			entity = new ResponseEntity(map, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity(HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

	@RequestMapping(value = "/bid/dress", method = RequestMethod.GET)
	public ResponseEntity<List<Auction>> dressApplyList(SearchParams params) throws Exception {

		ResponseEntity<List<Auction>> entity = null;

		params.setSearchType("dress");

		List<Auction> list = service.listByDress(params);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setParams(params);
		pageMaker.setTotalCount(service.listByTypeCount(params));

		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("pageMaker", pageMaker);

		try {
			entity = new ResponseEntity(map, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@RequestMapping(value = "/bid/makeup", method = RequestMethod.GET)
	public ResponseEntity<List<Auction>> makeupApplyList(SearchParams params) throws Exception {

		ResponseEntity<List<Auction>> entity = null;

		List<Auction> list = service.listByMakeup(params);

		params.setSearchType("makeup");

		PageMaker pageMaker = new PageMaker();
		pageMaker.setParams(params);
		pageMaker.setTotalCount(service.listByTypeCount(params));

		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("pageMaker", pageMaker);

		try {
			entity = new ResponseEntity(map, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@RequestMapping(value = "/win/studio", method = RequestMethod.GET)
	public ResponseEntity<List<Auction>> winstudioApplyList(SearchParams params) throws Exception {

		ResponseEntity<List<Auction>> entity = null;

		List<Auction> list = service.winlistByStudio(params);

		params.setSearchType("studio");

		PageMaker pageMaker = new PageMaker();
		pageMaker.setParams(params);
		pageMaker.setTotalCount(service.winlistByTypeCount(params));

		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("pageMaker", pageMaker);

		try {
			entity = new ResponseEntity(map, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity(HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

	@RequestMapping(value = "/win/dress", method = RequestMethod.GET)
	public ResponseEntity<List<Auction>> windressApplyList(SearchParams params) throws Exception {

		ResponseEntity<List<Auction>> entity = null;

		List<Auction> list = service.winlistByDress(params);

		params.setSearchType("dress");

		PageMaker pageMaker = new PageMaker();
		pageMaker.setParams(params);
		pageMaker.setTotalCount(service.winlistByTypeCount(params));

		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("pageMaker", pageMaker);

		try {
			entity = new ResponseEntity(map, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity(HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

	@RequestMapping(value = "/win/makeup", method = RequestMethod.GET)
	public ResponseEntity<List<Auction>> winmakeupApplyList(SearchParams params) throws Exception {

		ResponseEntity<List<Auction>> entity = null;

		List<Auction> list = service.winlistByMakeup(params);

		params.setSearchType("makeup");

		PageMaker pageMaker = new PageMaker();
		pageMaker.setParams(params);
		pageMaker.setTotalCount(service.winlistByTypeCount(params));

		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("pageMaker", pageMaker);

		try {
			entity = new ResponseEntity(map, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity(HttpStatus.BAD_REQUEST);
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