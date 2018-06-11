package kr.co.udf.company;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.udf.company.dao.StudioInterestDao;
import kr.co.udf.company.domain.StudioInterest;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/**/servlet-context.xml"})
public class StudioInterestTest {

	Logger logger = Logger.getLogger(StudioInterestTest.class);
	
	@Inject
	private StudioInterestDao dao;
	SqlSessionFactory sqlFactory;
	
	//@Test
	public void testList() throws Exception {
		StudioInterest si = new StudioInterest();
		si.setUser_no(1);
		si.setSc_no(1);
		dao.create(si);
	
	}
	
	@Test
	public void test2() throws Exception {
		logger.info(dao.read(1));
	}

	//@Test
	public void test3() throws Exception {
		dao.delete(2);
	}
	
	}
