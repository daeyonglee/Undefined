package kr.co.udf.user.dao;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.user.domain.CompanyDTO;
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
	public void companyjoin(CompanyDTO dto) {
		Map<String, Object> map = new HashMap<>();
		
		map.put("company", dto);
		map.put("image", dto.getMainImg().getOriginalFilename());
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
}
