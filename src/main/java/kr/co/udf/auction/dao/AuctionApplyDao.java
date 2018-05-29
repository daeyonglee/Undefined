package kr.co.udf.auction.dao;

import java.util.List;

import kr.co.udf.auction.domain.Auction;
import kr.co.udf.common.web.Params;
import kr.co.udf.common.web.SearchParams;

public interface AuctionApplyDao {
	
	// 게시물 신규 생성
	public void createStudio(Auction auction) throws Exception;
	public void createDress(Auction auction) throws Exception;
	public void createMakeup(Auction auction) throws Exception;
	
	// 게시물 상세조회
	public Auction read(int no) throws Exception;
	
	// 게시물 수정
	public void update(Auction auction) throws Exception;
	
	// 게시물 삭제
	public void delete(int no) throws Exception;
	
	// 전체 게시물 조회
	public List<Auction> listAll() throws Exception;
	
	// 전체 게시물 수 조회
	public int countPage() throws Exception;
	
	// 전체 게시물 조회 + 페이징 처리
	public List<Auction> listParams(SearchParams params) throws Exception;
	

	// 카테고리별 게시물 조회 + 페이징 처리
	public List<Auction> listByStudio(SearchParams params) throws Exception;
	public List<Auction> listByDress(SearchParams params) throws Exception;
	public List<Auction> listByMakeup(SearchParams params) throws Exception;
	
	// 카테고리별 게시물 수 조회 
	public int listByTypeCount() throws Exception;
	
}
