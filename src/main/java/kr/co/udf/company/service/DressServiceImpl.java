package kr.co.udf.company.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.common.company.domain.DressCompany;
import kr.co.udf.common.company.domain.StudioCompany;
import kr.co.udf.company.dao.DressDao;
import kr.co.udf.company.dao.StudioDao;
import kr.co.udf.company.domain.Criteria;
import kr.co.udf.company.domain.SearchCriteria;

@Service
public class DressServiceImpl implements DressService {

    @Inject
	 private DressDao dao;

	@Override
	public List<DressCompany> listDress() throws Exception {
		return dao.listDress();
	}
	
	@Override
	public List<DressCompany> DressPage(int page) throws Exception {
		return dao.DressPage(page);
	}

	@Override
	public List<DressCompany> DressCri(Criteria cri) throws Exception {
		return dao.DressCri(cri);
	}

	@Override
	public int DressCount(Criteria cri) throws Exception {
		return dao.DressCount(cri);
	}

	@Override
	public List<DressCompany> DressSearch(SearchCriteria cri) throws Exception {
		return dao.DressSearch(cri);
	}

	@Override
	public int DressSearchCount(SearchCriteria cri) throws Exception {
		return dao.DressSearchCount(cri);
	} 
}
