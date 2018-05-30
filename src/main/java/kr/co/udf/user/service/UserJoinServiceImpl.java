package kr.co.udf.user.service;

import java.io.IOException;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import kr.co.udf.common.util.UploadFileUtils;
import kr.co.udf.user.dao.UserJoinDao;
import kr.co.udf.user.domain.CompanyDTO;
import kr.co.udf.user.domain.UserDTO;

@Service
public class UserJoinServiceImpl implements UserJoinService {

	private static final Logger logger = Logger.getLogger(UserJoinServiceImpl.class);
	
	@Inject
	private UserJoinDao dao;
	
	@Resource(name="companyImgPath")
	private String companyImgPath;
	
	@Override
	public void userJoin(UserDTO user) {
		dao.userJoin(user);
	}

	@Override
	public void companyJoin(CompanyDTO company) throws IOException, Exception {
		
		dao.companyJoin(company);
		
		if(company.getFile().isEmpty() == false){
		 	logger.debug("------------- file start -------------");
            logger.debug("name : "+company.getFile().getName());
            logger.debug("filename : "+company.getFile().getOriginalFilename());
            logger.debug("size : "+company.getFile().getSize());
            logger.debug("-------------- file end --------------\n");
            
            UploadFileUtils.uploadFile(companyImgPath, company.getFile().getOriginalFilename(), company.getFile().getBytes());
		}
		
		
	}

}
