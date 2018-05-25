package kr.co.udf.company.dao;

import java.util.Date;

import kr.co.udf.user.domain.User;

public interface CompanyDao {
	
	public User login(User user);
	
	public void keepLogin(String no, String sessionId, Date next);
	
	public User checkUserWithSessionKey(String value);
	
}
