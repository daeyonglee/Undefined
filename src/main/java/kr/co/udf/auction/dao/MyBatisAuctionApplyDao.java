package kr.co.udf.auction.dao;

import java.util.List; 

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.auction.domain.Auction;

@Repository
public class MyBatisAuctionApplyDao implements AuctionApplyDao {
	
	private static final String NAMESPACE = "kr.co.udf.auction.dao.MyBatisAuctionDao";
	
	@Inject
	private SqlSession session;

	@Override
	public void create(Auction auction) throws Exception {
		session.insert(NAMESPACE + ".create", auction);

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

}
