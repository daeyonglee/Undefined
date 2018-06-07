package kr.co.udf.company.dao;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.common.company.domain.StudioCompany;
import kr.co.udf.company.domain.StudioReview;

@Repository
public class StudioCompanyDaoImpl implements StudioCompanyDao {
	
	private static final String NAMESPACE = "kr.co.udf.company.dao.StudioCompanyDao";
	
	@Inject
	SqlSession sqlSession;
	 
	/** 스튜디오 업체 목록 리스트 */
	@Override
	public List<StudioCompany> listStudio() {
		return sqlSession.selectList(NAMESPACE + ".listStudio");
	}

	/** 스튜디오 업체 상세정보 조회 */
	@Override
	public StudioCompany detailStudio(int companyNo) {
		return sqlSession.selectOne(NAMESPACE + ".detailStudio", companyNo);
	}
	
	/** 스튜디오 업체 리뷰 추가 */
	@Override
	public void addReview(StudioReview studioReview) {
		sqlSession.insert(NAMESPACE + ".addReview", studioReview);
	}
	
	/** 스튜디오 업체 리뷰 출력 */
	@Override
	public List<StudioReview> reviewStudio(int companyNo) {
		return sqlSession.selectList(NAMESPACE + ".reviewStudio", companyNo);
	}
	
	/** 스튜디오 업체 평균 별점 */
	@Override
	public double avgPoint(int companyNo) {
		return sqlSession.selectOne(NAMESPACE + ".avgPoint", companyNo);
	} 
	
	/** 스튜디오 업체 리뷰 갯수 */
	@Override
	public int countReview(int companyNo) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".countReview", companyNo);
	}
	
}

