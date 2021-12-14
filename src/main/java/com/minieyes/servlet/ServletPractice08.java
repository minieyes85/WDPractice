package com.minieyes.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/p08")
public class ServletPractice08 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    	resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html");
        
        PrintWriter out = resp.getWriter();
    	
        List<String> list = new ArrayList<>(Arrays.asList(
                "강남역 최고 맛집 소개 합니다.", 
                "오늘 기분 좋은 일이 있었네요.", 
                "역시 맛집 데이트가 제일 좋네요.", 
                "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
                "자축 저 오늘 생일 이에요."));
        
        String input = req.getParameter("input");
        
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Get Method와 form 2</title>");
        out.println("</head>");
                
        out.println("<body>");
        
        for(int i = 0 ; i <= list.size() ; i++) {
        	if(list.get(i).contains(input)) {
        		String[] result = list.get(i).split(" ");
        		for(int j = 0 ; j < result.length; j++) {
        			if(result[j].equals(input)) {
        				out.println("<b>"+result[j]+" </b>");
        			} else {
        				out.println(result[j]+" ");
        			}
        		}
//        		out.println(list.get(i));
        		out.println("<hr>");
        	}
        }
        out.println("</body>");
        out.println("</html>");
        out.close();
        
        
        

    }
}
