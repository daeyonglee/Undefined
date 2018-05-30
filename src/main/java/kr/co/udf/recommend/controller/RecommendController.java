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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.udf.common.product.domain.DressProduct;
import kr.co.udf.common.product.domain.MakeupProduct;
import kr.co.udf.common.product.domain.StudioProduct;
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

	@RequestMapping(value = "list", method = RequestMethod.POST)
	public void recommendList(HttpServletRequest request, Model model) {

		String[] items = request.getParameterValues("items");

		String location = request.getParameter("location");
		String minCost = request.getParameter("minCost");
		String maxCost = request.getParameter("maxCost");

		List<String> studioOption = null;
		List<String> dressOption = null;
		List<String> makeupOption = null;
		Map<String, Object> params = new HashMap<String, Object>();
		Map<String, Object> result = new HashMap<String, Object>();

		List<StudioProduct> studioList = null;
		List<DressProduct> dressList = null;
		List<MakeupProduct> makeupList = null;

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

		if(result.containsKey("STUDIOLIST")) {
			model.addAttribute("studioList", result.get("STUDIOLIST"));
		}
		
		if(result.containsKey("DRESSLIST")) {
			model.addAttribute("dressList", result.get("DRESSLIST"));
		}
		
		if(result.containsKey("MAKEUPLIST")) {
			model.addAttribute("makeupList", result.get("MAKEUPLIST"));
		}
	}
}