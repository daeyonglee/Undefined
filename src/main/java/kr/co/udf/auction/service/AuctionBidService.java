package kr.co.udf.auction.service;

import java.util.List;

import kr.co.udf.auction.company.domain.DressCompany;
import kr.co.udf.auction.company.domain.MakeupCompany;
import kr.co.udf.auction.company.domain.StudioCompany;
import kr.co.udf.auction.domain.AuctionBid;
import kr.co.udf.auction.product.domain.DressProduct;
import kr.co.udf.auction.product.domain.MakeupProduct;
import kr.co.udf.auction.product.domain.StudioProduct;

public interface AuctionBidService {

	/** 타입 별 회사 정보 조회 */
	public MakeupCompany searchMakeupCompany(int no) throws Exception;

	public StudioCompany searchStudioCompany(int no) throws Exception;

	public DressCompany searchDressCompany(int no) throws Exception;

	/** 타입 별 입찰서 등록 */
	public void createMakeupBid(AuctionBid bid) throws Exception;

	public void createStudioBid(AuctionBid bid) throws Exception;

	public void createDressBid(AuctionBid bid) throws Exception;

	/** 타입 별 상품 정보 조회*/
	public List<MakeupProduct> searchMakeupProduct(int companyNo) throws Exception;
	public List<StudioProduct> searchStudioProduct(int companyNo) throws Exception;
	public List<DressProduct> searchDressProduct(int companyNo) throws Exception;
	
	/** 사용자 별 입찰서 내역 조회 */
	public List<AuctionBid> listByUser(int userNo) throws Exception;

	// 게시물 낙찰상세조회
	public AuctionBid winread(int no, String type) throws Exception;
	
	// 입찰서 상품 리스트 등록
	public void createStudioProd(AuctionBid bid) throws Exception;
	public void createDressProd(AuctionBid bid) throws Exception;
	public void createMakeupProd(AuctionBid bid) throws Exception;
	
	/** 단일 상품 정보 상세 조회 */
	public StudioProduct readStudioProduct(int productNo, int companyNo) throws Exception;


}
