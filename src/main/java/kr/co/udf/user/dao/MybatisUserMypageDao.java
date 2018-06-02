package kr.co.udf.user.dao;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.user.domain.Login;
import kr.co.udf.user.domain.User;
import kr.co.udf.user.domain.UserDTO;

@Repository
public class MybatisUserMypageDao implements UserMypageDao{

	@Inject
	private SqlSession session;
	
	private static final String NAMESPACE = "kr.co.udf.user.dao.UserMypageDao";
	
	/**
	 * 나의정보관리 비밀번호 확인
	 * @param login
	 * @return
	 */
	@Override
	public Object myinfo(Login login) {
		
		Object obj = null;
		
		if ("users".equals(login.getRole())) {
			obj = session.selectOne(NAMESPACE+".myinfoUsers", login);
		}
		if ("dc".equals(login.getRole())) {
			obj = session.selectOne(NAMESPACE+".myinfoDress", login);
		}
		if ("mc".equals(login.getRole())) {
			obj = session.selectOne(NAMESPACE+".myinfoMakeup", login);
		}
		if ("sc".equals(login.getRole())) {
			obj = session.selectOne(NAMESPACE+".myinfoStudio", login);
		}
		
		return obj;
	}

	/**
	 * 나의 정보관리 정보 수정하기 (일반 사용자)
	 * @param user
	 */
	@Override
	public void userupdate(UserDTO user) {
		
		Map<String, Object> map = new HashMap<>();
		map.put("user", user);
		map.put("addr", user.getPostcode()+"^^"+user.getAddr()+"^^"+user.getAddrdetail());
		session.update(NAMESPACE+".userupdate", map);
	}

}
