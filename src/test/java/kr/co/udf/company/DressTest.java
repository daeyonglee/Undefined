package kr.co.udf.company;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.udf.company.dao.DressDao;
import kr.co.udf.company.dao.StudioDao;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/**/servlet-context.xml"})
public class DressTest {

	Logger logger = Logger.getLogger(DressTest.class);
	
	@Inject
	private DressDao dao;
	SqlSessionFactory sqlFactory;
	
	@Test
	public void testList() throws Exception {
		logger.info(dao.listAll());
	}
}
