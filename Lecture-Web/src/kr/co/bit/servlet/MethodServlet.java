package kr.co.bit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MethodServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String method = req.getMethod();
		if(method.equals("POST")){
			req.setCharacterEncoding("utf-8");
			doPost(req,res);
		}else {
			doGet(req,res);
		}
		
		String id = req.getParameter("id");
		
		System.out.println(method);
		System.out.println(id);
		
		StringBuffer url = req.getRequestURL();
		String uri = req.getRequestURI();
		
		System.out.println(url.toString());
		System.out.println(uri);
		
		res.setContentType("text/html; charset=utf-8");
		PrintWriter out = res.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>메소드 호출방식</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<hr>");
		out.println("파라미터 id: "+id+"<br/>");
		out.println("요청방식: "+method+"<br/>");
		out.println("URL: "+url.toString()+"<br/>");
		out.println("URI: "+uri+"<br/>");
		out.println("<hr>");
		out.println("</body>");
		out.println("</html>");
		out.flush();
		out.close();

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		/*req.setCharacterEncoding("euc-kr");
		
		String method = req.getMethod();
		String id = req.getParameter("id");
		
		System.out.println(method);
		System.out.println(id);
		
		StringBuffer url = req.getRequestURL();
		String uri = req.getRequestURI();
		
		System.out.println(url.toString());
		System.out.println(uri);
		
		res.setContentType("text/html; charset=utf-8");
		PrintWriter out = res.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>메소드 호출방식</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<hr>");
		out.println("파라미터 id: "+id+"<br/>");
		out.println("요청방식: "+method+"<br/>");
		out.println("URL: "+url.toString()+"<br/>");
		out.println("URI: "+uri+"<br/>");
		out.println("<hr>");
		out.println("</body>");
		out.println("</html>");
		out.flush();
		out.close();*/
	}
		
}
