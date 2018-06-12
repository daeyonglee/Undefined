package kr.co.udf.company.service;

import java.util.List;

import kr.co.udf.common.company.domain.MakeupCompany;
import kr.co.udf.company.domain.Criteria;
import kr.co.udf.company.domain.MakeupReview;
import kr.co.udf.company.domain.SearchCriteria;

public interface MakeupService {
	
	public List<MakeupCompany> listMakeup() throws Exception ;
	
	public List<MakeupCompany> MakeupPage(int page) throws Exception;

	public List<MakeupCompany> MakeupCri(Criteria cri) throws Exception;
	
	public int MakeupCount(Criteria cri) throws Exception;
	
	public List<MakeupCompany> MakeupSearch(SearchCriteria cri) throws Exception;

	public int MakeupSearchCount(SearchCriteria cri) throws Exception;
	
	/** 메이크업 업체 상세정보 조회 */
	public MakeupCompany detailMakeup(int mc_no) throws Exception;
	
	/** 메이크업 업체 리뷰 추가 */
	public void addReview(MakeupReview dressReview) throws Exception;
	
	/** 메이크업 업체 리뷰 출력 */
	public List<MakeupReview> reviewMakeup(int mc_no) throws Exception;
	
	/** 메이크업 업체 평균 별점 */
	public double avgPoint(int mc_no) throws Exception; 
	
	/** 메이크업 업체 리뷰 갯수 */
	public int countReview(int mc_no) throws Exception;
	
	/** 메이크업 업체 상품 갯수 */
	public int countProduct(int mc_no) throws Exception;
	
	/** 메이크업 업체 리뷰 갯수 */
	public long avgPrice(int mc_no) throws Exception;
	
	/** 메이크업 업체 상품 이미지 */
	public List<String> productImg(int mc_no) throws Exception;
}
