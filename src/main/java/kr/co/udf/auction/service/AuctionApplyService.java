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
	public Auction read(int no, String type) throws Exception;

	// 게시물 낙찰상세조회
	public Auction winread(int no, String type) throws Exception;

	// 역경매 신청서 수정
	public void modify(Auction auction) throws Exception;

	// 역경매 신청서 삭제
	public void delete(int no, String type) throws Exception;

	// 전체 회원의 역경매 리스트 조회
	public List<Auction> listAll() throws Exception;

	// 전체 회원의 역경매 리스트 페이징 처리
	public List<Auction> listParams(SearchParams params) throws Exception;

	// 전체 게시물 조회 + 낙찰 페이징 처리
	public List<Auction> winlistParams(SearchParams params) throws Exception;

	// 전체 게시물 수
	public int countPage() throws Exception;

	// 스.드.메 카테고리 별 게시물 조회
	public List<Auction> listByDress(SearchParams params) throws Exception;

	public List<Auction> listByStudio(SearchParams params) throws Exception;

	public List<Auction> listByMakeup(SearchParams params) throws Exception;

	// 카테고리별 낙찰게시물 조회 + 페이징 처리
	public List<Auction> winlistByStudio(SearchParams params) throws Exception;

	public List<Auction> winlistByDress(SearchParams params) throws Exception;

	public List<Auction> winlistByMakeup(SearchParams params) throws Exception;

	// 스.드.메 카테고리 별 총 게시물 수
	public int listByTypeCount(SearchParams params) throws Exception;

	// 낙찰 카테고리별 게시물 수 조회
	public int winlistByTypeCount(SearchParams params) throws Exception;

	// 스튜디오 입찰 실시간 화면 조회
	public List<Auction> realtimelist() throws Exception;

	// 스튜디오 낙찰 실시간 화면 조회
	public List<Auction> winrealtimelist() throws Exception;

	// 드레스 입찰 실시간 화면 조회
	public List<Auction> dressrealtimelist() throws Exception;

	// 드레스 낙찰 실시간 화면 조회
	public List<Auction> dresswinrealtimelist() throws Exception;

	// 메이크업 입찰 실시간 화면 조회
	public List<Auction> makeuprealtimelist() throws Exception;

	// 메이크업 낙찰 실시간 화면 조회
	public List<Auction> makeupwinrealtimelist() throws Exception;
}
