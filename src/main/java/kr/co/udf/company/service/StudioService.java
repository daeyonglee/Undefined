package kr.co.udf.company.service;

import java.util.List;

import kr.co.udf.common.company.domain.StudioCompany;

public interface StudioService {
	
	/** 스튜디오 업체 목록 리스트 */
	public List<StudioCompany> listStudio() throws Exception;
	
	/** 스튜디오 업체 상세정보 조회 */
	public StudioCompany detailStudio(int companyNo) throws Exception;
	
}
