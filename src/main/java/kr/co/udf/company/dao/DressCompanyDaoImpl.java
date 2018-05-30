package kr.co.udf.company.dao;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.common.company.domain.DressCompany;
import kr.co.udf.common.company.domain.MakeupCompany;

@Repository
public class DressCompanyDaoImpl implements DressCompanyDao {
	
	private static final String NAMESPACE = "kr.co.udf.company.dao.DressCompanyDao";
	
	@Inject
	SqlSession sqlSession;
	
	/** 드레스 업체 목록 리스트 */
	@Override
	public List<DressCompany> listDress() {
		return sqlSession.selectList(NAMESPACE + ".listDress");
	}

	/** 드레스 업체 상세정보 조회 */
	@Override
	public DressCompany detailDress(int companyNo) {
		return sqlSession.selectOne(NAMESPACE + ".detailDress", companyNo);
	}

}

