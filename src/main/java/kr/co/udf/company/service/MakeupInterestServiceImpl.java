package kr.co.udf.company.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.company.dao.MakeupInterestDao;
import kr.co.udf.company.domain.MakeupInterest;

@Service
public class MakeupInterestServiceImpl implements MakeupInterestService{

	@Inject
	private MakeupInterestDao dao;
	
	@Override
	public void create(MakeupInterest makeupInterest) throws Exception {
		dao.create(makeupInterest);
	}

	@Override
	public List<MakeupInterest> read(int user_no) throws Exception {
		return dao.read(user_no);
	}

	@Override
	public void update(MakeupInterest makeupInterest) throws Exception {
		dao.update(makeupInterest);
	}

	@Override
	public void delete(int mic_no) throws Exception {
		dao.delete(mic_no);
		
	}

	

	
}
