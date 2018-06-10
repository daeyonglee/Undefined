package kr.co.udf.user.dao;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import kr.co.udf.common.util.UploadFileUtils;
import kr.co.udf.user.domain.CompanyDTO;
import kr.co.udf.user.domain.Login;
import kr.co.udf.user.domain.User;
import kr.co.udf.user.domain.UserDTO;
import kr.co.udf.user.service.MypageProductServiceImpl;

@Repository
public class MybatisUserMypageDao implements UserMypageDao{

	@Inject
	private SqlSession session;
	
	private static final String NAMESPACE = "kr.co.udf.user.dao.UserMypageDao";
	
	private static final Logger logger = Logger.getLogger(MypageProductServiceImpl.class);
	
	@Resource(name="cpMainImgPath")
	private String cpMainImgPath;
	
	/**
	 * 나의정보관리 비밀번호 확인
	 * @param login
	 * @return
	 */
	@Override
	public Object myinfo(Login login) {
		
		Object obj = null;
		
		if ("users".equals(login.getRole())) {
			obj = session.selectOne(NAMESPACE+".myinfoUsers", login);
		}
		if ("dc".equals(login.getRole())) {
			obj = session.selectOne(NAMESPACE+".myinfoDress", login);
		}
		if ("mc".equals(login.getRole())) {
			obj = session.selectOne(NAMESPACE+".myinfoMakeup", login);
		}
		if ("sc".equals(login.getRole())) {
			obj = session.selectOne(NAMESPACE+".myinfoStudio", login);
		}
		
		return obj;
	}

	/**
	 * 나의 정보관리 정보 수정하기 (일반 사용자)
	 * @param user
	 */
	@Override
	public void userupdate(UserDTO user) {
		
		Map<String, Object> map = new HashMap<>();
		map.put("user", user);
		map.put("addr", user.getPostcode()+"^^"+user.getAddr()+"^^"+user.getAddrdetail());
		session.update(NAMESPACE+".userupdate", map);
	}

	@Override
	public void companyupdate(CompanyDTO company) throws IOException, Exception {
		Map<String, Object> map = new HashMap<>();
		
		map.put("company", company);
		map.put("addr", company.getPostcode()+"^^"+company.getAddr()+"^^"+company.getAddrdetail());
		
		if(company.getMainImg().isEmpty() == false){
		 	 logger.debug("------------- file start -------------");
            logger.debug("name : "+company.getMainImg().getName());
            logger.debug("filename : "+company.getMainImg().getOriginalFilename());
            logger.debug("size : "+company.getMainImg().getSize());
            logger.debug("-------------- file end --------------\n");
            
            String uploadFileName = UploadFileUtils.uploadFile(cpMainImgPath, company.getMainImg().getOriginalFilename(), company.getMainImg().getBytes());
            map.put("fileName", uploadFileName);
		}
		
		if ("dress".equals(company.getCompanyType())) {
			session.update(NAMESPACE+".companyupdateDress", map);
		}
		if ("studio".equals(company.getCompanyType())) {
			session.update(NAMESPACE+".companyupdateStudio", map);
		}
		if ("makeup".equals(company.getCompanyType())) {
			session.update(NAMESPACE+".companyupdateMakeup", map);
		}
	}

}
