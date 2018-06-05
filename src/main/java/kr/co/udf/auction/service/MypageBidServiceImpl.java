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
	public List<AuctionBid> bidListByUser(int userNo, int applyNo, String type) throws Exception {
		return dao.bidListByUser(userNo, applyNo, type);
	}


	@Override
	public List<Auction> winListByUser(int userNo) throws Exception {
		return dao.winListByUser(userNo);
	}


	@Override
	public AuctionBid readBid(int userNo, int applyNo, String type) throws Exception {
		return dao.readBid(userNo, applyNo, type);
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


}
