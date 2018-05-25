package kr.co.udf.user;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.udf.user.dao.MybatisUserDao;
import kr.co.udf.user.dao.UserDao;
import kr.co.udf.user.domain.Login;
import kr.co.udf.user.domain.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml",
		                         "file:src/main/webapp/WEB-INF/spring/**/servlet-context.xml"})
public class UserLoginTest {

	@Inject
	UserDao dao;
	
	@Test
	public void test() {
		dao.login(new Login("admin@undefined.com",  "q1w2e3r4", false));
	}

}
