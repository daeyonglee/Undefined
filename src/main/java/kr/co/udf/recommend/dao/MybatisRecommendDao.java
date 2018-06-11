package kr.co.udf.recommend.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.common.product.domain.DressProduct;
import kr.co.udf.common.product.domain.MakeupProduct;
import kr.co.udf.common.product.domain.StudioProduct;

@Repository
public class MybatisRecommendDao implements RecommendDao {

	@Inject
	SqlSession session;

	String namespace = "kr.co.udf.recommend.dao.RecommendDao";

	/** 스튜디오 옵션을 받아 옵션을 만족하는 스튜디오 리스트 반환 */
	@Override
	public List<Map<String, Object>> recommendStudio(Map<String, Object> studioParams) {
		return session.selectList(namespace + ".recommendStudio", studioParams);
	}

	/** 드레스 옵션을 받아 옵션을 만족하는 드레스 리스트 반환 */
	@Override
	public List<Map<String, Object>> recommendDress(Map<String, Object> dressParams) {
		return session.selectList(namespace + ".recommendDress", dressParams);
	}

	/** 메이크업 옵션을 받아 옵션을 만족하는 메이크업 리스트 반환 */
	@Override
	public List<Map<String, Object>> recommendMakeup(Map<String, Object> makeupParams) {
		return session.selectList(namespace + ".recommendMakeup", makeupParams);
	}

	@Override
	public List<Map<String, Object>> studioListTest() {
		return session.selectList(namespace + ".studioListTest");
	}

	@Override
	public List<Map<String, Object>> dressListTest() {
		return session.selectList(namespace + ".dressListTest");
	}

	@Override
	public List<Map<String, Object>> makeupListTest() {
		return session.selectList(namespace + ".makeupListTest");
	}

	/** 상품번호로 스튜디오 받아오기 */
	@Override
	public StudioProduct getStudio(int sp_no) {
		return session.selectOne(namespace + ".getStudio", sp_no);
	}
	
	/** 상품번호로 드레스 받아오기 */
	@Override
	public DressProduct getDress(int dp_no) {
		return session.selectOne(namespace + ".getDress", dp_no);
	}
	
	/** 상품번호로 메이크업 받아오기 */
	@Override
	public MakeupProduct getMakeup(int mp_no) {
		return session.selectOne(namespace + ".getMakeup", mp_no);
	}

	/** 스튜디오 상품을 관심상품에 추가 */
	@Override
	public void addSToCart(Map<String, Object> params) {
		session.insert(namespace + ".addSToCart", params);
	}

	/** 드레스 상품을 관심상품에 추가 */
	@Override
	public void addDToCart(Map<String, Object> params) {
		session.insert(namespace + ".addDToCart", params);
	}

	/** 메이크업 상품을 관심상품에 추가 */
	@Override
	public void addMToCart(Map<String, Object> params) {
		session.insert(namespace + ".addMToCart", params);
	}

	@Override
	public Map<String, Object> readStudio(int sp_no) {
		return session.selectOne(namespace + ".readStudio", sp_no);
	}

	@Override
	public Map<String, Object> readDress(int dp_no) {
		return session.selectOne(namespace + ".readDress", dp_no);
	}

	@Override
	public Map<String, Object> readMakeup(int mp_no) {
		return session.selectOne(namespace + ".readMakeup", mp_no);
	}
	
	
}
