package kr.co.udf.user.dao;

import kr.co.udf.user.domain.CompanyDTO;
import kr.co.udf.user.domain.Kakao;
import kr.co.udf.user.domain.Login;
import kr.co.udf.user.domain.User;
import kr.co.udf.user.domain.UserDTO;

public interface UserJoinDao {

	/**
	 * 일반 사용자 회원가입 
	 * @param dto
	 */
	public void userjoin(UserDTO dto);
	
	/**
	 * 업체 회원가입
	 * @param dto
	 */
	public void companyjoin(CompanyDTO dto, String uploadFileName);
	
	/**
	 * 이메일 존재 유무 체크
	 * @param login
	 * @return
	 */
	public Login emailcheck(Login login);
	
	public void kakaojoin(Kakao kakao);
	public User userSelect(UserDTO dto);
}
