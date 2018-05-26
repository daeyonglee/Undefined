package kr.co.udf.company.dao;

import java.util.List;

import kr.co.udf.company.domain.StudioInterest;

public interface StudioInterestDao {
	
	/** 관심업체 추가 */
	public void create(StudioInterest studioInterest) throws Exception;
	
	/** 관심업체 조회 */
	public List<StudioInterest> read(int userNo) throws Exception;
	
	/** 관심업체 수정 */
	public void update(StudioInterest studioInterest) throws Exception;
	
	/** 관심업체 삭제 */
	public void delete(int sicNo) throws Exception;
	
}
