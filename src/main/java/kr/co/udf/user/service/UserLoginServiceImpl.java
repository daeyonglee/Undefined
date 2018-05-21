package kr.co.udf.user.service;

import java.util.Date;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.user.dao.UserDao;
import kr.co.udf.user.domain.User;

@Service
public class UserLoginServiceImpl implements UserLoginService {

	@Inject
	UserDao dao;
	
	@Override
	public User login(User user) {
		return dao.login(user);
	}

	@Override
	public void keepLogin(String no, String sessionId, Date next) {
		dao.keepLogin(no, sessionId, next);
	}

	@Override
	public User checkLoginBefore(String value) {
		return dao.checkUserWithSessionKey(value);
	}
}
