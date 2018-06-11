package kr.co.udf.company.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.company.dao.StudioInterestDao;
import kr.co.udf.company.domain.StudioInterest;

@Service
public class StudioInterestServiceImpl implements StudioInterestService{

	@Inject
	private StudioInterestDao dao;
	
	@Override
	public void create(StudioInterest studioInterest) throws Exception {
		dao.create(studioInterest);
	}

	@Override
	public List<StudioInterest> read(int user_no) throws Exception {
		return dao.read(user_no);
	}

	@Override
	public void update(StudioInterest studioInterest) throws Exception {
		dao.update(studioInterest);
	}

	@Override
	public void delete(int sic_no) throws Exception {
		dao.delete(sic_no);
		
	}

	

	
}
