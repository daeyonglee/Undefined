package kr.co.udf.company.dao;

import java.util.List;

import kr.co.udf.common.company.domain.StudioCompany;
import kr.co.udf.company.domain.StudioReview;

public interface StudioCompanyDao {
	
	/** 스튜디오 업체 목록 리스트 */
	public List<StudioCompany> listStudio() throws Exception;
	
	/** 스튜디오 업체 상세정보 조회 */
	public StudioCompany detailStudio(int companyNO) throws Exception;
	
	/** 스튜디오 업체 리뷰 추가 */
	public void addReview(StudioReview studioReview) throws Exception;
	
	/** 스튜디오 업체 리뷰 출력 */
	public List<StudioReview> reviewStudio(int companyNo) throws Exception;
	
	/** 스튜디오 업체 평균 별점 */
	public double avgPoint(int companyNo) throws Exception;
	
	/** 스튜디오 업체 리뷰 갯수 */
	public int countReview(int companyNo) throws Exception;

}
