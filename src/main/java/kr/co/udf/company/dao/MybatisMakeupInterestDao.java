package kr.co.udf.company.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.company.domain.MakeupInterest;

@Repository
public class MybatisMakeupInterestDao implements MakeupInterestDao {

	private static final String NAMESPACE = "kr.co.udf.company.dao.MakeupInterestDao";
	
	@Inject
	private SqlSession session;
	
	/** 관심업체 추가 */
	@Override
	public void create(MakeupInterest makeupInterest) throws Exception {
		session.insert(NAMESPACE + ".create", makeupInterest);
	}

	@Override
	public List<MakeupInterest> read(int user_no) throws Exception {
		return session.selectList(NAMESPACE + ".read", user_no);
	}

	@Override
	public void update(MakeupInterest makeupInterest) throws Exception {
		session.update(NAMESPACE + ".update", makeupInterest);
	}

	@Override
	public void delete(int mic_no) throws Exception {
		session.delete(NAMESPACE + ".delete", mic_no);
	}

}
