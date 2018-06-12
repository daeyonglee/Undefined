package kr.co.udf.company.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.common.company.domain.DressCompany;
import kr.co.udf.company.dao.DressDao;
import kr.co.udf.company.domain.Criteria;
import kr.co.udf.company.domain.SearchCriteria;
import kr.co.udf.company.domain.DressReview;

@Service
public class DressServiceImpl implements DressService {

    @Inject
	 private DressDao dao;

	@Override
	public List<DressCompany> listDress() throws Exception {
		return dao.listDress();
	}
	
	@Override
	public List<DressCompany> DressPage(int page) throws Exception {
		return dao.DressPage(page);
	}

	@Override
	public List<DressCompany> DressCri(Criteria cri) throws Exception {
		return dao.DressCri(cri);
	}

	@Override
	public int DressCount(Criteria cri) throws Exception {
		return dao.DressCount(cri);
	}

	@Override
	public List<DressCompany> DressSearch(SearchCriteria cri) throws Exception {
		return dao.DressSearch(cri);
	}

	@Override
	public int DressSearchCount(SearchCriteria cri) throws Exception {
		return dao.DressSearchCount(cri);
	} 
	
	@Override
	public DressCompany detailDress(int dc_no) throws Exception {
		return dao.detailDress(dc_no);
	}
	
	@Override
	public void addReview(DressReview dressReview) throws Exception {
		dao.addReview(dressReview);
	}
	
	@Override
	public List<DressReview> reviewDress(int dc_no) throws Exception {
		return dao.reviewDress(dc_no);
	}

	@Override
	public double avgPoint(int dc_no) throws Exception {
		return dao.avgPoint(dc_no);
	}
	
	@Override
	public int countReview(int dc_no) throws Exception {
		return dao.countReview(dc_no);
	}
	
	@Override
	public int countProduct(int dc_no) throws Exception {
		return dao.countProduct(dc_no);
	}
	
	@Override
	public long avgPrice(int dc_no) throws Exception {
		return dao.avgPrice(dc_no);
	}
}
