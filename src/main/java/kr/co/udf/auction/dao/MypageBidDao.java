package kr.co.udf.auction.dao;

import java.util.List;

import kr.co.udf.auction.domain.Auction;
import kr.co.udf.auction.domain.AuctionBid;

public interface MypageBidDao {
	
	// 사용자 별 신청서 전체 리스트 조회
	public List<Auction> applyListByUser(int userNo) throws Exception;
	
	// 신청서 별 입찰서 리스트 조회()
	public List<AuctionBid> studioBidListByUser(int userNo, int applyNo) throws Exception;
	public List<AuctionBid> dressBidListByUser(int userNo, int applyNo) throws Exception;
	public List<AuctionBid> makeupBidListByUser(int userNo, int applyNo) throws Exception;
	
	
	// 사용자 별 낙찰된 신청서 전체 리스트 조회
	public List<Auction> winListByUser(int userNo) throws Exception;
	
	// 입찰서 내용 상세 조회
	public AuctionBid readStudioBid(int userNo, int applyNo, int bidNo) throws Exception;
	public AuctionBid readMakeupBid(int userNo, int applyNo, int bidNo) throws Exception;
	public AuctionBid readDressBid(int userNo, int applyNo, int bidNo) throws Exception;
	
	// 드레스 입찰서 상태 업데이트 ('입찰중' ->  '낙찰')
	public void updateDressStat(int userNo, int applyNo, String stat) throws Exception; 
	
	// 스튜디오 입찰서 상태 업데이트 ('입찰중' -> '낙찰')
	public void updateStudioStat(int userNo, int applyNo, String stat) throws Exception; 
	
	// 메이크업 입찰서 상태 업데이트 ('입찰중' -> '낙찰')
	public void updateMakeupStat(int userNo, int applyNo, String stat) throws Exception; 
	
	// 사용자와 신청서 별 입찰서 수 조회
	public int countStudioBid(int userNo, int applyNo) throws Exception;
	public int countMakeupBid(int userNo, int applyNo) throws Exception;
	public int countDressBid(int userNo, int applyNo) throws Exception;
	
	// 입찰서에 대한 낙철 상태 변경
	public void bidSelect(AuctionBid bid);

	
}
