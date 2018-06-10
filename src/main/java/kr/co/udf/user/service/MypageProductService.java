package kr.co.udf.user.service;

import java.io.IOException;
import java.util.List;

import kr.co.udf.common.product.domain.DressProduct;
import kr.co.udf.common.product.domain.MakeupProduct;
import kr.co.udf.user.domain.DressProductDTO;
import kr.co.udf.user.domain.Login;
import kr.co.udf.user.domain.MakeupProductDTO;
import kr.co.udf.user.domain.StudioProduct;
import kr.co.udf.user.domain.StudioProductDTO;

public interface MypageProductService {
	
	public List<DressProduct> plistDp(Login login);
	public List<StudioProduct> plistSp(Login login);
	public List<MakeupProduct> plistMp(Login login);
	
	public void writedc(DressProductDTO product) throws IOException, Exception;
	public void writesc(StudioProductDTO product) throws IOException, Exception;
	public void writemc(MakeupProductDTO product) throws IOException, Exception;
}
