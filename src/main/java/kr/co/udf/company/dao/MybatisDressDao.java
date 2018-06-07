package kr.co.udf.company.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.common.company.domain.DressCompany;
import kr.co.udf.common.company.domain.StudioCompany;
import kr.co.udf.company.domain.Criteria;
import kr.co.udf.company.domain.SearchCriteria;
import kr.co.udf.company.domain.Studio;

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
}