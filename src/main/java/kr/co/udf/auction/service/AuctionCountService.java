package kr.co.udf.auction.service;

import kr.co.udf.auction.domain.AuctionCount;

public interface AuctionCountService {

	// 전체 회원 수 조회
	// 스드메 제휴 업체 수 조회
	// 역경매 신청 현황 수 조회
	public AuctionCount count() throws Exception;
}
