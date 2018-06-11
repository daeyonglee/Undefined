package kr.co.udf.auction.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.auction.dao.MypageBidDao;
import kr.co.udf.auction.domain.Auction;
import kr.co.udf.auction.domain.AuctionBid;

@Service
public class MypageBidServiceImpl implements MypageBidService {
	
	@Inject
	private MypageBidDao dao;

	@Override
	public List<Auction> applyListByUser(int userNo) throws Exception {
		return dao.applyListByUser(userNo);
	}
	
	@Override
	public List<AuctionBid> studioBidListByUser(int userNo, int applyNo) throws Exception {
		return dao.studioBidListByUser(userNo, applyNo);
	}


	@Override
	public List<AuctionBid> dressBidListByUser(int userNo, int applyNo) throws Exception {
		return dao.dressBidListByUser(userNo, applyNo);
	}


	@Override
	public List<AuctionBid> makeupBidListByUser(int userNo, int applyNo) throws Exception {
		return dao.makeupBidListByUser(userNo, applyNo);
	}


	@Override
	public List<Auction> winListByUser(int userNo) throws Exception {
		return dao.winListByUser(userNo);
	}



	@Override
	public void updateDressStat(int userNo, int applyNo, String stat) throws Exception {
		dao.updateDressStat(userNo, applyNo, stat);
		
	}


	@Override
	public void updateStudioStat(int userNo, int applyNo, String stat) throws Exception {
		dao.updateStudioStat(userNo, applyNo, stat);
		
	}


	@Override
	public void updateMakeupStat(int userNo, int applyNo, String stat) throws Exception {
		dao.updateMakeupStat(userNo, applyNo, stat);
		
	}

	@Override
	public AuctionBid readStudioBid(int userNo, int applyNo, int bidNo) throws Exception {
		return dao.readStudioBid(userNo, applyNo, bidNo);
	}

	@Override
	public AuctionBid readMakeupBid(int userNo, int applyNo, int bidNo) throws Exception {
		return null;
	}

	@Override
	public AuctionBid readDressBid(int userNo, int applyNo, int bidNo) throws Exception {
		return null;
	}

	@Override
	public int countStudioBid(int userNo, int applyNo) throws Exception {
		return dao.countStudioBid(userNo, applyNo);
	}

	@Override
	public int countMakeupBid(int userNo, int applyNo) throws Exception {
		return dao.countMakeupBid(userNo, applyNo);
	}

	@Override
	public int countDressBid(int userNo, int applyNo) throws Exception {
		return dao.countDressBid(userNo, applyNo);
	}

	@Override
	public void bidSelect(AuctionBid bid) {
		dao.bidSelect(bid);
	}



}
