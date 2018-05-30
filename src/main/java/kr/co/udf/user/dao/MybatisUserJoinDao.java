package kr.co.udf.user.dao;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.user.domain.CompanyDTO;
import kr.co.udf.user.domain.UserDTO;

@Repository
public class MybatisUserJoinDao implements UserJoinDao{

	@Inject
	private SqlSession session;
	
	private static final String NAMESPACE = "kr.co.udf.user.dao.UserJoinDao";
	
	@Override
	public void userJoin(UserDTO user) {
		
		String fullAddr = user.getPostcode() + "^^" + user.getAddr() + "^^" + user.getAddrdetail();
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("user", user);
		map.put("fullAddr", fullAddr);
		
		session.insert(NAMESPACE+".userjoin", map);
		
	}

	@Override
	public void companyJoin(CompanyDTO company) {
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("company", company);
		map.put("image", company.getFile().getOriginalFilename());
		
		if (company.getCompanyType().equals("dress")) {
			session.insert(NAMESPACE+".companyjoinDress", map);
		}
		if (company.getCompanyType().equals("makeup")) {
			session.insert(NAMESPACE+".companyjoinMakeup", map);
		}
		if (company.getCompanyType().equals("studio")) {
			session.insert(NAMESPACE+".companyjoinStudio", map);
		}
	}
}
