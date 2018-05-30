package kr.co.udf.company.dao;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.common.company.domain.StudioCompany;

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

}

