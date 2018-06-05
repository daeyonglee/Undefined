package kr.co.udf.auction;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.security.auth.login.AccountException;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.udf.auction.dao.AuctionApplyDao;
import kr.co.udf.auction.domain.Auction;
import kr.co.udf.common.web.SearchParams;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml", "file:src/main/webapp/WEB-INF/spring/**/servlet-context.xml"})
public class MyBatisAuctionDaoTest {
	
	@Inject
	private AuctionApplyDao dao;

	private Logger logger = Logger.getLogger(MyBatisAuctionDaoTest.class);
	
	//@Test
	public void listAllTest() throws Exception {
		List<Auction> list = new ArrayList<Auction>();
		list = dao.listAll();
		
		logger.info("전체 리스트 : " + list); 
	}
	
	//@Test
	public void createTest() throws Exception{
		Auction auction = new Auction();
		auction.setType("makeup");
//		auction.setUserNo(1);
		auction.setLoc("제주시 제주읍");
		auction.setDate("2020-08-25");
		auction.setTime("15:00");	
		auction.setMemo("많은 입찰 플리즈~");		
		
//		dao.create(auction);
		logger.info(auction);
	}
	
	//@Test
	public void createTest2() throws Exception{
		Auction auction = new Auction();
		auction.setType("dress");
//		auction.setUserNo(2);
		auction.setLoc("제주시 제주읍");
		String day = "2020/08/25";
		String time = "17:00";
		auction.setDate(day+time);
	
		auction.setMemo("많은 입찰 플리즈2222~");		
		
//		dao.create(auction);
		logger.info(auction);
	}
	
	//@Test
	public void listParamsTest() throws Exception {
		SearchParams params = new SearchParams();
		params.setPage(1);
		params.setPerPageNum(10);
		
		List<Auction> list = dao.listParams(params);
		logger.info(list);
		
		
	}
	
	//@Test
	public void countPageTest() throws Exception{
		 int count = dao.countPage();
		 logger.info(count);
	}
	
	@Test
	public void listByTypeTest() throws Exception{
		String keyword = "dress";
//		List<Auction> list = dao.listByType(keyword);
//		logger.info(list);
	}
	@Test
	public void winListByStudio() throws Exception{
		SearchParams params = new SearchParams();
		params.setPage(1);
		params.setPerPageNum(10);
		
		logger.info(dao.winlistByStudio(params));
		
	}

}
 