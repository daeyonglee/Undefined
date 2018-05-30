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
import kr.co.udf.user.dao.UserJoinDao;
import kr.co.udf.user.domain.Login;
import kr.co.udf.user.domain.User;
import kr.co.udf.user.domain.UserDTO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml",
		                         "file:src/main/webapp/WEB-INF/spring/**/servlet-context.xml"})
public class UserJoinTest {

	@Inject
	UserJoinDao dao;
	
	@Test
	public void test() {
		dao.userJoin(new UserDTO(null, "lee@naver.com", "1234", "2022-02-21", "미스터 리", "06097", "서울 강남구 봉은사로 403 (삼성동, 하모니 빌딩)", "지하수로", 01033224444, 0, null, null));
	}

}
