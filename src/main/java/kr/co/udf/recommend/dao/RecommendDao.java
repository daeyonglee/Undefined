package kr.co.udf.recommend.dao;

import java.util.List;

import kr.co.udf.common.product.domain.DressProduct;
import kr.co.udf.common.product.domain.MakeupProduct;
import kr.co.udf.common.product.domain.StudioProduct;

public interface RecommendDao {

	public List<StudioProduct> recommendStudio(List<String> studioOption);
	
	public List<DressProduct> recommendDress(List<String> dressOption);
	
	public List<MakeupProduct> recommendMakeup(List<String> makeupOption);
}
