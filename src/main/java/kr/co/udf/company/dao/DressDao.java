package kr.co.udf.company.dao;

import java.util.List;

import kr.co.udf.common.company.domain.DressCompany;
import kr.co.udf.company.domain.Criteria;
import kr.co.udf.company.domain.SearchCriteria;

public interface DressDao {

	public List<DressCompany> listDress() throws Exception ;
	
	public List<DressCompany> DressPage(int page) throws Exception;

	public List<DressCompany> DressCri(Criteria cri) throws Exception;
	
	public int DressCount(Criteria cri) throws Exception;
	
	public List<DressCompany> DressSearch(SearchCriteria cri) throws Exception;

	public int DressSearchCount(SearchCriteria cri) throws Exception;
}
