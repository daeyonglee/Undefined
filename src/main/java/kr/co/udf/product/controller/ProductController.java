package kr.co.udf.product.controller;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.udf.common.product.domain.DressProduct;
import kr.co.udf.common.product.domain.MakeupProduct;
import kr.co.udf.common.product.domain.StudioProduct;
import kr.co.udf.product.service.DressProductService;
import kr.co.udf.product.service.MakeupProductService;
import kr.co.udf.product.service.StudioProductService;

@Controller
@RequestMapping("/product/*")
public class ProductController {
	
	Logger logger = Logger.getLogger(ProductController.class);
	
	@Inject
	private StudioProductService spservice;
	
	@Inject
	private DressProductService dpservice;
	
	@Inject
	private MakeupProductService mpservice;
	
	/** 스튜디오 */
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public void registerGET(StudioProduct sp, Model model) throws Exception {
		logger.info("register GET");
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String registPOST(StudioProduct sp, RedirectAttributes rttr) throws Exception {

			logger.info("상품추가 POST");
			logger.info(sp.toString());
			
			rttr.addFlashAttribute("msg","상품추가 성공");
			spservice.create(sp);
			
			return "redirect:/product/listall";
		
	}
	
	@RequestMapping(value = "/splist", method = RequestMethod.GET) 
	public void listallGET(StudioProduct sp, Model model) throws Exception {
		logger.info("listall GET");
		model.addAttribute("list", spservice.listAll());
	}
	

	@RequestMapping(value = "/read", method = RequestMethod.GET)	 	
	public void read(@RequestParam("sp_no") int sp_no, Model model) throws Exception {	
		
		model.addAttribute(spservice.read(sp_no));
	}
	

	@RequestMapping(value = "/remove", method = RequestMethod.POST)	 	
	public String delete(@RequestParam("sp_no") int sp_no, RedirectAttributes rttr) throws Exception {		
		spservice.delete(sp_no);;

		rttr.addFlashAttribute("msg", "SUCCESS");
	    return "redirect:/product/listpage";
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)	 	
	public void modifyGET(@RequestParam("sp_no") int sp_no, Model model) throws Exception {		
		model.addAttribute(spservice.read(sp_no));
		logger.info("modify get");
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)	 	
	public String modifyPOST(StudioProduct sp, RedirectAttributes rttr) throws Exception {		
		
		spservice.update(sp);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		logger.info("modify post");
		
		return "redirect:/product/listpage";
		
	}

	
	/** 드레스 */
	
	@RequestMapping(value = "/dressadd", method = RequestMethod.GET)
	public void dreregisterGET(DressProduct dp, Model model) throws Exception {
		logger.info("dress register GET");
	}
	
	@RequestMapping(value = "/dressadd", method = RequestMethod.POST)
	public String dreregistPOST(DressProduct dp, RedirectAttributes rttr) throws Exception {

			logger.info("dress 상품추가 POST");
			logger.info(dp.toString());
			
			rttr.addFlashAttribute("msg","dress 상품추가 성공");
			dpservice.create(dp);
			
			return "redirect:/product/dresslistall";
		
	}
	
	@RequestMapping(value = "/drelistall", method = RequestMethod.GET) 
	public void drelistallGET(DressProduct dp, Model model) throws Exception {
		logger.info("dress listall GET");
		model.addAttribute("list", dpservice.listAll());
	}
	

	@RequestMapping(value = "/dreread", method = RequestMethod.GET)	 	
	public void dreread(@RequestParam("dp_no") int dp_no, Model model) throws Exception {	
		
		model.addAttribute(dpservice.read(dp_no));
	}
	

	@RequestMapping(value = "/dreremove", method = RequestMethod.POST)	 	
	public String dredelete(@RequestParam("dp_no") int dp_no, RedirectAttributes rttr) throws Exception {		
		dpservice.delete(dp_no);;

		rttr.addFlashAttribute("msg", "SUCCESS");
	    return "redirect:/product/listpage";
	}
	
	@RequestMapping(value = "/dremodify", method = RequestMethod.GET)	 	
	public void dremodifyGET(@RequestParam("dp_no") int dp_no, Model model) throws Exception {		
		model.addAttribute(dpservice.read(dp_no));
		logger.info("modify get");
	}

	@RequestMapping(value = "/dremodify", method = RequestMethod.POST)	 	
	public String dremodifyPOST(DressProduct dp, RedirectAttributes rttr) throws Exception {		
		
		dpservice.update(dp);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		logger.info("modify post");
		
		return "redirect:/product/listpage";
		
	}
	
	
	/** 메이크업 */
	
	@RequestMapping(value = "/makeupadd", method = RequestMethod.GET)
	public void makeregisterGET(MakeupProduct mp, Model model) throws Exception {
		logger.info("dress register GET");
	}
	
	@RequestMapping(value = "/dreadd", method = RequestMethod.POST)
	public String makeregistPOST(MakeupProduct mp, RedirectAttributes rttr) throws Exception {

			logger.info("dress 상품추가 POST");
			logger.info(mp.toString());
			
			rttr.addFlashAttribute("msg","dress 상품추가 성공");
			mpservice.create(mp);
			
			return "redirect:/product/dresslistall";
		
	}
	

	
}
