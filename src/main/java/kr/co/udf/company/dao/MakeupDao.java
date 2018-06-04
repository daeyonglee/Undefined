package kr.co.udf.company.dao;

import java.util.List;

import kr.co.udf.common.company.domain.DressCompany;
import kr.co.udf.common.company.domain.MakeupCompany;
import kr.co.udf.common.company.domain.StudioCompany;
import kr.co.udf.company.domain.Criteria;
import kr.co.udf.company.domain.SearchCriteria;

public interface MakeupDao {

	public List<MakeupCompany> listMakeup() throws Exception ;
	
	public List<MakeupCompany> MakeupPage(int page) throws Exception;

	public List<MakeupCompany> MakeupCri(Criteria cri) throws Exception;
	
	public int MakeupCount(Criteria cri) throws Exception;
	
	public List<MakeupCompany> MakeupSearch(SearchCriteria cri) throws Exception;

	public int MakeupSearchCount(MakeupCompany cri) throws Exception;
	
}
