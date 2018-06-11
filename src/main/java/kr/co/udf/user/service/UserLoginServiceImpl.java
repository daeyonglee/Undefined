package kr.co.udf.user.service;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.user.dao.UserDao;
import kr.co.udf.user.domain.Kakao;
import kr.co.udf.user.domain.Login;

@Service
public class UserLoginServiceImpl implements UserLoginService {

	@Inject
	UserDao dao;
	
	@Override
	public HashMap<String, Object> login(Login login) {
		return dao.login(login);
	}

	@Override
	public void keepLogin(BigDecimal no, String sessionId, Date next, String role) {
		dao.keepLogin(no, sessionId, next, role);
	}

	@Override
	public Login checkLoginBefore(String value) {
		return dao.checkUserWithSessionKey(value);
	}
	
	@Override
	public Login logincheck(Login dto) {
		return dao.logincheck(dto);
	}

	@Override
	public Kakao kakaocheck(Kakao k) {
		return dao.kakaocheck(k);
	}
}
