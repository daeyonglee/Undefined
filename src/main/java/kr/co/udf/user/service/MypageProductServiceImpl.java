package kr.co.udf.user.service;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import kr.co.udf.common.product.domain.DressProduct;
import kr.co.udf.common.product.domain.MakeupProduct;
import kr.co.udf.common.util.UploadFileUtils;
import kr.co.udf.user.dao.MypageProductDao;
import kr.co.udf.user.domain.DressProductDTO;
import kr.co.udf.user.domain.Login;
import kr.co.udf.user.domain.MakeupProductDTO;
import kr.co.udf.user.domain.StudioProduct;
import kr.co.udf.user.domain.StudioProductDTO;

@Service
public class MypageProductServiceImpl implements MypageProductService{

	@Inject
	private MypageProductDao dao;
	
	private static final Logger logger = Logger.getLogger(MypageProductServiceImpl.class);
	
	@Resource(name="cpMainImgPath")
	private String cpMainImgPath;
	
	@Override
	public List<DressProduct> plistDp(Login login) {
		return dao.plistDp(login);
	}

	@Override
	public List<StudioProduct> plistSp(Login login) {
		return dao.plistSp(login);
	}

	@Override
	public List<MakeupProduct> plistMp(Login login) {
		return dao.plistMp(login);
	}

	@Override
	public void writedc(DressProductDTO product) throws IOException, Exception {
		if(product.getDpImage().isEmpty() == false){
		 	logger.debug("------------- file start -------------");
            logger.debug("name : "+product.getDpImage().getName());
            logger.debug("filename : "+product.getDpImage().getOriginalFilename());
            logger.debug("size : "+product.getDpImage().getSize());
            logger.debug("-------------- file end --------------\n");
            
            String uploadFileName = UploadFileUtils.uploadFile(cpMainImgPath, product.getDpImage().getOriginalFilename(), product.getDpImage().getBytes());
            
            dao.writedc(product, uploadFileName);
		}
	}
	
	@Override
	public void writesc(StudioProductDTO product) throws IOException, Exception {
		
		if (product.getSpApvYn() == null) {
			product.setSpApvYn("N");
		}
		if (product.getSpTotalYn() == null) {
			product.setSpTotalYn("N");
		}
		if (product.getSpShootType().equalsIgnoreCase("INDOOR,OUTDOOR")) {
			product.setSpShootType("ALL");
		}
		
		if(product.getSpImage().isEmpty() == false){
		 	 logger.debug("------------- file start -------------");
            logger.debug("name : "+product.getSpImage().getName());
            logger.debug("filename : "+product.getSpImage().getOriginalFilename());
            logger.debug("size : "+product.getSpImage().getSize());
            logger.debug("-------------- file end --------------\n");
            
            String uploadFileName = UploadFileUtils.uploadFile(cpMainImgPath, product.getSpImage().getOriginalFilename(), product.getSpImage().getBytes());
            
            dao.writesc(product, uploadFileName);
		}
		
	}

	@Override
	public void writemc(MakeupProductDTO product) throws IOException, Exception {
		if (product.getMpAccYn() == null) {
			product.setMpAccYn("N");
		}
		if (product.getMpFamilyYn() == null) {
			product.setMpFamilyYn("N");
		}
		if (product.getMpHairYn() == null) {
			product.setMpHairYn("N");
		}
		
		if (product.getMpImage().isEmpty() == false) {
			logger.debug("------------- file start -------------");
           logger.debug("name : "+product.getMpImage().getName());
           logger.debug("filename : "+product.getMpImage().getOriginalFilename());
           logger.debug("size : "+product.getMpImage().getSize());
           logger.debug("-------------- file end --------------\n");
            
            String uploadFileName = UploadFileUtils.uploadFile(cpMainImgPath, product.getMpImage().getOriginalFilename(), product.getMpImage().getBytes());
            
            dao.writemc(product, uploadFileName);
		}
	}
}
