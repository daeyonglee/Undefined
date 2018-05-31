package kr.co.udf.recommend.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.common.product.domain.DressProduct;
import kr.co.udf.common.product.domain.MakeupProduct;
import kr.co.udf.common.product.domain.StudioProduct;
import kr.co.udf.recommend.dao.RecommendDao;

@Service
public class RecommendServiceImpl implements RecommendService {

	@Inject
	RecommendDao dao;

	@Override
	public Map<String, Object> recommend(Map<String, Object> params) {

		List<StudioProduct> studioList = null;
		List<DressProduct> dressList = null;
		List<MakeupProduct> makeupList = null;

		Map<String, Object> result = new HashMap<String, Object>();

		String location = (String) params.get("location");
		int minCost = (int) params.get("minCost");
		int maxCost = (int) params.get("maxCost");
		
		if (params.containsKey("studioOption")) {
			Map<String, Object> studioParams = new HashMap<String, Object>();
			studioParams.put("studioOption", params.get("studioOption"));
			studioParams.put("location", location);
			studioParams.put("minCost", minCost);
			studioParams.put("maxCost", maxCost);
			
			studioList = new ArrayList<StudioProduct>();
			studioList = dao.recommendStudio(studioParams);
			result.put("studioList", studioList);
		}

		if (params.containsKey("dressOption")) {
			Map<String, Object> dressParams = new HashMap<String, Object>();
			dressParams.put("dressOption", params.get("dressOption"));
			dressParams.put("location", location);
			dressParams.put("minCost", minCost);
			dressParams.put("maxCost", maxCost);
			
			dressList = new ArrayList<DressProduct>();
			dressList = dao.recommendDress(dressParams);
			result.put("dressList", dressList);
		}

		if (params.containsKey("makeupOption")) {
			Map<String, Object> makeupParams = new HashMap<String, Object>();
			makeupParams.put("makeupOption", params.get("makeupOption"));
			makeupParams.put("location", location);
			makeupParams.put("minCost", minCost);
			makeupParams.put("maxCost", maxCost);
			
			makeupList = new ArrayList<MakeupProduct>();
			makeupList = dao.recommendMakeup(makeupParams);
			result.put("makeupList", makeupList);
		}

		return result;
	}

}
