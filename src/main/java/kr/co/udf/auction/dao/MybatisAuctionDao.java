package kr.co.udf.auction.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.auction.domain.Auction;
import kr.co.udf.auction.domain.AuctionCount;

@Repository
public class MybatisAuctionDao implements AuctionDao{

	private static final String NAMESPACE = "kr.co.udf.auction.dao.AuctionDao";
	
	@Inject
	private SqlSession session;
	
	@Override
	public void create(Auction auction) throws Exception {
		// TODO Auto-generated method stub
		
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
	public AuctionCount count() {
		return session.selectOne(NAMESPACE+".count");
	}

}
