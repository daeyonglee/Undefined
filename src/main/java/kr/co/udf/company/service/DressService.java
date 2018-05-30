package kr.co.udf.company.service;

import java.util.List;

import kr.co.udf.common.company.domain.DressCompany;
import kr.co.udf.common.company.domain.StudioCompany;
import kr.co.udf.company.domain.Criteria;

public interface DressService {
	
	public List<DressCompany> listAll() throws Exception;
	
	public List<DressCompany> listPage(int page) throws Exception;
	
	public List<DressCompany> listCriteria(Criteria cri) throws Exception;
	
	public int countPaging(Criteria cri) throws Exception;
}
