package kr.co.udf.user.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.user.dao.UserMypageDao;
import kr.co.udf.user.domain.Login;
import kr.co.udf.user.domain.UserDTO;

@Service
public class UserMypageServiceImpl implements UserMypageService{

	@Inject
	private UserMypageDao dao;
	
	/**
	 * 나의정보관리 비밀번호 확인
	 * @param login
	 * @return
	 */
	@Override
	public Object myinfo(Login login) {
		return dao.myinfo(login);
	}
	
	/**
	 * 나의 정보관리 정보 수정하기 (일반 사용자)
	 * @param user
	 */
	@Override
	public void userupdate(UserDTO user) {
		dao.userupdate(user);
	}
}
