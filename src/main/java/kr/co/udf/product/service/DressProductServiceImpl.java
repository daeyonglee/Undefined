package kr.co.udf.product.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.common.product.domain.DressProduct;
import kr.co.udf.common.product.domain.StudioProduct;
import kr.co.udf.product.dao.DressProductDao;

@Service
public class DressProductServiceImpl implements DressProductService {

	@Inject
	DressProductDao dao;

	
	@Override
	public void create(DressProduct dp) throws Exception {
		dao.create(dp);
	}

	@Override
	public DressProduct read(int dp_no) throws Exception {
		return dao.read(dp_no);
	}
	
	@Override
	public void update(DressProduct dp) throws Exception {
		dao.update(dp);
	}

	@Override
	public void delete(int dp_no) throws Exception {
		dao.delete(dp_no);
	}

	@Override
	public List<DressProduct> listAll() throws Exception {
		return dao.listAll();
	}
	
	
}
