package kr.co.udf.product.dao;

import java.util.List;

import kr.co.udf.common.product.domain.StudioProduct;

public interface StudioProductDao {

	public void create(StudioProduct sp)throws Exception;
	
	public StudioProduct read(int sp_no)throws Exception;
	
	public void update(StudioProduct sp)throws Exception;

	public void delete(int sp_no)throws Exception;

	public List<StudioProduct> listAll() throws Exception;
}
