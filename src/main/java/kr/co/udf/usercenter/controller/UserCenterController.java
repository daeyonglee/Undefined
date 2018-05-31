package kr.co.udf.usercenter.controller;



import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/usercenter/*")
public class UserCenterController {

	Logger logger = Logger.getLogger(UserCenterController.class);


	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void main() throws Exception {
	}
	
	@RequestMapping(value = "/auction", method = RequestMethod.GET)
	public void auction() throws Exception {
	}
	
	@RequestMapping(value = "/point", method = RequestMethod.GET)
	public void point() throws Exception {
	}
	
	@RequestMapping(value = "/company", method = RequestMethod.GET)
	public void company() throws Exception {
	}



}
