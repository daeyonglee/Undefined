package kr.co.udf.company.service;

import java.util.List;

import kr.co.udf.auction.domain.Auction;
import kr.co.udf.company.domain.StudioInterest;

public interface StudioInterestService {
	
	/** 관심업체 추가 */
	public void create(StudioInterest studioInterest) throws Exception;
	
	/** 관심업체 조회 */
	public List<StudioInterest> read(int user_no) throws Exception;
	
	/** 관심업체 수정 */
	public void update(StudioInterest studioInterest) throws Exception;
	
	/** 관심업체 삭제 */
	public void delete(int sic_no) throws Exception;
	
}
