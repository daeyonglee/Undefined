package kr.co.udf.company.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.common.company.domain.DressCompany;
import kr.co.udf.company.domain.Criteria;
import kr.co.udf.company.domain.SearchCriteria;
import kr.co.udf.company.domain.DressReview;

@Repository
public class MybatisDressDao implements DressDao {

	@Inject
	private SqlSession session;
	
	private static String namespace = "kr.co.udf.company.dao.DressDao";

	@Override
	public List<DressCompany> listDress() throws Exception {
		return session.selectList(namespace+".listDress");
	}

	@Override
	public List<DressCompany> DressPage(int page) throws Exception {
		return session.selectList(namespace+".DressPage", page);
	}

	@Override
	public List<DressCompany> DressCri(Criteria cri) throws Exception {
		return session.selectList(namespace+".DressCri", cri);
	}

	@Override
	public int DressCount(Criteria cri) throws Exception {
		return session.selectOne(namespace+".DressCount", cri);
	}

	@Override
	public List<DressCompany> DressSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace+".DressSearch", cri);
	}

	@Override
	public int DressSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace+".DressSearchCount", cri);
	}
	
	/** 드레스 업체 상세정보 조회 */
	@Override
	public DressCompany detailDress(int dc_no) {
		return session.selectOne(namespace + ".detailDress", dc_no);
	}
	
	/** 드레스 업체 리뷰 추가 */
	@Override
	public void addReview(DressReview dressReview) {
		session.insert(namespace + ".addReview", dressReview);
	}
	
	/** 드레스 업체 리뷰 출력 */
	@Override
	public List<DressReview> reviewDress(int dc_no) {
		return session.selectList(namespace + ".reviewDress", dc_no);
	}
	
	/** 드레스 업체 평균 별점 */
	@Override
	public double avgPoint(int dc_no) {
		return session.selectOne(namespace + ".avgPoint", dc_no);
	} 
	
	/** 드레스 업체 리뷰 갯수 */
	@Override
	public int countReview(int dc_no) throws Exception {
		return session.selectOne(namespace + ".countReview", dc_no);
	}
	
	/** 드레스 업체 상품 갯수 */
	@Override
	public int countProduct(int dc_no) throws Exception {
		return session.selectOne(namespace + ".countProduct", dc_no);
	}
	
	/** 드레스 업체 상품 평균가 */
	@Override
	public long avgPrice(int dc_no) throws Exception {
		return session.selectOne(namespace + ".avgPrice", dc_no);
	}
}