package kr.co.udf.auction.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.auction.domain.Auction;
import kr.co.udf.auction.domain.AuctionBid;

@Repository
public class MyBatisMypageBidDao implements MypageBidDao {
	
	private static final String NAMESPACE = "kr.co.udf.auction.dao.MyBatisMypageBidDao";

	@Inject
	private SqlSession session;
	
	@Override
	public List<Auction> applyListByUser(int userNo) throws Exception {
		return session.selectList(NAMESPACE + ".applyListByUser", userNo);
	}

	@Override
	public List<AuctionBid> studioBidListByUser(int userNo, int applyNo) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();

		paramMap.put("userNo", userNo);
		paramMap.put("applyNo", applyNo);
		return session.selectList(NAMESPACE + ".studioBidListByUser", paramMap);
	}

	@Override
	public List<AuctionBid> dressBidListByUser(int userNo, int applyNo) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();

		paramMap.put("userNo", userNo);
		paramMap.put("applyNo", applyNo);
		return session.selectList(NAMESPACE + ".dressBidListByUser", paramMap);
	}

	@Override
	public List<AuctionBid> makeupBidListByUser(int userNo, int applyNo) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();

		paramMap.put("userNo", userNo);
		paramMap.put("applyNo", applyNo);
		return session.selectList(NAMESPACE + ".makeupBidListByUser", paramMap);
	}

	@Override
	public List<Auction> winListByUser(int userNo) throws Exception {
		return session.selectList(NAMESPACE + ".winListByUser", userNo);
	}

	@Override
	public AuctionBid readStudioBid(int userNo, int applyNo, int bidNo) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("userNo", userNo);
		paramMap.put("applyNo", applyNo);
		paramMap.put("bidNo", bidNo);
		return session.selectOne(NAMESPACE + ".readStudioBid", paramMap);
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
	public void updateDressStat(int userNo, int applyNo, String stat) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("userNo", userNo);
		paramMap.put("applyNo", applyNo);
		paramMap.put("stat", stat);
		session.update(NAMESPACE + ".updateDressStat", paramMap);
	}

	@Override
	public void updateStudioStat(int userNo, int applyNo, String stat) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("userNo", userNo);
		paramMap.put("applyNo", applyNo);
		paramMap.put("stat", stat);
		session.update(NAMESPACE + ".updateStudioStat", paramMap);
	}

	@Override
	public void updateMakeupStat(int userNo, int applyNo, String stat) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("userNo", userNo);
		paramMap.put("applyNo", applyNo);
		paramMap.put("stat", stat);
		session.update(NAMESPACE + ".updateMakeupStat", paramMap);
	}

	@Override
	public int countStudioBid(int userNo, int applyNo) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("userNo", userNo);
		paramMap.put("applyNo", applyNo);
		return session.selectOne(NAMESPACE + ".countStudioBid", paramMap);
	}

	@Override
	public int countMakeupBid(int userNo, int applyNo) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("userNo", userNo);
		paramMap.put("applyNo", applyNo);
		return session.selectOne(NAMESPACE + ".countMakeupBid", paramMap);
	}

	@Override
	public int countDressBid(int userNo, int applyNo) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("userNo", userNo);
		paramMap.put("applyNo", applyNo);
		return session.selectOne(NAMESPACE + ".countDressBid", paramMap);
	}

}
