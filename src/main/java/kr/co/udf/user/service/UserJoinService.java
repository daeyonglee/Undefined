package kr.co.udf.user.service;

import java.io.IOException;

import kr.co.udf.user.domain.CompanyDTO;
import kr.co.udf.user.domain.UserDTO;

public interface UserJoinService {

	/**
	 * 일반 사용자 회원가입
	 * @param dto
	 */
	public void userjoin(UserDTO dto);
	
	/**
	 * 업체 회원가입
	 * @param dto
	 */
	public void companyjoin(CompanyDTO dto) throws IOException, Exception;
}
