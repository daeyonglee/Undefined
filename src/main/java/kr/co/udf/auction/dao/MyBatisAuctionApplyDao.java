package kr.co.udf.auction.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.auction.domain.Auction;
import kr.co.udf.common.web.Params;
import kr.co.udf.common.web.SearchParams;

@Repository
public class MyBatisAuctionApplyDao implements AuctionApplyDao {
	
	private static final String NAMESPACE = "kr.co.udf.auction.dao.MyBatisAuctionApplyDao";
	
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

	@Override
	public List<Auction> listParams(SearchParams params) throws Exception {
		return session.selectList(NAMESPACE + ".listParams", params);
	}

	@Override
	public int countPage(Params params) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public List<Auction> realtimelist() throws Exception {
		return session.selectList(NAMESPACE+ ".realtimelist");
	}

}
