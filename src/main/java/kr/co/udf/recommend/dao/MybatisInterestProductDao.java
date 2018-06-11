package kr.co.udf.recommend.dao;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

@Repository
public class MybatisInterestProductDao implements InterestProductDao {

	Logger logger = Logger.getLogger(MybatisInterestProductDao.class);
	
	String namespace = "kr.co.udf.recommend.dao.InterestProductDao";
	
	@Inject
	SqlSession session;

	@Override
	public List<Map<String, Object>> getSIPList(BigDecimal user_no) {
		return session.selectList(namespace + ".getSIPList");
	}

	@Override
	public List<Map<String, Object>> getDIPList(BigDecimal user_no) {
		return session.selectList(namespace + ".getDIPList");
	}

	@Override
	public List<Map<String, Object>> getMIPList(BigDecimal user_no) {
		return session.selectList(namespace + ".getMIPList");
	}
}
