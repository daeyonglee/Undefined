package kr.co.udf.product.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.common.product.domain.StudioProduct;
import kr.co.udf.product.dao.StudioProductDao;

@Service
public class StudioProductServiceImpl implements StudioProductService {

	@Inject
	StudioProductDao dao;

	
	@Override
	public void create(StudioProduct sp) throws Exception {
		dao.create(sp);
	}

	@Override
	public StudioProduct read(int sp_no) throws Exception {
		return dao.read(sp_no);
	}
	
	@Override
	public void update(StudioProduct sp) throws Exception {
		dao.update(sp);
	}

	@Override
	public void delete(int sp_no) throws Exception {
		dao.delete(sp_no);
	}

	@Override
	public List<StudioProduct> listAll() throws Exception {
		return dao.listAll();
	}
	
	
}
