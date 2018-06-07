package kr.co.udf.product.dao;

import java.util.List;

import kr.co.udf.common.product.domain.MakeupProduct;

public interface MakeupProductDao {

	public void create(MakeupProduct mp)throws Exception;
	
	public MakeupProduct read(int mp_no)throws Exception;
	
	public void update(MakeupProduct mp)throws Exception;

	public void delete(int mp_no)throws Exception;

	public List<MakeupProduct> listAll() throws Exception;
}
