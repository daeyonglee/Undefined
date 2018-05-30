package kr.co.udf.company.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.common.company.domain.StudioCompany;
import kr.co.udf.company.dao.StudioCompanyDao;

@Service
public class StudioServiceImpl implements StudioService {

	@Inject
	StudioCompanyDao studioCompanyDao;
	
	@Override
	public List<StudioCompany> listStudio() throws Exception {
		return studioCompanyDao.listStudio();
	}

	@Override
	public StudioCompany detailStudio(int companyNo) throws Exception {
		return studioCompanyDao.detailStudio(companyNo);
	}

}
