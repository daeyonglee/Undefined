package kr.co.udf.recommend.dao;

import java.util.List;
import java.util.Map;

import kr.co.udf.common.product.domain.DressProduct;
import kr.co.udf.common.product.domain.MakeupProduct;
import kr.co.udf.common.product.domain.StudioProduct;

public interface RecommendDao {

	public List<StudioProduct> recommendStudio(Map<String, Object> studioOption);
	
	public List<DressProduct> recommendDress(Map<String, Object> dressOption);
	
	public List<MakeupProduct> recommendMakeup(Map<String, Object> makeupOption);
}
