package kr.co.udf.company.dao;

import java.util.List;

import kr.co.udf.common.company.domain.MakeupCompany;

public interface MakeupCompanyDao {
	
	/** 메이크업 업체 목록 리스트 */
	public List<MakeupCompany> listMakeup() throws Exception;
	
	/** 메이크업 업체 상세정보 조회 */
	public MakeupCompany detailMakeup(int companyNO) throws Exception;
	
}
