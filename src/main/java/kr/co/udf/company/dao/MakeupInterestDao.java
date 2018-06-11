package kr.co.udf.company.dao;

import java.util.List;

import kr.co.udf.company.domain.MakeupInterest;

public interface MakeupInterestDao {
	
	/** 관심업체 추가 */
	public void create(MakeupInterest makeupInterest) throws Exception;
	
	/** 관심업체 조회 */
	public List<MakeupInterest> read(int user_no) throws Exception;
	
	/** 관심업체 수정 */
	public void update(MakeupInterest makeupInterest) throws Exception;
	
	/** 관심업체 삭제 */
	public void delete(int mic_no) throws Exception;
	
}
