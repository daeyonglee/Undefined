package kr.co.udf.auction.dao;

import java.util.List;

import kr.co.udf.auction.domain.Auction;
import kr.co.udf.common.web.Params;
import kr.co.udf.common.web.SearchParams;

public interface AuctionApplyDao {
	
	public void create(Auction auction) throws Exception;
	
	public Auction read(int no) throws Exception;
	
	public void update(Auction auction) throws Exception;
	
	public void delete(int no) throws Exception;
	
	public List<Auction> listAll() throws Exception;
	
	// 전체 게시물 페이징 처리
	public List<Auction> listParams(SearchParams params) throws Exception;
	
	// 전체 게시물 수 조회
	public int countPage(Params params) throws Exception;
	
	public List<Auction> realtimelist() throws Exception;
	
}
