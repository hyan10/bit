package kr.co.bit.servlet;
import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet{
	
	@Override
	public void service(ServletRequest req, ServletResponse res){ // throws ServletException, IOException {
		System.out.println("service: 실제 작업이 수행되는 메소드입니다.");
		System.out.println("service: 사용자가 요청할 때마다 호출되는 메소드입니다.");
	}
	

	/*@Override
	public void destroy() {
		System.out.println("destroy: 서버 재 구동시에 호출되는 메소드입니다.");
	}

	@Override
	public void init(ServletConfig config) throws ServletException{
		System.out.println("init: 한번만 실행되는 메소드입니다.");
	}
	*/
	
}
