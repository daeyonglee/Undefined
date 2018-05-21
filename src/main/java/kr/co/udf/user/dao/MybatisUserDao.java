package kr.co.udf.user.dao;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.user.domain.User;

@Repository
public class MybatisUserDao implements UserDao {

	private static final String NAMESPACE = "kr.co.udf.user.dao.UserDao";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public User login(User user) {
		return sqlSession.selectOne(NAMESPACE+".login", user);
	}

	@Override
	public void keepLogin(String no, String sessionId, Date next) {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("no", no);
		paramMap.put("sessionId", sessionId);
		paramMap.put("next", next);
		
		sqlSession.update(NAMESPACE+".keepLogin", paramMap);
	}

	@Override
	public User checkUserWithSessionKey(String value) {
		return sqlSession.selectOne(NAMESPACE+".checkUserWithSessionKey", value);
	}
}
