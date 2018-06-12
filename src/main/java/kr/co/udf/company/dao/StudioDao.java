package kr.co.udf.company.dao;

import java.util.List;

import kr.co.udf.common.company.domain.StudioCompany;
import kr.co.udf.company.domain.Criteria;
import kr.co.udf.company.domain.SearchCriteria;
import kr.co.udf.company.domain.StudioReview;

public interface StudioDao {

	public List<StudioCompany> listAll() throws Exception; 

	public List<StudioCompany> listPage(int page) throws Exception;

	public List<StudioCompany> listCriteria(Criteria cri) throws Exception;
	
	public int countPaging(Criteria cri) throws Exception;
	
	public List<StudioCompany> listSearch(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;

	/** 스튜디오 업체 상세정보 조회 */
	public StudioCompany detailStudio(int sc_no) throws Exception;
	
	/** 스튜디오 업체 리뷰 추가 */
	public void addReview(StudioReview studioReview) throws Exception;
	
	/** 스튜디오 업체 리뷰 출력 */
	public List<StudioReview> reviewStudio(int sc_no) throws Exception;
	
	/** 스튜디오 업체 평균 별점 */
	public double avgPoint(int sc_no) throws Exception;
	
	/** 스튜디오 업체 리뷰 갯수 */
	public int countReview(int sc_no) throws Exception;
	
	/** 스튜디오 업체 상품 갯수 */
	public int countProduct(int sc_no) throws Exception;

	/** 스튜디오 업체 상품 평균가 */
	public long avgPrice(int sc_no) throws Exception;
}
