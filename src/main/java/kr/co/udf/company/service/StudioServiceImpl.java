package kr.co.udf.company.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.common.company.domain.StudioCompany;
import kr.co.udf.company.dao.StudioDao;
import kr.co.udf.company.domain.Criteria;
import kr.co.udf.company.domain.SearchCriteria;

@Service
public class StudioServiceImpl implements StudioService {

    @Inject
	 private StudioDao dao;

	@Override
	public List<StudioCompany> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<StudioCompany> listPage(int page) throws Exception {
		return dao.listPage(page);
	}

	@Override
	public List<StudioCompany> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		return dao.countPaging(cri);
	}

	@Override
	public List<StudioCompany> listSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}
	 
}
