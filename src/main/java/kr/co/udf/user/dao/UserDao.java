package kr.co.udf.user.dao;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;

import kr.co.udf.user.domain.Kakao;
import kr.co.udf.user.domain.Login;
import kr.co.udf.user.domain.User;

public interface UserDao {
	
	public HashMap<String, Object> login(Login login);
	
	public void keepLogin(BigDecimal no, String sessionId, Date next, String role);
	
	public Login checkUserWithSessionKey(String value);
	
	public Login logincheck(Login dto);
	
	public Kakao kakaocheck(Kakao k);
	
	public User kakaologin(BigDecimal userNo);
}
