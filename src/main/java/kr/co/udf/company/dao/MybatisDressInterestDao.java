package kr.co.udf.company.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.company.domain.DressInterest;

@Repository
public class MybatisDressInterestDao implements DressInterestDao {

	private static final String NAMESPACE = "kr.co.udf.company.dao.DressInterestDao";
	
	@Inject
	private SqlSession session;
	
	/** 관심업체 추가 */
	@Override
	public void create(DressInterest dressInterest) throws Exception {
		session.insert(NAMESPACE + ".create", dressInterest);
	}

	@Override
	public List<DressInterest> read(int user_no) throws Exception {
		return session.selectList(NAMESPACE + ".read", user_no);
	}

	@Override
	public void update(DressInterest dressInterest) throws Exception {
		session.update(NAMESPACE + ".update", dressInterest);
	}

	@Override
	public void delete(int sic_no) throws Exception {
		session.delete(NAMESPACE + ".delete", sic_no);
	}

}
