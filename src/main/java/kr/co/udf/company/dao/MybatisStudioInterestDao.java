package kr.co.udf.company.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.common.company.domain.StudioCompany;
import kr.co.udf.company.domain.StudioInterest;

@Repository
public class MybatisStudioInterestDao implements StudioInterestDao {

	private static final String NAMESPACE = "kr.co.udf.company.dao.StudioInterestDao";
	
	@Inject
	private SqlSession session;
	
	/** 관심업체 추가 */
	@Override
	public void create(StudioInterest studioInterest) throws Exception {
		session.insert("cart.insertCart", studioInterest);
	}

	@Override
	public List<StudioInterest> read(int userNo) throws Exception {
		return session.selectList("cart.insertCart", userNo);
	}

	@Override
	public void update(StudioInterest studioInterest) throws Exception {
		session.update("cart.insertCart", studioInterest);
	}

	@Override
	public void delete(int sicNo) throws Exception {
		session.delete("cart.insertCart", sicNo);
	}

}
