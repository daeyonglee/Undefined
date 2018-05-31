package kr.co.udf.auction;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.udf.auction.dao.AuctionDao;
import kr.co.udf.auction.domain.Auction;
import kr.co.udf.user.dao.MybatisUserDao;
import kr.co.udf.user.dao.UserDao;
import kr.co.udf.user.domain.Login;
import kr.co.udf.user.domain.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml",
		                         "file:src/main/webapp/WEB-INF/spring/**/servlet-context.xml"})
public class AuctionCountTest {

	@Inject
	AuctionDao dao;
	
	private static final Logger logger = Logger.getLogger(AuctionCountTest.class);
	
	@Test
	public void test() {
		logger.info(dao.count()); 
	}
}
