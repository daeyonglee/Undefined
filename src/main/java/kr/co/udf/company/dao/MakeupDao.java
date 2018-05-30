package kr.co.udf.company.dao;

import java.util.List;

import kr.co.udf.common.company.domain.DressCompany;
import kr.co.udf.common.company.domain.MakeupCompany;
import kr.co.udf.common.company.domain.StudioCompany;
import kr.co.udf.company.domain.Criteria;

public interface MakeupDao {

	public List<MakeupCompany> listAll() throws Exception ;
	
	public List<MakeupCompany> listPage(int page) throws Exception;

	public List<MakeupCompany> listCriteria(Criteria cri) throws Exception;
	
	public int countPaging(Criteria cri) throws Exception;
	
}
