package kr.co.udf.auction.service;

import java.util.List;

import kr.co.udf.auction.domain.Auction;
import kr.co.udf.common.web.SearchParams;

public interface AuctionApplyService {
	
	// 역경매 신청서 신규 생성
	public void createDress(Auction auction) throws Exception;
	public void createStudio(Auction auction) throws Exception;
	public void createMakeup(Auction auction) throws Exception;
	
	// 역경매 신청서 상세 조회
	public Auction read(int no) throws Exception;
	
	// 역경매 신청서 수정
	public void update(Auction auction) throws Exception;
	
	// 역경매 신청서 삭제
	public void delete(int no) throws Exception;
	
	// 전체 회원의 역경매 리스트 조회
	public List<Auction> listAll() throws Exception;
	
	// 전체 회원의 역경매 리스트 페이징 처리
	public List<Auction> listParams(SearchParams params) throws Exception;
	
<<<<<<< HEAD
	// 전체 게시물 수
	public int countPage() throws Exception;
=======
	public List<Auction> realtimelist() throws Exception;
>>>>>>> 9e4792a23aafeaa381f021f00efd7e91d3b1a6c4
	
	// 스.드.메 카테고리 별 게시물 조회
	public List<Auction> listByDress(SearchParams params) throws Exception;
	public List<Auction> listByStudio(SearchParams params) throws Exception;
	public List<Auction> listByMakeup(SearchParams params) throws Exception;
	
	// 스.드.메 카테고리 별 총 게시물 수
	public int listByTypeCount() throws Exception;
}
