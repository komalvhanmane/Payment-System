package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.TransactionDao;
import com.model.Transaction;
/**
 * Servlet implementation class TransactionController
 */
@WebServlet("/TransactionController")
public class TransactionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public TransactionController() {
        super();
    }
//<%=c.getA().getAcc_num()%>
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TransactionDao gd=new TransactionDao();
		String phno=request.getParameter("acno");
		ArrayList<Transaction> g=gd.retrive(phno);
		HttpSession session=request.getSession();
		session.setAttribute("TranPh",g);
		
		for(int i=0;i<g.size();i++) {
			System.out.println(g.get(i).getAcc1()+" "+g.get(i).getAcc2()+" "+g.get(i).getDate()+" "+g.get(i).getAmount()+" "+g.get(i).getType());
		}
	//	System.out.println();
//		RequestDispatcher rd=request.getRequestDispatcher("diplaygame.jsp");
//		rd.forward(request, response);
		response.sendRedirect("Transaction.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
