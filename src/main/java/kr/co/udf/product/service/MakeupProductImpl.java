package kr.co.udf.product.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.common.product.domain.MakeupProduct;
import kr.co.udf.product.dao.MakeupProductDao;

@Service
public class MakeupProductImpl implements MakeupProductService {

	@Inject
	MakeupProductDao dao;

	
	@Override
	public void create(MakeupProduct mp) throws Exception {
		dao.create(mp);
	}

	@Override
	public MakeupProduct read(int mp_no) throws Exception {
		return dao.read(mp_no);
	}
	
	@Override
	public void update(MakeupProduct mp) throws Exception {
		dao.update(mp);
	}

	@Override
	public void delete(int mp_no) throws Exception {
		dao.delete(mp_no);
	}

	@Override
	public List<MakeupProduct> listAll() throws Exception {
		return dao.listAll();
	}
	
}
