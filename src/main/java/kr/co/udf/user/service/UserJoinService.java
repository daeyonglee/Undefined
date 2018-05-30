package kr.co.udf.user.service;

import java.io.IOException;

import kr.co.udf.user.domain.CompanyDTO;
import kr.co.udf.user.domain.UserDTO;

public interface UserJoinService {

	/**
	 * 일반 회원가입
	 */
	public void userJoin(UserDTO user);
	
	/**
	 * 업체 회원가입
	 */
	public void companyJoin(CompanyDTO company) throws IOException, Exception;
	
}
