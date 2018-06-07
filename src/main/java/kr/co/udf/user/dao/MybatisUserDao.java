package kr.co.udf.user.dao;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.user.domain.Login;
import kr.co.udf.user.domain.User;

@Repository
public class MybatisUserDao implements UserDao {

	private static final String NAMESPACE = "kr.co.udf.user.dao.UserDao";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public HashMap<String, Object> login(Login login) {
		return sqlSession.selectOne(NAMESPACE+".login", login);
	}

	@Override
	public void keepLogin(BigDecimal no, String sessionId, Date next, String role) {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("no", no);
		paramMap.put("sessionId", sessionId);
		paramMap.put("next", next);
		paramMap.put("role", role);
		
		sqlSession.update(NAMESPACE+".keepLogin", paramMap);
	}

	@Override
	public Login checkUserWithSessionKey(String value) {
		return sqlSession.selectOne(NAMESPACE+".checkUserWithSessionKey", value);
	}
	
	@Override
	public Login logincheck(Login dto) {
		return sqlSession.selectOne(NAMESPACE+".logincheck", dto);
	}
}
