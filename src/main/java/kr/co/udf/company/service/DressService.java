package kr.co.udf.company.service;

import java.util.List;

import kr.co.udf.common.company.domain.DressCompany;
import kr.co.udf.company.domain.Criteria;
import kr.co.udf.company.domain.DressReview;
import kr.co.udf.company.domain.SearchCriteria;

public interface DressService {
	
	public List<DressCompany> listDress() throws Exception;
	
	public List<DressCompany> DressPage(int page) throws Exception;
	
	public List<DressCompany> DressCri(Criteria cri) throws Exception;
	
	public int DressCount(Criteria cri) throws Exception;
	
	public List<DressCompany> DressSearch(SearchCriteria cri) throws Exception;
	
	public int DressSearchCount(SearchCriteria cri) throws Exception;

	/** 드레스 업체 상세정보 조회 */
	public DressCompany detailDress(int dc_no) throws Exception;
	
	/** 드레스 업체 리뷰 추가 */
	public void addReview(DressReview dressReview) throws Exception;
	
	/** 드레스 업체 리뷰 출력 */
	public List<DressReview> reviewDress(int dc_no) throws Exception;
	
	/** 드레스 업체 평균 별점 */
	public double avgPoint(int dc_no) throws Exception; 
	
	/** 드레스 업체 리뷰 갯수 */
	public int countReview(int dc_no) throws Exception;
}