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
	public List<AuctionBid> bidListByUser(int userNo, int applyNo, String type) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("userNo", userNo);
		paramMap.put("applyNo", applyNo);
		paramMap.put("type", type);
		return session.selectList(NAMESPACE + ".bidListByUser", paramMap);
	}

	@Override
	public List<Auction> winListByUser(int userNo) throws Exception {
		return session.selectList(NAMESPACE + ".winListByUser", userNo);
	}

	@Override
	public AuctionBid readBid(int userNo, int applyNo, String type) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("userNo", userNo);
		paramMap.put("applyNo", applyNo);
		paramMap.put("type", type);
		return session.selectOne(NAMESPACE + ".readBid", paramMap);
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


}
