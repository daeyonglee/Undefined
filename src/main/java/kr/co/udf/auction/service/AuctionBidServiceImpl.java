package kr.co.udf.auction.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.auction.dao.AuctionBidDao;
import kr.co.udf.auction.domain.AuctionBid;
import kr.co.udf.common.company.domain.DressCompany;
import kr.co.udf.common.company.domain.MakeupCompany;
import kr.co.udf.common.company.domain.StudioCompany;

@Service
public class AuctionBidServiceImpl implements AuctionBidService {
	
	@Inject
	private AuctionBidDao dao;

	@Override
	public MakeupCompany searchMakeupCompany(int no) throws Exception {
		return dao.searchMakeupCompany(no);
	}

	@Override
	public StudioCompany searchStudioCompany(int no) throws Exception {
		return dao.searchStudioCompany(no);

	}

	@Override
	public DressCompany searchDressCompany(int no) throws Exception {
		return dao.searchDressCompany(no);

	}

	@Override
	public void createMakeupBid(AuctionBid bid) throws Exception {
		dao.createMakeupBid(bid);
		
	}

	@Override
	public void createStudioBid(AuctionBid bid) throws Exception {
		dao.createStudioBid(bid);
		
	}

	@Override
	public void createDressBid(AuctionBid bid) throws Exception {
		dao.createDressBid(bid);
	}

	@Override
	public List<AuctionBid> listByUser(int userNo) throws Exception {
		return dao.listByUser(userNo);
		
	}

}
