package kr.co.udf.company.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.common.company.domain.MakeupCompany;
import kr.co.udf.company.domain.Criteria;
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
}