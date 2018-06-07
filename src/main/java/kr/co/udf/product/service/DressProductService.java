package kr.co.udf.product.service;

import java.util.List;

import kr.co.udf.common.product.domain.DressProduct;

public interface DressProductService {
	
	public void create(DressProduct dp)throws Exception;
	
	public DressProduct read(int dp_no)throws Exception;
	
	public void update(DressProduct dp)throws Exception;

	public void delete(int dp_no)throws Exception;

	public List<DressProduct> listAll() throws Exception;
}
