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

@Service
public class MakeupServiceImpl implements MakeupService {

    @Inject
	 private MakeupDao dao;

	@Override
	public List<MakeupCompany> listAll() throws Exception {
		return dao.listAll();
	}
	
	@Override
	public List<MakeupCompany> listPage(int page) throws Exception {
		return dao.listPage(page);
	}

	@Override
	public List<MakeupCompany> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		return dao.countPaging(cri);
	} 
	 
}
