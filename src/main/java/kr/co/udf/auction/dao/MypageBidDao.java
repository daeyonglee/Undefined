package kr.co.udf.auction.dao;

import java.util.List;

import kr.co.udf.auction.domain.Auction;
import kr.co.udf.auction.domain.AuctionBid;

public interface MypageBidDao {
	
	// 사용자 별 신청서 전체 리스트 조회
	public List<Auction> applyListByUser(int userNo) throws Exception;
	
	// 신청서 별 입찰서 리스트 조회(userNo, applyNo, type을 변수로 받기)
	public List<AuctionBid> bidListByUser(int userNo, int applyNo, String type) throws Exception;
	
	// 사용자 별 낙찰된 신청서 전체 리스트 조회
	public List<Auction> winListByUser(int userNo) throws Exception;
	
	// 입찰서 내용 상세 조회
	public AuctionBid readBid(int userNo, int applyNo, String type) throws Exception;
	
	// 드레스 입찰서 상태 업데이트 ('입찰중' -> '낙찰대기중'/ '낙찰대기중' -> '낙찰')
	public void updateDressStat(int userNo, int applyNo, String stat) throws Exception; 
	
	// 스튜디오 입찰서 상태 업데이트 ('입찰중' -> '낙찰대기중'/ '낙찰대기중' -> '낙찰')
	public void updateStudioStat(int userNo, int applyNo, String stat) throws Exception; 
	
	// 메이크업 입찰서 상태 업데이트 ('입찰중' -> '낙찰대기중'/ '낙찰대기중' -> '낙찰')
	public void updateMakeupStat(int userNo, int applyNo, String stat) throws Exception; 

	
}
