package kr.co.udf.auction.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import kr.co.udf.auction.domain.Auction;
import kr.co.udf.common.web.SearchParams;

@Repository
public class MyBatisAuctionApplyDao implements AuctionApplyDao {
	
	private static final String NAMESPACE = "kr.co.udf.auction.dao.MyBatisAuctionApplyDao";
	
	Logger logger = Logger.getLogger(MyBatisAuctionApplyDao.class);
	
	@Inject
	private SqlSession session;


	@Override
	public void createStudio(Auction auction) throws Exception {
		session.insert(NAMESPACE + ".createStudio", auction);

	}

	@Override
	public void createDress(Auction auction) throws Exception {
		session.insert(NAMESPACE + ".createDress", auction);
		
	}

	@Override
	public void createMakeup(Auction auction) throws Exception {
		session.insert(NAMESPACE + ".createMakeup", auction);
	}		

	@Override
	public Auction read(int no , String type) throws Exception {
		
		Map<String, Object> map = new HashMap<>();
		map.put("no", no);
		map.put("type", type);
		
		Auction list = session.selectOne(NAMESPACE+".read", map);
		
		return list;
	}

	@Override
	public void update(Auction auction) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int no, String type) throws Exception {
		
		if (type.equals("dress")) {
			session.delete(NAMESPACE+".deleteDress", no);
		} else if(type.equals("makeup")) {
			session.delete(NAMESPACE+".deleteMakeup", no);
		} else if(type.equals("studio")) {
			session.delete(NAMESPACE+".deleteStudio", no);
		}
	}

	@Override
	public List<Auction> listAll() throws Exception {
		return session.selectList(NAMESPACE + ".listAll");
	}

	@Override
	public List<Auction> listParams(SearchParams params) throws Exception {
		return session.selectList(NAMESPACE + ".listParams", params);
	}

	@Override
	public int countPage() throws Exception {
		return session.selectOne(NAMESPACE + ".countPage");
	}
	

	@Override
	public List<Auction> listByStudio(SearchParams params) throws Exception {
		return session.selectList(NAMESPACE + ".listByStudio", params);
	}

	@Override
	public List<Auction> listByDress(SearchParams params) throws Exception {
		return session.selectList(NAMESPACE + ".listByDress", params);

	}

	@Override
	public List<Auction> listByMakeup(SearchParams params) throws Exception {
		return session.selectList(NAMESPACE + ".listByMakeup", params);

	}

	@Override
	public int listByTypeCount() throws Exception {
		return session.selectOne(NAMESPACE + ".listByTypeCount");
	}
	
	@Override
	public List<Auction> realtimelist() throws Exception {
		return session.selectList(NAMESPACE+".realtimelist");
	}
	
	@Override
	public List<Auction> winrealtimelist() throws Exception {
		return session.selectList(NAMESPACE+ ".winrealtimelist");
	}

	@Override
	public List<Auction> dressrealtimelist() throws Exception {
		return session.selectList(NAMESPACE+ ".dressrealtimelist");
	}

	@Override
	public List<Auction> dresswinrealtimelist() throws Exception {
		return session.selectList(NAMESPACE+ ".dresswinrealtimelist");
	}

	@Override
	public List<Auction> makeuprealtimelist() throws Exception {
		return session.selectList(NAMESPACE+ ".makeuprealtimelist");
	}

	@Override
	public List<Auction> makeupwinrealtimelist() throws Exception {
		return session.selectList(NAMESPACE+ ".makeupwinrealtimelist");
	}
}
