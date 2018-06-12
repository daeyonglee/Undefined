package kr.co.udf.recommend.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.udf.recommend.service.RecommendService;

@Controller
@RequestMapping("/recommend/*")
public class RecommendController {

	Logger logger = Logger.getLogger(RecommendController.class);

	@Inject
	RecommendService service;

	@RequestMapping("index")
	public void recommendIndex() {
		logger.info("successfully access [/recommend/index]");
	}

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public void recommendListTest(Model model) {

		Map<String, Object> result = service.recommendTest();

		if (result.containsKey("studioList")) {
			model.addAttribute("studioList", result.get("studioList"));
			logger.info("RecommendController - studioList: " + result.get("studioList").toString());
		}

		if (result.containsKey("dressList")) {
			model.addAttribute("dressList", result.get("dressList"));
			logger.info("RecommendController - dressList: " + result.get("dressList").toString());
		}

		if (result.containsKey("makeupList")) {
			model.addAttribute("makeupList", result.get("makeupList"));
			logger.info("RecommendController - makeupList: " + result.get("makeupList").toString());
		}
	}

	@RequestMapping(value = "list", method = RequestMethod.POST)
	public void recommendList(HttpServletRequest request, Model model) {

		String[] items = request.getParameterValues("item");

		String location = request.getParameter("location");
		String minCost = request.getParameter("minCost");
		String maxCost = request.getParameter("maxCost");

		List<String> studioOption = null;
		List<String> dressOption = null;
		List<String> makeupOption = null;

		Map<String, Object> params = new HashMap<String, Object>();
		Map<String, Object> result = new HashMap<String, Object>();

		params.put("location", location);
		params.put("minCost", minCost);
		params.put("maxCost", maxCost);

		for (String item : items) {
			switch (item) {

			case "studio":
				String[] studioTmp = request.getParameterValues("studio");
				studioOption = new ArrayList<String>();
				for (String option : studioTmp) {
					studioOption.add(option);
					logger.info("option");
				}
				break;

			case "dress":
				String[] dressTmp = request.getParameterValues("dress");
				dressOption = new ArrayList<String>();
				for (String option : dressTmp) {
					dressOption.add(option);
				}
				break;

			case "makeup":
				String[] makeupTmp = request.getParameterValues("makeup");
				makeupOption = new ArrayList<String>();
				for (String option : makeupTmp) {
					makeupOption.add(option);
				}
				break;

			}
		}

		if (studioOption != null) {
			params.put("studioOption", studioOption);
		}

		if (dressOption != null) {
			params.put("dressOption", dressOption);
		}

		if (makeupOption != null) {
			params.put("makeupOption", makeupOption);
		}

		result = service.recommend(params);

		if (result.containsKey("studioList")) {
			model.addAttribute("studioList", result.get("studioList"));
			logger.info("RecommendController - studioList: " + result.get("studioList").toString());
		}

		if (result.containsKey("dressList")) {
			model.addAttribute("dressList", result.get("dressList"));
			logger.info("RecommendController - dressList: " + result.get("dressList").toString());
		}

		if (result.containsKey("makeupList")) {
			model.addAttribute("makeupList", result.get("makeupList"));
			logger.info("RecommendController - makeupList: " + result.get("makeupList").toString());
		}
	}

	@ResponseBody
	@RequestMapping(value = "addToCart", method = RequestMethod.GET)
	public ResponseEntity<Object> addToCart(@RequestParam("item") String item, @RequestParam("item_no") int item_no, @RequestParam("no") int no) {
		
		ResponseEntity<Object> entity = null;
		
		try {
			Map<String, Object> params = new HashMap<String, Object>();
			if (item.equals("studio")) {
				params.put("sp_no", item_no);
				params.put("no", no);
				service.addSToCart(params);
			} else if (item.equals("dress")) {
				params.put("dp_no", item_no);
				params.put("no", no);
				service.addDToCart(params);
			} else if (item.equals("makeup")) {
				params.put("mp_no", item_no);
				params.put("no", no);
				service.addMToCart(params);
			}
			entity = new ResponseEntity<>("success",HttpStatus.OK);
			
		} catch (Exception e) {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		
		return entity;
	}

	@ResponseBody
	@RequestMapping(value = "list/sdetail", method = RequestMethod.GET)
	public Map<String, Object> studioDetail(int sp_no) {
		logger.info("sp_no : " + sp_no);
		logger.info("service.studioDetail(sp_no) : " + service.studioDetail(sp_no));
		return service.studioDetail(sp_no);
	}

	@ResponseBody
	@RequestMapping(value = "list/ddetail", method = RequestMethod.GET)
	public Map<String, Object> dressDetail(int dp_no) {
		return service.dressDetail(dp_no);
	}

	@ResponseBody
	@RequestMapping(value = "list/mdetail", method = RequestMethod.GET)
	public Map<String, Object> makeupDetail(int mp_no) {
		return service.makeupDetail(mp_no);
	}

}