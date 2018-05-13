package kr.or.udf.mysql;

import java.sql.DriverManager;
import java.sql.SQLException;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mysql.jdbc.Connection;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class MySqlJdbcTest {

	private static final Logger logger = Logger.getLogger(MySqlJdbcTest.class);
	
	@Inject
	SqlSession sqlSession;
	
//	@Test
	public void test() throws ClassNotFoundException, SQLException {
		Connection con = null;
		
		Class.forName("com.mysql.jdbc.Driver");
		con = (Connection) DriverManager.getConnection("jdbc:mysql://주소:포트번호/DB명", "아이디", "비밀번호");
		
		logger.debug(con);
	}
	
	// jasypt로 암호화
//	@Test
	public void test1() throws Exception {
		StandardPBEStringEncryptor encryptor = new StandardPBEStringEncryptor();
		encryptor.setPassword("내가정하는 아무거나 키 값");
		
		String url = encryptor.encrypt("jdbc:mysql://주소:포트번호/DB명");
		String username = encryptor.encrypt("dbuser");
		String password = encryptor.encrypt("password");
		
		logger.info(url);
		logger.info(username);
		logger.info(password);
	}
	
	@Test
	public void test2() throws Exception {
		logger.info(sqlSession);
	}
}
