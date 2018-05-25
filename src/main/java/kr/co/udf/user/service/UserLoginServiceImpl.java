package kr.co.udf.user.service;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.user.dao.UserDao;
import kr.co.udf.user.domain.Login;
import kr.co.udf.user.domain.User;

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
	public User checkLoginBefore(String value) {
		return dao.checkUserWithSessionKey(value);
	}
}
