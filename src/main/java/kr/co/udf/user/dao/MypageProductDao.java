package kr.co.udf.user.dao;

import java.util.List;

import kr.co.udf.common.product.domain.DressProduct;
import kr.co.udf.common.product.domain.MakeupProduct;
import kr.co.udf.user.domain.DressProductDTO;
import kr.co.udf.user.domain.Login;
import kr.co.udf.user.domain.StudioProduct;
import kr.co.udf.user.domain.StudioProductDTO;

public interface MypageProductDao {

	public List<DressProduct> plistDp(Login login);
	public List<StudioProduct> plistSp(Login login);
	public List<MakeupProduct> plistMp(Login login);
	
	public void writedc(DressProductDTO product, String fileName);
	public void writesc(StudioProductDTO product, String fileName);
}
