package kr.co.udf.company.service;

import java.util.List;

import kr.co.udf.company.domain.DressInterest;

public interface DressInterestService {
	
	/** 관심업체 추가 */
	public void create(DressInterest interest) throws Exception;
	
	/** 관심업체 조회 */
	public List<DressInterest> read(int user_no) throws Exception;
	
	/** 관심업체 수정 */
	public void update(DressInterest dressInterest) throws Exception;
	
	/** 관심업체 삭제 */
	public void delete(int dic_no) throws Exception;
	
}
