package kr.co.udf.company.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.company.dao.DressInterestDao;
import kr.co.udf.company.domain.DressInterest;

@Service
public class DressInterestServiceImpl implements DressInterestService{

	@Inject
	private DressInterestDao dao;
	
	@Override
	public void create(DressInterest dressInterest) throws Exception {
		dao.create(dressInterest);
	}

	@Override
	public List<DressInterest> read(int user_no) throws Exception {
		return dao.read(user_no);
	}

	@Override
	public void update(DressInterest dressInterest) throws Exception {
		dao.update(dressInterest);
	}

	@Override
	public void delete(int dic_no) throws Exception {
		dao.delete(dic_no);
		
	}

	

	
}
