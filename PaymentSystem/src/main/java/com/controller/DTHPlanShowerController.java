package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.DTHRechargeDao;
import com.Dao.RechargeDao;
import com.model.DTH_RechargePlan;
import com.model.PhoneType;
import com.model.Recharge_Plans;

/**
 * Servlet implementation class DTHPlanShowerController
 */
@WebServlet("/DTHPlanShowerController")
public class DTHPlanShowerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public DTHPlanShowerController() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid=request.getParameter("sid");
		String type=request.getParameter("type");
		
		DTHRechargeDao rd=new DTHRechargeDao();
		boolean bol=rd.validate(sid, type);
		String x="komal";
		ArrayList<DTH_RechargePlan> g=null;
		if(bol) {
			if(type.equals("1")) {
				DTHRechargeDao gd=new DTHRechargeDao();
				g=gd.retrive(type);
				x="1";
				for(int i=0;i<g.size();i++) {
					System.out.println(g.get(i).getId()+" "+g.get(i).getValidity()+" "+g.get(i).getPrice());
				}
				response.sendRedirect("AirtelDTH.jsp");
			}
			else if(type.equals("2")) {
				DTHRechargeDao gd=new DTHRechargeDao();
				g=gd.retrive(type);
				x="2";
				for(int i=0;i<g.size();i++) {
					System.out.println(g.get(i).getId()+" "+g.get(i).getValidity()+" "+g.get(i).getPrice());
				}
				response.sendRedirect("DishDTH.jsp");
			}
			else if(type.equals("3")) {
				DTHRechargeDao gd=new DTHRechargeDao();
				g=gd.retrive(type);
				x="3";
				for(int i=0;i<g.size();i++) {
					System.out.println(g.get(i).getId()+" "+g.get(i).getValidity()+" "+g.get(i).getPrice());
				}
				response.sendRedirect("SunDirectDTH.jsp");
			}
			else if(type.equals("4")) {
				DTHRechargeDao gd=new DTHRechargeDao();
				g=gd.retrive(type);
				x="4";
				for(int i=0;i<g.size();i++) {
					System.out.println(g.get(i).getId()+" "+g.get(i).getValidity()+" "+g.get(i).getPrice());
				}
				response.sendRedirect("TataPlayDTH.jsp");
			}
			else if(type.equals("5")) {
				DTHRechargeDao gd=new DTHRechargeDao();
				g=gd.retrive(type);
				x="5";
				for(int i=0;i<g.size();i++) {
					System.out.println(g.get(i).getId()+" "+g.get(i).getValidity()+" "+g.get(i).getPrice());
				}
				response.sendRedirect("D2H.jsp");
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
