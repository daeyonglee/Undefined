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

		String location = (String) params.get("LOCATION");
		int minCost = (int) params.get("MINCOST");
		int maxCost = (int) params.get("MAXCOST");
		
		if (params.containsKey("STUDIOOPTION")) {
			studioList = new ArrayList<StudioProduct>();
			studioList = dao.recommendStudio((List<String>) params.get("STUDIOOPTION"));
			result.put("studioList", studioList);
		}

		if (params.containsKey("DRESSOPTION")) {
			dressList = new ArrayList<DressProduct>();
			dressList = dao.recommendDress((List<String>) params.get("DRESSOPTION"));
			result.put("dressList", dressList);
		}

		if (params.containsKey("MAKEUPOPTION")) {
			makeupList = new ArrayList<MakeupProduct>();
			makeupList = dao.recommendMakeup((List<String>) params.get("MAKEUPOPTION"));
			result.put("makeupList", makeupList);
		}

		return result;
	}

}
