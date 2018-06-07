package kr.co.udf.company.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.common.company.domain.StudioCompany;
import kr.co.udf.company.domain.Criteria;
import kr.co.udf.company.domain.SearchCriteria;
import kr.co.udf.company.domain.StudioReview;

@Repository
public class MybatisStudioDao implements StudioDao {

	@Inject
	private SqlSession session;
	
	private static String namespace = "kr.co.udf.company.dao.StudioDao";

	@Override
	public List<StudioCompany> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

	@Override
	public List<StudioCompany> listPage(int page) throws Exception {
		return session.selectList(namespace+".listPage", page);
	}

	@Override
	public List<StudioCompany> listCriteria(Criteria cri) throws Exception {
		return session.selectList(namespace+".listCriteria", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		return session.selectOne(namespace+".countPaging", cri);
	}

	@Override
	public List<StudioCompany> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace+".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace+".listSearchCount", cri);
	}
	
	/** 스튜디오 업체 상세정보 조회 */
	@Override
	public StudioCompany detailStudio(int sc_no) {
		return session.selectOne(namespace + ".detailStudio", sc_no);
	}
	
	/** 스튜디오 업체 리뷰 추가 */
	@Override
	public void addReview(StudioReview studioReview) {
		session.insert(namespace + ".addReview", studioReview);
	}
	
	/** 스튜디오 업체 리뷰 출력 */
	@Override
	public List<StudioReview> reviewStudio(int sc_no) {
		return session.selectList(namespace + ".reviewStudio", sc_no);
	}
	
	/** 스튜디오 업체 평균 별점 */
	@Override
	public double avgPoint(int sc_no) {
		return session.selectOne(namespace + ".avgPoint", sc_no);
	} 
	
	/** 스튜디오 업체 리뷰 갯수 */
	@Override
	public int countReview(int sc_no) throws Exception {
		return session.selectOne(namespace + ".countReview", sc_no);
	}
	
	
}
