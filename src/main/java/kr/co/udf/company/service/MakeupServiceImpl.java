package kr.co.udf.company.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.common.company.domain.MakeupCompany;
import kr.co.udf.company.dao.MakeupDao;
import kr.co.udf.company.domain.Criteria;
import kr.co.udf.company.domain.SearchCriteria;
import kr.co.udf.company.domain.MakeupReview;

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
	
	@Override
	public MakeupCompany detailMakeup(int mc_no) throws Exception {
		return dao.detailMakeup(mc_no);
	}
	
	@Override
	public void addReview(MakeupReview makeupReview) throws Exception {
		dao.addReview(makeupReview);
	}
	
	@Override
	public List<MakeupReview> reviewMakeup(int mc_no) throws Exception {
		return dao.reviewMakeup(mc_no);
	}

	@Override
	public double avgPoint(int mc_no) throws Exception {
		return dao.avgPoint(mc_no);
	}
	
	@Override
	public int countReview(int mc_no) throws Exception {
		return dao.countReview(mc_no);
	}
	
	@Override
	public int countProduct(int mc_no) throws Exception {
		return dao.countProduct(mc_no);
	}
}
