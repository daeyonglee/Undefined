package kr.co.udf.product.service;

import java.util.List;

import kr.co.udf.common.product.domain.DressProduct;
import kr.co.udf.common.product.domain.MakeupProduct;

public interface MakeupProductService {
	
	public void create(MakeupProduct mp)throws Exception;
	
	public MakeupProduct read(int mp_no)throws Exception;

	public void update(MakeupProduct mp)throws Exception;

	public void delete(int mp_no)throws Exception;

	public List<MakeupProduct> listAll() throws Exception;
}
