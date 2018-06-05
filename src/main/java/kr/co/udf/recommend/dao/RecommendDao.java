package kr.co.udf.recommend.dao;

import java.util.List;
import java.util.Map;

import kr.co.udf.common.product.domain.DressProduct;
import kr.co.udf.common.product.domain.MakeupProduct;
import kr.co.udf.common.product.domain.StudioProduct;

public interface RecommendDao {

	/** 스튜디오 옵션을 받아 옵션을 만족하는 스튜디오 리스트 반환 */
	public List<Map<String, Object>> recommendStudio(Map<String, Object> studioParams);

	/** 드레스 옵션을 받아 옵션을 만족하는 드레스 리스트 반환 */
	public List<Map<String, Object>> recommendDress(Map<String, Object> dressParams);

	/** 메이크업 옵션을 받아 옵션을 만족하는 메이크업 리스트 반환 */
	public List<Map<String, Object>> recommendMakeup(Map<String, Object> makeupParams);
	
	public List<Map<String, Object>> studioListTest();
	
	public List<Map<String, Object>> dressListTest();
	
	public List<Map<String, Object>> makeupListTest();
	
	/** 상품번호로 스튜디오 받아오기 */
	public StudioProduct getStudio(int sp_no);
	
	/** 상품번호로 드레스 받아오기 */
	public DressProduct getDress(int dp_no);

	/** 상품번호로 메이크업 받아오기 */
	public MakeupProduct getMakeup(int mp_no);
	
	public void createCart(Map<String, Object> cart);
}