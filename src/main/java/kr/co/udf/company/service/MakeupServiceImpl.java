package kr.co.udf.company.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.common.company.domain.MakeupCompany;
import kr.co.udf.company.dao.MakeupCompanyDao;

@Service
public class MakeupServiceImpl implements MakeupService {

	@Inject
	MakeupCompanyDao makeupCompanyDao;
	
	@Override
	public List<MakeupCompany> listMakeup() throws Exception {
		return makeupCompanyDao.listMakeup();
	}

	@Override
	public MakeupCompany detailMakeup(int companyNo) throws Exception {
		return makeupCompanyDao.detailMakeup(companyNo);
	}

}
