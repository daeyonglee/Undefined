package kr.co.udf.auction;


import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.udf.auction.dao.AuctionBidDao;
import kr.co.udf.auction.dao.MypageBidDao;
import kr.co.udf.auction.domain.AuctionBid;
import kr.co.udf.auction.service.AuctionBidService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml", "file:src/main/webapp/WEB-INF/spring/**/servlet-context.xml"})
public class MyBatisAuctionBidDaoTest {
	
	@Inject
	private AuctionBidDao dao;
	
	@Inject
	private MypageBidDao myDao;

	private Logger logger = Logger.getLogger(MyBatisAuctionBidDaoTest.class);
	
	//@Test
	public void createMakeupTest() throws Exception{
		AuctionBid bid = new AuctionBid();
		
		bid.setCompanyNo(42);
		bid.setApplyNo(182);
		bid.setUserNo(1);
		
		dao.createMakeupBid(bid);
		logger.info("신규 등록된 낙찰서 : " + bid);
	}
	
	//@Test
	public void createStudioTest2() throws Exception{
		AuctionBid bid = new AuctionBid();
		
		bid.setCompanyNo(23);
		bid.setApplyNo(1);
		bid.setUserNo(1);
		
//		dao.createStudio(bid);
		logger.info("신규 등록된 [studio] 낙찰서 : " + bid);
	}
	
	//@Test
	public void createDressTest() throws Exception{
		AuctionBid bid = new AuctionBid();
		
		bid.setCompanyNo(11);
		bid.setApplyNo(93);
		bid.setUserNo(1);
		
//		dao.createDress(bid);
		logger.info("신규 등록된 [dress] 낙찰서 : " + bid);
	}
	
	
	//@Test
	public void listAllTest() throws Exception{
		int userNo = 1;
		logger.info(dao.listByUser(userNo));
	}
	
	//@Test
	public void listByApplyNoTest() throws Exception{
		AuctionBid bid = new AuctionBid();
		bid.setUserNo(1);
		bid.setApplyNo(142);
		
		logger.info(dao.listByApplyNo(bid));
	}

	//@Test
	public void ApplyListByUserTest() throws Exception{
		logger.info(myDao.applyListByUser(1));
		
	}
	
	//@Test
	public void winListByUserTest() throws Exception{
		logger.info(myDao.winListByUser(1));
	}
	
	//@Test
	public void bidListByUserTest() throws Exception{
		int applyNo = 2;
		int userNo = 1;
		String type = "makeup";
		//logger.info(myDao.bidListByUser(userNo, applyNo, type));
	}
	
	//@Test
	public void readBid() throws Exception{
		int applyNo = 182;
		int userNo = 1;
		String type = "makeup";
		
		//logger.info(myDao.readBid(userNo, applyNo, type));
		
	}

	//@Test
	public void updateMakeupBidTest() throws Exception{
		int applyNo = 182;
		int userNo = 1;
		String stat = "낙찰대기중";
		
		myDao.updateMakeupStat(userNo, applyNo, stat);
	}
	
	//@Test
	public void createStudioProd() throws Exception{
		AuctionBid bid = new AuctionBid();
		bid.setBidNo(1);
		bid.setUserNo(2);
		bid.setApplyNo(13);
		bid.setCompanyNo(1);
		bid.setProductNo(2);
		bid.setDiscount(5);
		bid.setMeetDate("2018-06-21");
		
		dao.createStudioProd(bid);
		logger.info(bid);
		
	}

	@Test
	public void SearchStudioProd() throws Exception{
		int companyNo = 1;
		logger.info(dao.searchStudioProduct(companyNo));
		
		
	}
	
	
	
	

}
 