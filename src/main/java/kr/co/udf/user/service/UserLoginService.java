package kr.co.udf.user.service;

import java.util.Date;

import kr.co.udf.user.domain.User;

public interface UserLoginService {

	public User login(User user);
	public void keepLogin(String no, String sessionId, Date next);
	public User checkLoginBefore(String value);
	
}
