package com.minieyes.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/p07")
public class ServletPractice07 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    	resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html");
        
        PrintWriter out = resp.getWriter();
    	
        String address = req.getParameter("address");
        String card = req.getParameter("card");
        String priceString = req.getParameter("price");
        int price = Integer.parseInt(priceString);
        
        boolean flagAddress = address.contains("서울시");
        boolean flagCard = card.equals("신한카드");
        
        if(flagCard) {
        	flagCard = false;
        } else {
        	flagCard = true;        	
        }
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Get Method와 form 1</title>");
        out.println("</head>");
                
        out.println("<body>");
        
        if(flagAddress && flagCard) {        	
            
            out.println("<strong>" + address +" 배달 준비중</strong>");
            out.println("<hr>");
            out.println("결제금액 : "+ price + "원");
            
                    	
        } else if (flagAddress == false) {
        	out.println("<strong>배달 불가 지역 입니다.</strong>");
        } else if (flagCard == false) {
        	out.println("<strong>결제 불가 카드 입니다.</strong>");        	
        }
        
        out.println("</body>");
        out.println("</html>");
        out.close();
        
        
        

    }
}
