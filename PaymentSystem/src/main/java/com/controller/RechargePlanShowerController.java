package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.RechargeDao;
import com.Dao.TransactionDao;
import com.model.PhoneType;
import com.model.Recharge_Plans;
import com.model.Transaction;

@WebServlet("/RechargePlanShowerController")
public class RechargePlanShowerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public RechargePlanShowerController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String phno=request.getParameter("phnor");
		RechargeDao rd=new RechargeDao();
		PhoneType p=rd.validate(phno);
		String x="";
		ArrayList<Recharge_Plans> g=null;
		if(p!=null) {
		
			System.out.println(p.getType());
			if(p.getType().equalsIgnoreCase("Airtel")) {
				RechargeDao gd=new RechargeDao();
				g=gd.retrive();
				x="airtel";
				for(int i=0;i<g.size();i++) {
					System.out.println(g.get(i).getId()+" "+g.get(i).getCalls()+" "+g.get(i).getPrice()+" "+g.get(i).getNet()+" "+g.get(i).getSms());
				}
				response.sendRedirect("Plans.jsp");
			}
			else {
				RechargeDao gd=new RechargeDao();
				g=gd.retrivejio();
				x="airtel";
				for(int i=0;i<g.size();i++) {
					System.out.println(g.get(i).getId()+" "+g.get(i).getCalls()+" "+g.get(i).getPrice()+" "+g.get(i).getNet()+" "+g.get(i).getSms());
				}
				x="jio";
				response.sendRedirect("JioPlans.jsp");
			}
		}
		else {
			HttpSession session=request.getSession();
			session.setAttribute("insuffibal", "innsuff" );
			System.out.println("Something wrong went");
			response.sendRedirect("index.jsp");
		}
		HttpSession session=request.getSession();
		session.setAttribute(x,g);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
