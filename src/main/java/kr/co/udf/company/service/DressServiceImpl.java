package kr.co.udf.company.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.common.company.domain.DressCompany;
import kr.co.udf.company.dao.DressCompanyDao;

@Service
public class DressServiceImpl implements DressService {

	@Inject
	DressCompanyDao dressCompanyDao;
	
	@Override
	public List<DressCompany> listDress() throws Exception {
		return dressCompanyDao.listDress();
	}

	@Override
	public DressCompany detailDress(int companyNo) throws Exception {
		return dressCompanyDao.detailDress(companyNo);
	}

}
