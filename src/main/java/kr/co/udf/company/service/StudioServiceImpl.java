package kr.co.udf.company.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.common.company.domain.StudioCompany;
import kr.co.udf.company.dao.StudioDao;
import kr.co.udf.company.domain.Criteria;
import kr.co.udf.company.domain.SearchCriteria;
import kr.co.udf.company.domain.StudioReview;

@Service
public class StudioServiceImpl implements StudioService {

    @Inject
	 private StudioDao dao;

	@Override
	public List<StudioCompany> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<StudioCompany> listPage(int page) throws Exception {
		return dao.listPage(page);
	}

	@Override
	public List<StudioCompany> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		return dao.countPaging(cri);
	}

	@Override
	public List<StudioCompany> listSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}
	 
	@Override
	public StudioCompany detailStudio(int sc_no) throws Exception {
		return dao.detailStudio(sc_no);
	}
	
	@Override
	public void addReview(StudioReview studioReview) throws Exception {
		dao.addReview(studioReview);
	}
	
	@Override
	public List<StudioReview> reviewStudio(int sc_no) throws Exception {
		return dao.reviewStudio(sc_no);
	}

	@Override
	public double avgPoint(int sc_no) throws Exception {
		return dao.avgPoint(sc_no);
	}
	
	@Override
	public int countReview(int sc_no) throws Exception {
		return dao.countReview(sc_no);
	}
	
	@Override
	public int countProduct(int sc_no) throws Exception {
		return dao.countProduct(sc_no);
	}
	
	@Override
	public long avgPrice(int sc_no) throws Exception {
		return dao.avgPrice(sc_no);
	}
}
