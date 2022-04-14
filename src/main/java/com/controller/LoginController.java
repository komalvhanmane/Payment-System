package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.LoginDao;
import com.model.Customer;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginController() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String phno = request.getParameter("phno");
		String pin = request.getParameter("pin");
		String bank = request.getParameter("bank");
		LoginDao ld=new LoginDao();
		
		response.setContentType("text/html");
		String flag=null;
		String flag1=null;
		Customer c=ld.validate(phno,Integer.parseInt(bank),Integer.parseInt(pin));
		if(c==null) {
			flag1="success";
			System.out.println("Invalid");
//			PrintWriter out=response.getWriter();
//			out.print("<div class=\"alert alert-danger\" role=\"alert\">\r\n"
//					+ "  A simple danger alert—check it out!\r\n"
//					+ "</div>\r\n"
//					+ "");
			response.sendRedirect("index.jsp");
			
		}
		else {
			flag="success";
			response.sendRedirect("index.jsp");
			
		}
		HttpSession session=request.getSession();
		session.setAttribute("insuffibal", null);
		session.setAttribute("check", flag);
		session.setAttribute("check2", flag1);
		session.setAttribute("customer", c);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
