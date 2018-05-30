package kr.co.udf.auction.dao;

import java.util.List; 

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import kr.co.udf.auction.domain.Auction;
import kr.co.udf.common.web.Params;
import kr.co.udf.common.web.SearchParams;

@Repository
public class MyBatisAuctionApplyDao implements AuctionApplyDao {
	
	private static final String NAMESPACE = "kr.co.udf.auction.dao.MyBatisAuctionApplyDao";
	
	Logger logger = Logger.getLogger(MyBatisAuctionApplyDao.class);
	
	@Inject
	private SqlSession session;


	@Override
	public void createStudio(Auction auction) throws Exception {
		session.insert(NAMESPACE + ".createStudio", auction);

	}

	@Override
	public void createDress(Auction auction) throws Exception {
		session.insert(NAMESPACE + ".createDress", auction);
		
	}

	@Override
	public void createMakeup(Auction auction) throws Exception {
		session.insert(NAMESPACE + ".createMakeup", auction);
	}		

	@Override
	public Auction read(int no) throws Exception {
		// TODO Auto-generated method stub
		return null; 
	}

	@Override
	public void update(Auction auction) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int no) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Auction> listAll() throws Exception {
		return session.selectList(NAMESPACE + ".listAll");
	}

	@Override
	public List<Auction> listParams(SearchParams params) throws Exception {
		return session.selectList(NAMESPACE + ".listParams", params);
	}

	@Override
	public int countPage() throws Exception {
		return session.selectOne(NAMESPACE + ".countPage");
	}
	

	@Override
	public List<Auction> listByStudio(SearchParams params) throws Exception {
		return session.selectList(NAMESPACE + ".listByStudio", params);
	}

	@Override
	public List<Auction> listByDress(SearchParams params) throws Exception {
		return session.selectList(NAMESPACE + ".listByDress", params);

	}

	@Override
	public List<Auction> listByMakeup(SearchParams params) throws Exception {
		return session.selectList(NAMESPACE + ".listByMakeup", params);

	}

	@Override
	public int listByTypeCount() throws Exception {
		return session.selectOne(NAMESPACE + ".listByTypeCount");
	}

}
