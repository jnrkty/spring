package kr.green.springtest.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.green.springtest.vo.AccountVo;

public class UnauthInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, 
			Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		Object user = (AccountVo)session.getAttribute("user");
//		AccountVo user = (AccountVo)session.getAttribute("user");

		if(user != null) {
			response.sendRedirect(request.getContextPath()+"/bbs/list");
			return false;
		}
		return true;
	}
}