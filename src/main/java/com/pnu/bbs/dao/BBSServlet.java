package com.pnu.bbs.dao;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;

import com.pnu.bbs.dto.BBSDto;

public class BBSServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    public BBSServlet() {
        super();
    }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      request.setCharacterEncoding("utf-8");
	      String gu= request.getParameter("gu");
	      String dong = request.getParameter("dong");
	      String type = request.getParameter("type");
	      
	      System.out.println("구: " + gu + ", 동 : " + dong);
	      System.out.println("음식: " + type);
	      //send multiple values at the same time
	      request.setAttribute("gu", gu);
	      request.setAttribute("dong", dong);
	      request.setAttribute("type", type);
	      
	      
	      // // http://localhost:8090/bbs/template.bbs?gu="금정구"&dong="장전2동"&type="닭/오리요리"
	      RequestDispatcher dispatch = request.getRequestDispatcher("/template.bbs");  
	      dispatch.forward(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
   }
   
   public void destory() {
      System.out.println("destroy 메소드 호출");
   }
}