package kr.co.udf.auction.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.auction.company.domain.DressCompany;
import kr.co.udf.auction.company.domain.MakeupCompany;
import kr.co.udf.auction.company.domain.StudioCompany;
import kr.co.udf.auction.domain.AuctionBid;
import kr.co.udf.auction.product.domain.DressProduct;
import kr.co.udf.auction.product.domain.MakeupProduct;
import kr.co.udf.auction.product.domain.StudioProduct;

@Repository
public class MyBatisAuctionBidDao implements AuctionBidDao {
	
	public static final String NAMESPACE = "kr.co.udf.auction.dao.MyBatisAuctionBidDao";
	
	@Inject
	private SqlSession session;

	@Override
	public void createDressBid(AuctionBid bid) throws Exception {
		session.insert(NAMESPACE + ".createDressBid", bid);

	}

	@Override
	public void createStudioBid(AuctionBid bid) throws Exception {
		session.insert(NAMESPACE + ".createStudioBid", bid);
	}

	@Override
	public void createMakeupBid(AuctionBid bid) throws Exception {
		session.insert(NAMESPACE + ".createMakeupBid", bid);

	}

	@Override
	public AuctionBid read(AuctionBid bid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public AuctionBid winread(int no, String type) throws Exception {
		
		Map<String, Object> map = new HashMap<>();
		map.put("no", no);
		map.put("type", type);
		
		AuctionBid list = session.selectOne(NAMESPACE+".winread", map);
		
		return list;
		
	}

	@Override
	public void delete(AuctionBid bid) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(AuctionBid bid) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public List<AuctionBid> listByUser(int userNo) throws Exception {
		return session.selectList(NAMESPACE + ".listByUser", userNo);
	}

	@Override
	public MakeupCompany searchMakeupCompany(int no) throws Exception {

		return session.selectOne(NAMESPACE + ".searchMakeupCompany", no);
	}
 
	@Override
	public StudioCompany searchStudioCompany(int no) throws Exception {

		return session.selectOne(NAMESPACE + ".searchStudioCompany", no);
	}

	@Override
	public DressCompany searchDressCompany(int no) throws Exception {

		return session.selectOne(NAMESPACE + ".searchDressCompany", no);
	}

	@Override
	public List<AuctionBid> listByApplyNo(AuctionBid bid) throws Exception {
		return session.selectList(NAMESPACE + ".listByApplyNo", bid);
	}

	@Override
	public void createDressProd(AuctionBid bid) throws Exception {
		
	}

	@Override
	public void createStudioProd(AuctionBid bid) throws Exception {
		session.insert(NAMESPACE + ".createStudioProd", bid);
	}

	@Override
	public void createMakeupProd(AuctionBid bid) throws Exception {
		
	}

	@Override
	public List<MakeupProduct> searchMakeupProduct(int companyNo) throws Exception {
		return null;
	}

	@Override
	public List<StudioProduct> searchStudioProduct(int companyNo) throws Exception {
		return session.selectList(NAMESPACE + ".searchStudioProduct", companyNo);
	}

	@Override
	public List<DressProduct> searchDressProduct(int companyNo) throws Exception {
		return null;
	}

	@Override
	public StudioProduct readStudioProduct(int productNo, int companyNo) throws Exception {
		Map<String, Object> map = new HashMap<>();
		
		map.put("productNo", productNo);
		map.put("companyNo", companyNo);
		
		return session.selectOne(NAMESPACE +".readStudioProduct" , map);
	}
}
