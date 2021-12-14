package com.minieyes.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/p09")
public class ServletPractice09 extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html");
		
		PrintWriter out = resp.getWriter();
		
		String name = req.getParameter("name");
		String introduce = req.getParameter("introduce");
		
		
		out.println("<html>");
        out.println("<head>");
        out.println("<title>Get Method와 form 1</title>");
        out.println("</head>");
                
        out.println("<body>");
        
		out.println("<h1>" + name + "님 지원이 완료 되었습니다. </h1>");
		out.println("<hr>");
		out.println("지원 내용 <br>");
		out.println(introduce);
		
		
		out.println("</body>");
        out.println("</html>");
        out.close();
		
		
	}

}
