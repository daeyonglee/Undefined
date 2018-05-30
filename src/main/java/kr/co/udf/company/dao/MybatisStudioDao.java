package kr.co.udf.company.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.common.company.domain.StudioCompany;
import kr.co.udf.company.domain.Criteria;

@Repository
public class MybatisStudioDao implements StudioDao {

	@Inject
	private SqlSession session;
	
	private static String namespace = "kr.co.udf.company.dao.StudioDao";

	@Override
	public List<StudioCompany> listAll() throws Exception {
		return session.selectList(namespace+".listStudio");
	}

	@Override
	public List<StudioCompany> listPage(int page) throws Exception {
		return session.selectList(namespace+".StudioPage", page);
	}

	@Override
	public List<StudioCompany> listCriteria(Criteria cri) throws Exception {
		return session.selectList(namespace+".StudioCri", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		return session.selectOne(namespace+".StudioCount", cri);
	}
}
