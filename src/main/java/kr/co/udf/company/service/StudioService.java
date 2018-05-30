package kr.co.udf.company.service;

import java.util.List;

import kr.co.udf.common.company.domain.StudioCompany;
import kr.co.udf.company.domain.Criteria;

public interface StudioService {
	
	public List<StudioCompany> listAll() throws Exception;
	
	public List<StudioCompany> listPage(int page) throws Exception;
	
	public List<StudioCompany> listCriteria(Criteria cri) throws Exception;
	
	public int countPaging(Criteria cri) throws Exception;
}
