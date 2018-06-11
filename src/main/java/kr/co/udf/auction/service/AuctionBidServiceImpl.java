package kr.co.udf.auction.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.auction.company.domain.DressCompany;
import kr.co.udf.auction.company.domain.MakeupCompany;
import kr.co.udf.auction.company.domain.StudioCompany;
import kr.co.udf.auction.dao.AuctionBidDao;
import kr.co.udf.auction.domain.AuctionBid;
import kr.co.udf.auction.product.domain.DressProduct;
import kr.co.udf.auction.product.domain.MakeupProduct;
import kr.co.udf.auction.product.domain.StudioProduct;

@Service
public class AuctionBidServiceImpl implements AuctionBidService {
	
	@Inject
	private AuctionBidDao dao;

	@Override
	public MakeupCompany searchMakeupCompany(int no) throws Exception {
		MakeupCompany company = dao.searchMakeupCompany(no);
		
		String arr[] = company.getAddr().split("\\^\\^");
		company.setAddr(arr[1] + " " + arr[2]);
		
		return company;
	}

	@Override
	public StudioCompany searchStudioCompany(int no) throws Exception {
		StudioCompany company = dao.searchStudioCompany(no);
		
		String arr[] = company.getAddr().split("\\^\\^");
		company.setAddr(arr[1] + " " + arr[2]);
		
		return company;
	}

	@Override
	public DressCompany searchDressCompany(int no) throws Exception {
		DressCompany company = dao.searchDressCompany(no);
		
/*		String arr[] = company.getAddr().split("\\^\\^");
		company.setAddr(arr[1] + " " + arr[2]);*/
		
		return company;
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
	
	@Override
	public AuctionBid winread(int no, String type) throws Exception {
		return dao.winread(no, type);
	}

	@Override
	public void createStudioProd(AuctionBid bid) throws Exception {
		dao.createStudioProd(bid);
	}

	@Override
	public List<MakeupProduct> searchMakeupProduct(int companyNo) throws Exception {
		return dao.searchMakeupProduct(companyNo);
	}

	@Override
	public List<StudioProduct> searchStudioProduct(int companyNo) throws Exception {
		return dao.searchStudioProduct(companyNo);
	}

	@Override
	public List<DressProduct> searchDressProduct(int companyNo) throws Exception {
		return dao.searchDressProduct(companyNo);
	}

	@Override
	public StudioProduct readStudioProduct(int productNo, int companyNo) throws Exception {
		return dao.readStudioProduct(productNo, companyNo);
	}
}
