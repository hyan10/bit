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
		System.out.println("service: ���� �۾��� ����Ǵ� �޼ҵ��Դϴ�.");
		System.out.println("service: ����ڰ� ��û�� ������ ȣ��Ǵ� �޼ҵ��Դϴ�.");
	}
	

	/*@Override
	public void destroy() {
		System.out.println("destroy: ���� �� �����ÿ� ȣ��Ǵ� �޼ҵ��Դϴ�.");
	}

	@Override
	public void init(ServletConfig config) throws ServletException{
		System.out.println("init: �ѹ��� ����Ǵ� �޼ҵ��Դϴ�.");
	}
	*/
	
}
