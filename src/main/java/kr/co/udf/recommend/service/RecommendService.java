package kr.co.udf.recommend.service;

import java.util.Map;

import kr.co.udf.common.product.domain.DressProduct;
import kr.co.udf.common.product.domain.MakeupProduct;
import kr.co.udf.common.product.domain.StudioProduct;

public interface RecommendService {
	
	/** 선택한 아이템(스튜디오, 드레스, 메이크업)에 대한 옵션을 받아 옵선을 만족하는 아이템들의 리스트 반환 */
	public Map<String, Object> recommend(Map<String, Object> params);
	
	public Map<String, Object> recommendTest();
	
	/** 스튜디오 상품을 장바구니에 추가 */
	public StudioProduct addStudio(int sp_no);

	/** 드레스 상품을 장바구니에 추가 */
	public DressProduct addDress(int dp_no);
	
	/** 메이크업 상품을 장바구니에 추가 */
	public MakeupProduct addMakeup(int mp_no);
	
	/** 상품들을 장바구니 리스트에 추가 */
	public void addCart(Map<String, Object> cart);
}
