package kr.co.udf.user.dao;

import kr.co.udf.user.domain.CompanyDTO;
import kr.co.udf.user.domain.Login;
import kr.co.udf.user.domain.UserDTO;

public interface UserMypageDao {
	
	/**
	 * 나의정보관리 비밀번호 확인
	 * @param login
	 * @return
	 */
	public Object myinfo(Login login);
	
	/**
	 * 나의 정보관리 정보 수정하기 (일반 사용자)
	 * @param user
	 */
	public void userupdate(UserDTO user);
	
	/**
	 * 나의 정보관리 정보 수정하기 (업체)
	 * @param company
	 */
	public void companyupdate(CompanyDTO company);
}
