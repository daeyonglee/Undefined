package kr.co.udf.company.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.company.domain.StudioInterest;

@Repository
public class MybatisStudioInterestDao implements StudioInterestDao {

	private static final String NAMESPACE = "kr.co.udf.company.dao.StudioInterestDao";
	
	@Inject
	private SqlSession session;
	
	/** 관심업체 추가 */
	@Override
	public void create(StudioInterest studioInterest) throws Exception {
		session.insert(NAMESPACE + ".create", studioInterest);
	}

	@Override
	public List<StudioInterest> read(int user_no) throws Exception {
		return session.selectList(NAMESPACE + ".read", user_no);
	}

	@Override
	public void update(StudioInterest studioInterest) throws Exception {
		session.update(NAMESPACE + ".update", studioInterest);
	}

	@Override
	public void delete(int sic_no) throws Exception {
		session.delete(NAMESPACE + ".delete", sic_no);
	}

}
