package kr.co.udf.product;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.udf.common.product.domain.StudioProduct;
import kr.co.udf.product.dao.StudioProductDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/**/servlet-context.xml"})
public class StudioProductTest {


	Logger logger = Logger.getLogger(StudioProductTest.class);
	
	@Inject
	StudioProductDao dao;
	SqlSessionFactory sqlFactory;
	
	//@Test
	public void testCreate() throws Exception {
		StudioProduct sp = new StudioProduct();
		sp.setSc_nm("강남힐스튜디오");
		sp.setSc_no(35);
		sp.setSp_price(20000);
		sp.setSp_apv_yn('Y');
		sp.setSp_total_yn('Y');
		sp.setSp_shoot_type('1');
		sp.setSp_image("sample Image");	
		dao.create(sp);
	}

	// @Test
	public void testRead() throws Exception {
		logger.info(dao.read(10).toString());
	}
//	 @Test
		public void testUpdate() throws Exception {
			StudioProduct sp = new StudioProduct();
			sp.setSp_no(7);
			sp.setSp_price(10000);
			sp.setSp_apv_yn('Y');
			sp.setSp_total_yn('N');
			sp.setSp_shoot_type('1');
			sp.setSp_image("sample image");
			dao.update(sp);
		}
		
	 @Test
		public void testDelete() throws Exception {
			dao.delete(10);
		}
	
}
