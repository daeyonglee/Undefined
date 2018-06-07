package kr.co.udf.recommend.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.udf.recommend.service.RecommendService;

@Controller
@RequestMapping("recommend")
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
	@RequestMapping(value = "addItem", method = RequestMethod.POST)
	public Object addItem(@RequestBody Map<String, Object> param) {
		int item_no = 0;
		Object result = null;
		if (param.containsKey("sp_no")) {
			item_no = Integer.parseInt((String) param.get("sp_no"));
			result = service.addStudio(item_no);
		} else if (param.containsKey("dp_no")) {
			item_no = Integer.parseInt((String) param.get("dp_no"));
			result = service.addDress(item_no);
		} else {
			item_no = Integer.parseInt((String) param.get("mp_no"));
			result = service.addMakeup(item_no);
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="addCart", method=RequestMethod.POST)
	public void addCart(@RequestBody Map<String, Object> cart) {
		//service.addCart(cart);
		logger.info(cart.toString());
	}

}