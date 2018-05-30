package kr.co.udf.company.service;

import java.util.List;

import kr.co.udf.common.company.domain.DressCompany;

public interface DressService {
	
	/** 드레스 업체 목록 리스트 */
	public List<DressCompany> listDress() throws Exception;
	
	/** 드레스 업체 상세정보 조회 */
	public DressCompany detailDress(int companyNo) throws Exception;
	
}
