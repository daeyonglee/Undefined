package kr.co.udf.user.service;

import java.io.IOException;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import kr.co.udf.common.util.UploadFileUtils;
import kr.co.udf.user.dao.UserJoinDao;
import kr.co.udf.user.domain.CompanyDTO;
import kr.co.udf.user.domain.Login;
import kr.co.udf.user.domain.UserDTO;

@Service
public class UserJoinServiceImpl implements UserJoinService{

	@Inject
	private UserJoinDao joinDao;
	
	private static final Logger logger = Logger.getLogger(UserJoinServiceImpl.class);
	
	@Resource(name="cpMainImgPath")
	private String cpMainImgPath;
	
	/**
	 * 일반 사용자 회원가입
	 */
	@Override
	public void userjoin(UserDTO dto) {
		joinDao.userjoin(dto);
	}

	/**
	 * 업체 회원가입
	 * @throws Exception 
	 * @throws IOException 
	 */
	@Override
	public void companyjoin(CompanyDTO dto) throws IOException, Exception {
		if(dto.getMainImg().isEmpty() == false){
		 	logger.debug("------------- file start -------------");
            logger.debug("name : "+dto.getMainImg().getName());
            logger.debug("filename : "+dto.getMainImg().getOriginalFilename());
            logger.debug("size : "+dto.getMainImg().getSize());
            logger.debug("-------------- file end --------------\n");
            
            String uploadFileName = UploadFileUtils.uploadFile(cpMainImgPath, dto.getMainImg().getOriginalFilename(), dto.getMainImg().getBytes());
            
            joinDao.companyjoin(dto, uploadFileName);
		}
		
	}

	@Override
	public Login emailcheck(Login login) {
		return joinDao.emailcheck(login);
	}
}
