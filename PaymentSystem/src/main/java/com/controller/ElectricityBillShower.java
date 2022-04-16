package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.ElectricityDao;
import com.model.ElectricityBillatt;

/**
 * Servlet implementation class ElectricityBillShower
 */
@WebServlet("/ElectricityBillShower")
public class ElectricityBillShower extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ElectricityBillShower() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid=request.getParameter("sid");
		String type=request.getParameter("type");
		ElectricityDao ed=new ElectricityDao();
		ElectricityBillatt b=ed.validate(sid, type);
		String x="succes";
		if(b!=null) {
			
			System.out.println("Bill is there");
			response.sendRedirect("ElectricityBill.jsp");
		}
		else {
			x="innsuff";
			System.out.println("invalid");
			response.sendRedirect("index.jsp");
		}
		HttpSession session=request.getSession();
		session.setAttribute("electbill", b);
		session.setAttribute("type", type);
		session.setAttribute("insuffibal", x );
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
