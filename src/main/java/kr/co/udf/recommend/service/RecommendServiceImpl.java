package kr.co.udf.recommend.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import kr.co.udf.common.product.domain.DressProduct;
import kr.co.udf.common.product.domain.MakeupProduct;
import kr.co.udf.common.product.domain.StudioProduct;
import kr.co.udf.recommend.controller.RecommendController;
import kr.co.udf.recommend.dao.RecommendDao;

@Service
public class RecommendServiceImpl implements RecommendService {
	
	Logger logger = Logger.getLogger(RecommendController.class);

	@Inject
	RecommendDao dao;

	/** 선택한 아이템(스튜디오, 드레스, 메이크업)에 대한 옵션을 받아 옵선을 만족하는 아이템들의 리스트 반환 */
	@Override
	public Map<String, Object> recommend(Map<String, Object> params) {

		Map<String, Object> result = null;

		if (params.isEmpty()) {
			return result;
		} else {
			result = new HashMap<String, Object>();

			String location = (String) params.get("location");
			Long minCost = Long.parseLong((String) params.get("minCost"));
			Long maxCost = Long.parseLong((String) params.get("maxCost"));

			if (params.containsKey("studioOption")) {
				Map<String, Object> studioParams = new HashMap<String, Object>();
				studioParams.put("location", location);
				studioParams.put("minCost", minCost);
				studioParams.put("maxCost", maxCost);
				studioParams.put("studioOption", params.get("studioOption"));

				List<Map<String, Object>> studioList = dao.recommendStudio(studioParams);
				if(!studioList.isEmpty()) {
					result.put("studioList", studioList);
				}
			}

			if (params.containsKey("dressOption")) {
				Map<String, Object> dressParams = new HashMap<String, Object>();
				dressParams.put("location", location);
				dressParams.put("minCost", minCost);
				dressParams.put("maxCost", maxCost);
				dressParams.put("dressOption", params.get("dressOption"));

				List<Map<String, Object>> dressList = dao.recommendDress(dressParams);
				if(!dressList.isEmpty()) {
					result.put("dressList", dressList);
				}
			}

			if (params.containsKey("makeupOption")) {
				Map<String, Object> makeupParams = new HashMap<String, Object>();
				makeupParams.put("location", location);
				makeupParams.put("minCost", minCost);
				makeupParams.put("maxCost", maxCost);
				makeupParams.put("makeupOption", params.get("makeupOption"));

				List<Map<String, Object>> makeupList = dao.recommendMakeup(makeupParams);
				if(!makeupList.isEmpty()) {
					result.put("makeupList", makeupList);
				}
			}
		}
		return result;
	}

	@Override
	public Map<String, Object> recommendTest() {
		List<Map<String, Object>> studioList = dao.studioListTest();
		List<Map<String, Object>> dressList = dao.dressListTest();
		List<Map<String, Object>> makeupList = dao.makeupListTest();
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("studioList", studioList);
		result.put("dressList", dressList);
		result.put("makeupList", makeupList);
		
		return result;
	}

	/** 스튜디오 상품을 장바구니에 추가 */
	@Override
	public StudioProduct addStudio(int sp_no) {
		return dao.getStudio(sp_no);
	}

	/** 드레스 상품을 장바구니에 추가 */
	@Override
	public DressProduct addDress(int dp_no) {
		return dao.getDress(dp_no);
	}

	/** 메이크업 상품을 장바구니에 추가 */
	@Override
	public MakeupProduct addMakeup(int mp_no) {
		return dao.getMakeup(mp_no);
	}

	/** 스튜디오 상품을 관심상품에 추가 */
	@Override
	public void addSToCart(Map<String, Object> params) {
		dao.addSToCart(params);
	}

	/** 드레스 상품을 관심상품에 추가 */
	@Override
	public void addDToCart(Map<String, Object> params) {
		dao.addDToCart(params);
	}

	/** 메이크업 상품을 관심상품에 추가 */
	@Override
	public void addMToCart(Map<String, Object> params) {
		dao.addMToCart(params);
	}

	@Override
	public Map<String, Object> studioDetail(int sp_no) {
		return dao.readStudio(sp_no);
	}

	@Override
	public Map<String, Object> dressDetail(int dp_no) {
		return dao.readDress(dp_no);
	}

	@Override
	public Map<String, Object> makeupDetail(int mp_no) {
		return dao.readMakeup(mp_no);
	}

}
