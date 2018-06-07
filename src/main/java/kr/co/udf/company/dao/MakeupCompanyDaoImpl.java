package kr.co.udf.company.dao;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.common.company.domain.MakeupCompany;

@Repository
public class MakeupCompanyDaoImpl implements MakeupCompanyDao {
	
	private static final String NAMESPACE = "kr.co.udf.company.dao.MakeupCompanyDao";
	
	@Inject
	SqlSession sqlSession;
	
	/** 메이크업 업체 목록 리스트 */
	@Override
	public List<MakeupCompany> listMakeup() {
		return sqlSession.selectList(NAMESPACE + ".listMakeup");
	}

	/** 메이크업 업체 상세정보 조회 */
	@Override
	public MakeupCompany detailMakeup(int companyNo) {
		return sqlSession.selectOne(NAMESPACE + ".detailMakeup", companyNo);
	}

}

