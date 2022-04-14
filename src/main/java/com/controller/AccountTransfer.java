package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.TransactionDao;

/**
 * Servlet implementation class AccountTransfer
 */
@WebServlet("/AccountTransfer")
public class AccountTransfer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccountTransfer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String phno = request.getParameter("phno");
		String pin = request.getParameter("pin");
		String bank = request.getParameter("bank");
		String acnor = request.getParameter("acnor");
		double Amount = Double.parseDouble(request.getParameter("amt"));
		TransactionDao td=new TransactionDao();
		String phnor=td.getPhno(acnor);
		
		
		String x="succes1";
		int flag=td.mobileNoTransfer(phno,Integer.parseInt(pin),Integer.parseInt(bank),phnor,Amount);
		if(flag==1) {
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
