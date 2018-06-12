package kr.co.udf.company.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.common.company.domain.MakeupCompany;
import kr.co.udf.company.domain.Criteria;
import kr.co.udf.company.domain.MakeupReview;
import kr.co.udf.company.domain.SearchCriteria;

@Repository
public class MybatisMakeupDao implements MakeupDao {

	@Inject
	private SqlSession session;
	
	private static String namespace = "kr.co.udf.company.dao.MakeupDao";

	@Override
	public List<MakeupCompany> listMakeup() throws Exception {
		return session.selectList(namespace+".listMakeup");
	}

	@Override
	public List<MakeupCompany> MakeupPage(int page) throws Exception {
		return session.selectList(namespace+".MakeupPage", page);
	}

	@Override
	public List<MakeupCompany> MakeupCri(Criteria cri) throws Exception {
		return session.selectList(namespace+".MakeupCri", cri);
	}

	@Override
	public int MakeupCount(Criteria cri) throws Exception {
		return session.selectOne(namespace+".MakeupCount", cri);
	
	}

	@Override
	public List<MakeupCompany> MakeupSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace+".MakeupSearch", cri);
	}

	@Override
	public int MakeupSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace+".MakeupSearchCount", cri);
	}
	
	/** 메이크업 업체 상세정보 조회 */
	@Override
	public MakeupCompany detailMakeup(int mc_no) {
		return session.selectOne(namespace + ".detailMakeup", mc_no);
	}
	
	/** 메이크업 업체 리뷰 추가 */
	@Override
	public void addReview(MakeupReview makeupReview) {
		session.insert(namespace + ".addReview", makeupReview);
	}
	
	/** 메이크업 업체 리뷰 출력 */
	@Override
	public List<MakeupReview> reviewMakeup(int mc_no) {
		return session.selectList(namespace + ".reviewMakeup", mc_no);
	}
	
	/** 메이크업 업체 평균 별점 */
	@Override
	public double avgPoint(int mc_no) {
		return session.selectOne(namespace + ".avgPoint", mc_no);
	} 
	
	/** 메이크업 업체 리뷰 갯수 */
	@Override
	public int countReview(int mc_no) throws Exception {
		return session.selectOne(namespace + ".countReview", mc_no);
	}
	
	/** 메이크업 업체 상품 갯수 */
	@Override
	public int countProduct(int mc_no) throws Exception {
		return session.selectOne(namespace + ".countProduct", mc_no);
	}
	
	@Override
	/** 메이크업 업체 상품 평균가 */
	public long avgPrice(int mc_no) throws Exception {
		return session.selectOne(namespace + ".avgPrice", mc_no);
	}
}