package kr.co.udf.user.dao;

import kr.co.udf.user.domain.CompanyDTO;
import kr.co.udf.user.domain.UserDTO;

public interface UserJoinDao {

	public void userJoin(UserDTO user);
	
	public void companyJoin(CompanyDTO company);
	
}
