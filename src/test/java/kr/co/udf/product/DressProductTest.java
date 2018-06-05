package kr.co.udf.product;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.udf.common.product.domain.DressProduct;
import kr.co.udf.common.product.domain.StudioProduct;
import kr.co.udf.product.dao.DressProductDao;
import kr.co.udf.product.dao.StudioProductDao;
import oracle.net.aso.d;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/**/servlet-context.xml"})
public class DressProductTest {


	Logger logger = Logger.getLogger(DressProductTest.class);
	
	@Inject
	DressProductDao dao;
	SqlSessionFactory sqlFactory;
	
	//@Test
	public void testCreate() throws Exception {
			DressProduct dp = new DressProduct();
			dp.setDc_no(5);
			dp.setDp_nm("프리미엄드레스");
			dp.setDp_price(10000);
			dp.setDp_image("sample dress");
			dp.setDp_style("스타일");
			dao.create(dp);
		}

	 @Test
	public void testRead() throws Exception {
		logger.info(dao.read(1).toString());
	}
	
}
