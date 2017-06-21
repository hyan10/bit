package kr.co.bit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/*
 *  http://localhost:8000/Lecture-Web/servlet/test.html
 *  		?name=dfsfdssa&hobby=reading&hobby=music
 */
public class ExamMethodServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String[] hobby = req.getParameterValues("hobby");
		
		resp.setContentType("text/html; charset=utf-8;");
		PrintWriter out = resp.getWriter();
		
		StringBuilder sb = new StringBuilder();
		sb.append("<HTML>");
		sb.append("<HEAD><TITLE>Ÿ��Ʋ</TITLE></HEAD>");
		sb.append("<BODY>");
		sb.append("�̸�: "+name+"<BR/>");
		sb.append("���: ");
		for(int i=0; i<hobby.length; i++){
			if(i!=0) sb.append(",&nbsp");  // &nbsp(����)
			sb.append(hobby[i]);
		}
		sb.append("<BR/>");
		sb.append("</BODY>");
		sb.append("</HTML>");
		
		out.println(sb.toString());
		out.flush();
		out.close();
		
	/* ������ ���
		System.out.println("name: "+name);
		System.out.println("hobby: ");
		for(String s : hobby){
			System.out.print(" "+s);
		}
	*/
	}
	
}
