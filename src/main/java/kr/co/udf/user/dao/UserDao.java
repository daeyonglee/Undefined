package kr.co.udf.user.dao;

import java.util.Date;

import kr.co.udf.user.domain.User;

public interface UserDao {
	
	public User login(User user);
	
	public void keepLogin(String no, String sessionId, Date next);
	
	public User checkUserWithSessionKey(String value);
	
}
