package kr.co.udf.company.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.common.company.domain.DressCompany;
import kr.co.udf.common.company.domain.MakeupCompany;
import kr.co.udf.common.company.domain.StudioCompany;
import kr.co.udf.company.dao.DressDao;
import kr.co.udf.company.dao.MakeupDao;
import kr.co.udf.company.dao.StudioDao;
import kr.co.udf.company.domain.Criteria;
import kr.co.udf.company.domain.SearchCriteria;

@Service
public class MakeupServiceImpl implements MakeupService {

    @Inject
	 private MakeupDao dao;

	@Override
	public List<MakeupCompany> listMakeup() throws Exception {
		return dao.listMakeup();
	}

	@Override
	public List<MakeupCompany> MakeupPage(int page) throws Exception {
		return dao.listMakeup();
	}

	@Override
	public List<MakeupCompany> MakeupCri(Criteria cri) throws Exception {
		return dao.MakeupCri(cri);
	}

	@Override
	public int MakeupCount(Criteria cri) throws Exception {
		return dao.MakeupCount(cri);
	}

	@Override
	public List<MakeupCompany> MakeupSearch(SearchCriteria cri) throws Exception {
		return dao.MakeupSearch(cri);
	}

	@Override
	public int MakeupSearchCount(SearchCriteria cri) throws Exception {
		return dao.MakeupSearchCount(cri);
	}
}
