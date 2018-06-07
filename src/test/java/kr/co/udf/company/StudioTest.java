package kr.co.udf.company;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.udf.company.dao.StudioCompanyDao;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/**/servlet-context.xml"})
public class StudioTest {

	Logger logger = Logger.getLogger(StudioTest.class);
	
	@Inject
	private StudioCompanyDao dao;
	SqlSessionFactory sqlFactory;
	
	//@Test
	public void testList() throws Exception {
		logger.info(dao.listStudio());
	}
	
	//@Test
	public void testListAll() throws Exception {
		logger.info(dao.detailStudio(41));
	}
	
	@Test
	public void testReview() throws Exception {
		logger.info(dao.reviewStudio(1));
	}
	
	//@Test
	public void testAvg() throws Exception {
		logger.info(dao.avgPoint(69));
	}
	
	//@Test
	public void testCount() throws Exception {
		logger.info(dao.countReview(1));
	}

}
