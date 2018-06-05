package kr.co.udf.auction.dao;

import kr.co.udf.auction.domain.Auction;
import kr.co.udf.auction.domain.AuctionCount;

public interface AuctionDao {
	
	public void create(Auction auction) throws Exception;
	
	public Auction read(int no) throws Exception;
	
	public void update(Auction auction) throws Exception;
	
	public void delete(int no) throws Exception;
	
	public AuctionCount count() throws Exception;
	
}
