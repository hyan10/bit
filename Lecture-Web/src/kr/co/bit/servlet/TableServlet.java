package kr.co.bit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// http://localhost:8000/Lecture-Web/table?rows=4&cols=3

// annotation으로 경로 지정해줄 수 있다.
@WebServlet("/servlet/tableExam")
public class TableServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int row = Integer.parseInt(req.getParameter("rows")==null?"5":req.getParameter("rows"));
		int col = Integer.parseInt(req.getParameter("cols")==null?"5":req.getParameter("cols"));
		
		System.out.println(row+" "+col);
		
		resp.setContentType("text/html; charset=utf-8;"); 
		PrintWriter out = resp.getWriter();
		
		StringBuilder sb = new StringBuilder();
		
		sb.append("<HTML>");
		sb.append("<head><title>테이블</title></head>");
		sb.append("<body>");
		sb.append("-------------------------------------<br/>");
		
		for(int i=0, j=0; i<row && j<=col;){
			
			sb.append("cel("+i+","+j+") | ");		
			j++;
	
			if(j==col){
				sb.append("<br/>-------------------------------------<br/>");
				j=0;
				i++;
			}
			
		}
		
		sb.append("</body>");
		sb.append("</HTML>");
		
		out.println(sb);
		out.flush();
		
	}
	
	

}
