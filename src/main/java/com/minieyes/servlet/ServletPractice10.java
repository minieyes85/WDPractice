package com.minieyes.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/p10")
public class ServletPractice10 extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/html");
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		PrintWriter out = resp.getWriter();
		
		out.println("<html>");
        out.println("<head>");
        out.println("<title>Post Method 2</title>");
        out.println("</head>");
                
        out.println("<body>");
		
		if(id.equals(userMap.get("id")) && pw.equals(userMap.get("password"))) {
			String name = userMap.get("name");
			out.println("<h2>" + name + "님 안녕하세요. </h2>");
		} else if(id.equals(userMap.get("id")) == false) {
			out.println("id가 일치하지 않습니다.");
		} else if(pw.equals(userMap.get("password")) == false) {
			out.println("password가 일치하지 않습니다.");
		}
		
		out.println("</body>");
        out.println("</html>");
        out.close();
		
	}
	
	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	    }
	};

}

