package kr.co.udf.user.dao;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import kr.co.udf.user.domain.CompanyDTO;
import kr.co.udf.user.domain.Kakao;
import kr.co.udf.user.domain.Login;
import kr.co.udf.user.domain.User;
import kr.co.udf.user.domain.UserDTO;

@Repository
public class MybatisUserJoinDao implements UserJoinDao {

	@Inject
	private SqlSession session;
	
	private static final String NAMESPACE = "kr.co.udf.user.dao.UserJoinDao";
	
	@Override
	public void userjoin(UserDTO dto) {
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("user", dto);
		map.put("tel", dto.getTel());
		map.put("addr", dto.getPostcode()+"^^"+dto.getAddr()+"^^"+dto.getAddrdetail());
		
		session.insert(NAMESPACE+".userjoin", map);
	}

	@Override
	public void companyjoin(CompanyDTO dto, String uploadFileName) {
		Map<String, Object> map = new HashMap<>();
		
		map.put("company", dto);
		map.put("image", uploadFileName);
		map.put("addr", dto.getPostcode()+"^^"+dto.getAddr()+"^^"+dto.getAddrdetail());
		
		if (dto.getCompanyType().equals("dress")) {
			session.insert(NAMESPACE+".companyjoinDress", map);
		}
		if (dto.getCompanyType().equals("makeup")) {
			session.insert(NAMESPACE+".companyjoinMakeup", map);
		}
		if (dto.getCompanyType().equals("studio")) {
			session.insert(NAMESPACE+".companyjoinStudio", map);
		}
	}

	@Override
	public Login emailcheck(Login login) {
		return session.selectOne(NAMESPACE+".emailcheck", login);
	}

	@Override
	public void kakaojoin(Kakao kakao) {
		session.insert(NAMESPACE+".kakaojoin", kakao);
	}

	@Override
	public User userSelect(UserDTO dto) {
		return session.selectOne(NAMESPACE+".userSelect", dto);
	}
}
