package kr.co.udf.interceptor;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import kr.co.udf.user.domain.Login;
import kr.co.udf.user.service.UserLoginService;


public class AuthInterceptor extends HandlerInterceptorAdapter{

	private static final Logger logger = Logger.getLogger(AuthInterceptor.class);
	
	@Inject
	private UserLoginService service;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		
		if (session.getAttribute("login") == null) {
			logger.info("current user is not logined");
			
			saveDest(request);
			
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			
			if (loginCookie != null) {
				Login login = service.checkLoginBefore(loginCookie.getValue());
				
				logger.info("LOGIN: " + login);
				
				if (login != null) {
					session.setAttribute("login", login);
					return true;
				}
			}
			
			response.sendRedirect("/user/login");
			return false;
		}
		return true;
	}
	
	private void saveDest(HttpServletRequest req) {
		
		String uri = req.getRequestURI();
		
		String query = req.getQueryString();
		
		if (query == null || query.equals("null")) {
			query = "";
		} else {
			query = "?" + query;
		}
		
		if (req.getMethod().equals("GET" )) {
			logger.info("dest: " + (uri + query));
			req.getSession().setAttribute("dest", uri+query);
		}
	}
}
