package kr.co.udf.user.controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.apache.log4j.Logger;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.udf.auction.domain.AuctionBid;
import kr.co.udf.auction.service.MypageBidService;
import kr.co.udf.common.product.domain.DressProduct;
import kr.co.udf.common.product.domain.MakeupProduct;
import kr.co.udf.common.util.MediaUtils;
import kr.co.udf.common.util.UploadFileUtils;
import kr.co.udf.common.web.SearchParams;
import kr.co.udf.user.domain.Company;
import kr.co.udf.user.domain.CompanyDTO;
import kr.co.udf.user.domain.DressProductDTO;
import kr.co.udf.user.domain.Login;
import kr.co.udf.user.domain.MakeupProductDTO;
import kr.co.udf.user.domain.StudioProduct;
import kr.co.udf.user.domain.StudioProductDTO;
import kr.co.udf.user.domain.User;
import kr.co.udf.user.domain.UserDTO;
import kr.co.udf.user.service.MypageProductService;
import kr.co.udf.user.service.UserMypageService;

@Controller
@RequestMapping("/user/mypage/*")
public class UserMypageController {
	
	private static Logger logger = Logger.getLogger(UserMypageController.class);
	
	@Resource(name="cpMainImgPath")
	private String cpMainImgPath;
	
	@Inject
	private UserMypageService mypageService;
	
	@Inject
	private MypageBidService mypageBidService;
	
	@Inject
	private MypageProductService mypageProductService;
	
	/**
	 * 마이페이지 index
	 */
	@RequestMapping(value="index", method=RequestMethod.GET)
	public String index(HttpSession session, Model model) {
		
		Login login = (Login)session.getAttribute("login");
		
		logger.info(login);
		
		model.addAttribute("login", login);
		
		return "/user/mypage/index";
		
	}
	
	/**
	 * 마이페이지 >> 내정보관리
	 */
	@RequestMapping(value="my", method=RequestMethod.GET)
	public String my() {
		logger.info("마이페이지-내정보관리!");
		return "/user/mypage/my";
	}
	
	@RequestMapping(value="my", method=RequestMethod.POST)
	public String my(@RequestParam("pw")String pw, HttpSession session, Model model) throws FileNotFoundException, UnsupportedEncodingException {
		
		logger.debug("/user/mypage/my POST start....");
		
		InputStream in = null;
		Login login = (Login)session.getAttribute("login");
		
		logger.debug(login);
		logger.debug(pw);
		if (login != null) {
			if (pw.equals(login.getPw())) {
				Object obj = mypageService.myinfo(login);
				String[] addrs = null;
				
				if ("users".equals(login.getRole())){
					User user = (User)obj;
					logger.debug(user);
					
					model.addAttribute("user", user);
					
					addrs = user.getAddr().split("\\^\\^");
					
					model.addAttribute("role", "user");
				}  else {
					Company company = (Company)obj;
					logger.debug(company);
					
					model.addAttribute("company", company);
					
					addrs = company.getAddr().split("\\^\\^");
					model.addAttribute("role", "company");
				}
				
				if (addrs != null) {
					model.addAttribute("postcode", addrs[0]);
					model.addAttribute("addr", addrs[1]);
					model.addAttribute("addrdetail", addrs[2]);
				}
			}
			model.addAttribute("msg", "success");
		}
		
		logger.debug("/user/mypage/my POST end....");
		return "/user/mypage/my";
	}
	
	/**
	 * 마이페이지 >> 내정보관리 >> 정보 수정하기 (일반 사용자)
	 * @param user
	 * @return
	 */
	@RequestMapping(value="userupdate", method=RequestMethod.POST)
	public String userupdate(UserDTO user, Model model, HttpSession session, RedirectAttributes rttr) {
		logger.debug("/user/mypage/userupdate POST start......");
		
		// 세션값 변경
		Login login = (Login)session.getAttribute("login");
		
		if ("".equals(user.getPw())) {
			user.setPw(login.getPw());
		}
		
		logger.debug(user);
		
		mypageService.userupdate(user);
		
		login.setPw(user.getPw());
		
		rttr.addFlashAttribute("msg", "update");
		
		session.setAttribute("login", login);
		
		logger.debug("/user/mypage/userupdate POST end........");
		return "redirect:/user/mypage/index";
	}
	
	@RequestMapping(value="companyupdate", method=RequestMethod.POST)
	public String companyupdate(CompanyDTO company, HttpSession session, RedirectAttributes rttr) throws IOException, Exception {
		
		// 세션값 변경
		Login login = (Login)session.getAttribute("login");
		if ("".equals(company.getPw())) {
			company.setPw(login.getPw());
		}
		
		logger.debug(company);
		
		mypageService.companyupdate(company);
		
		login.setPw(company.getPw());
		
		rttr.addFlashAttribute("msg", "update");
		
		session.setAttribute("login", login);
		
		return "redirect:/user/mypage/index";
	}
	
	/** 마이페이지 - 나의 신청서 리스트 조회 */
	@RequestMapping(value = "/apply", method = RequestMethod.GET)
	public String applyList(SearchParams params, HttpSession session, Model model) throws Exception {
		
		Login login = (Login)session.getAttribute("login");
		int userNo = login.getNo().intValue();
		logger.info(userNo);
		
		model.addAttribute("applyList", mypageBidService.applyListByUser(userNo));
		
		return "/user/mypage/apply";

	}
	
	/** 마이페이지 - 나의 낙찰된 신청서 리스트 조회 */
	@RequestMapping(value="/win", method=RequestMethod.GET)
	public String winList(HttpSession session, Model model) throws Exception{
		
		Login login = (Login)session.getAttribute("login");
		int userNo = login.getNo().intValue();
		logger.info(userNo);
		
		model.addAttribute("winList", mypageBidService.winListByUser(userNo));
		
		return "/user/mypage/win";
	}
	
