package kr.co.udf.company.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.common.company.domain.MakeupCompany;
import kr.co.udf.company.domain.Criteria;

@Repository
public class MybatisMakeupDao implements MakeupDao {

	@Inject
	private SqlSession session;
	
	private static String namespace = "kr.co.udf.company.dao.MakeupDao";

	@Override
	public List<MakeupCompany> listAll() throws Exception {
		return session.selectList(namespace+".listMakeup");
	}

	@Override
	public List<MakeupCompany> listPage(int page) throws Exception {
		return session.selectList(namespace+".MakeupPage", page);
	}

	@Override
	public List<MakeupCompany> listCriteria(Criteria cri) throws Exception {
		return session.selectList(namespace+".MakeupCri", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		return session.selectOne(namespace+".MakeupCount", cri);
	
	
}

}