package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.ElectricityDao;
import com.Dao.TransactionDao;

@WebServlet("/MobileNoTransferController")
public class MobileNoTransferController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public MobileNoTransferController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String phno = request.getParameter("phno");
		String pin = request.getParameter("pin");
		String bank = request.getParameter("bank");
		String phnor = request.getParameter("phnor");
		
		String cun_num=request.getParameter("cons_num");
		String type=request.getParameter("type");
		double Amount = Double.parseDouble(request.getParameter("amt"));
		TransactionDao td=new TransactionDao();
		String x="succes1";
		int flag=td.mobileNoTransfer(phno,Integer.parseInt(pin),Integer.parseInt(bank),phnor,Amount,"");
		if(flag==1) {
			System.out.println(cun_num+" "+type);
			if(cun_num!=null && type!=null) {
				ElectricityDao ed=new ElectricityDao();
				int i=ed.updateStatus(cun_num, type);
				if(i>0) {
					System.out.println("Status updated");
				}
				else {
					System.out.println("Status not updated");
				}
			}
			x="succes1";
			System.out.println("transaction done :)) ");
			RequestDispatcher rd=request.getRequestDispatcher("LoginController");
			rd.forward(request, response);
			//response.sendRedirect("index.jsp");
		}
		else  {
			x="innsuff";
			System.out.println("transaction not done :)) ");
			response.sendRedirect("index.jsp");
		}
		HttpSession session=request.getSession();
		session.setAttribute("insuffibal", x );
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