	/** 마이페이지 - 입찰중 or 낙찰대기중인 신청서의 입찰서 리스트 조회 */
	@RequestMapping(value="/bidlist", method=RequestMethod.GET)
	public String bidList(@RequestParam("applyNo") int applyNo, @RequestParam("type") String type, HttpSession session, Model model) throws Exception{
		
		Login login = (Login)session.getAttribute("login");
		int userNo = login.getNo().intValue();
		logger.info(userNo);
		
		List<AuctionBid> bid = mypageBidService.bidListByUser(userNo, applyNo, type);
		logger.info(bid);
		
		model.addAttribute("bidList", bid);
		
		return "/user/mypage/bidlist";
	}
	
	/** 마이페이지 - 입찰중 or 낙찰대기중인 신청서 상세 조회 */
	@RequestMapping(value="/bid/read", method=RequestMethod.GET)
	public String readBid(@RequestParam("applyNo") int applyNo, @RequestParam("type") String type, HttpSession session, Model model) throws Exception {
		
		Login login = (Login)session.getAttribute("login");
		int userNo = login.getNo().intValue();
		logger.info(userNo);
		
		AuctionBid bid = mypageBidService.readBid(userNo, applyNo, type);
		logger.info(bid);
		
		model.addAttribute("bid", bid);
		
		return "/user/mypage/bidread";
	}
	
	/**
	 * 마이페이지 >> 관심업체
	 */
	@RequestMapping(value="interest", method=RequestMethod.GET)
	public String interest() {
		logger.info("마이페이지-관심업체 들어왔숑");
		
		return "/user/mypage/interest";
	}
	
	/**
	 * 마이페이지 >> 포인트관리
	 */
	@RequestMapping(value="point", method=RequestMethod.GET)
	public String point() {
		logger.info("마이페이지-포인트관리 들어왔숑");
		
		return "/user/mypage/point";
	}
	
	/**
	 * 마이페이지 >> 나의 상품보기
	 */
	@RequestMapping(value="plist", method=RequestMethod.GET)
	public String plist(Model model, HttpSession session) {

		Login login = (Login)session.getAttribute("login");
		
		model.addAttribute("login", login);
		
		logger.debug(login);
		
		if ("sc".equals(login.getRole())) {
			List<StudioProduct> slist = mypageProductService.plistSp(login);
			logger.info(slist);
			model.addAttribute("slist", slist);
		}
		if ("dc".equals(login.getRole())) {
			List<DressProduct> dlist = mypageProductService.plistDp(login);
			logger.info(dlist);
			model.addAttribute("dlist", dlist);
		}
		if ("mc".equals(login.getRole())) {
			List<MakeupProduct> mlist = mypageProductService.plistMp(login);
			logger.info(mlist);
			model.addAttribute("mlist", mlist);
		}
		
		return "/user/mypage/plist";
	}
	
	@RequestMapping(value="writedc", method=RequestMethod.GET)
	public void writedc(Model model) {
		
	}
	
	@RequestMapping(value="writedc", method=RequestMethod.POST)
	public String writedcPOST(HttpSession session, DressProductDTO product) throws IOException, Exception {
		
		logger.debug(product);
		
		Login login = (Login)session.getAttribute("login");
		product.setDcNo(login.getNo());
		
		mypageProductService.writedc(product);
		
		return "redirect:/user/mypage/plist";
	}
	
	@RequestMapping(value="writemc", method=RequestMethod.GET)
	public void wrtiemc() {
		
	}
	
	@RequestMapping(value="writemc", method=RequestMethod.POST)
	public String wrtiemcPOST(HttpSession session, MakeupProductDTO product) throws IOException, Exception {
		
		logger.debug(product);
		
		Login login = (Login)session.getAttribute("login");
		product.setMcNo(login.getNo());
		
		mypageProductService.writemc(product);
		
		return "redirect:/user/mypage/plist";
	}
	
	@RequestMapping(value="writesc", method=RequestMethod.GET)
	public void writesc() {
		
	}
	
	@RequestMapping(value="writesc", method=RequestMethod.POST)
	public String writescPOST(HttpSession session, StudioProductDTO product) throws IOException, Exception {
		logger.debug(product);
		
		Login login = (Login)session.getAttribute("login");
		product.setScNo(login.getNo());
		
		mypageProductService.writesc(product);
		
		return "redirect:/user/mypage/plist";
	}
	
	/**
	 * 마이페이지 >> 이미지 호출
	 * @throws IOException 
	 */
	@RequestMapping(value="imgview", method=RequestMethod.GET)
	public ResponseEntity<byte[]> imgview(@RequestParam("imgview") String imgview) throws IOException {
		InputStream in = null;
		ResponseEntity<byte[]> entity = null;
		logger.info("FILE NAME : " + imgview);
		logger.info(imgview);
		
		try {
			String formatName = imgview.substring(imgview.lastIndexOf(".")+1);
			MediaType mType = MediaUtils.getMediaType(formatName);
			
			HttpHeaders headers = new HttpHeaders();
			in = new FileInputStream(cpMainImgPath+imgview);
			
			if (mType != null) {
				headers.setContentType(mType);
			} else {
				imgview = imgview.substring(imgview.indexOf("_")+1);
				headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
				headers.add("Content-Disposition", "attachment; filename=\"" + new String(imgview.getBytes("UTF-8"), "ISO-8859-1")+"\"");
			}
			
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);
					
		} catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		} finally {
			in.close();
		}
		
		return entity;
	}
}
