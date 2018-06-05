package kr.co.udf.auction.service;

import java.util.List;

import kr.co.udf.auction.domain.Auction;
import kr.co.udf.auction.domain.AuctionBid;
import kr.co.udf.common.company.domain.DressCompany;
import kr.co.udf.common.company.domain.MakeupCompany;
import kr.co.udf.common.company.domain.StudioCompany;

public interface AuctionBidService {

	/** 타입 별 회사 정보 조회 */
	public MakeupCompany searchMakeupCompany(int no) throws Exception;

	public StudioCompany searchStudioCompany(int no) throws Exception;

	public DressCompany searchDressCompany(int no) throws Exception;

	/** 타입 별 입찰서 등록 */
	public void createMakeupBid(AuctionBid bid) throws Exception;

	public void createStudioBid(AuctionBid bid) throws Exception;

	public void createDressBid(AuctionBid bid) throws Exception;

	/** 사용자 별 입찰서 내역 조회 */
	public List<AuctionBid> listByUser(int userNo) throws Exception;

	// 게시물 낙찰상세조회
	public AuctionBid winread(int no, String type) throws Exception;
}
