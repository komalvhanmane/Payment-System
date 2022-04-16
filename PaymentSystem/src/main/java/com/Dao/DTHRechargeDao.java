package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.model.DTH_Recharge;
import com.model.DTH_RechargePlan;
import com.model.Transaction;

public class DTHRechargeDao {
	
	public boolean validate(String sid,String type) {
		Connection con=MyConnection.getConnection();
		DTH_Recharge dr=null;
			try {
					PreparedStatement ps=con.prepareStatement("select * from dth_recharge where sid=? and type=? ");
					ps.setString(1,sid);
					ps.setString(2, type);
					ResultSet r=ps.executeQuery();
					if(r.next()) {
						dr=new DTH_Recharge(sid,type);
					}
				    
			} catch (SQLException e) {
				System.out.println("Exception : "+e);
			}
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(dr!=null) {
				return true;
			}
			else {
				return false;
			}
	}
	
	public ArrayList<DTH_RechargePlan> retrive(String type){
		ArrayList<DTH_RechargePlan> lst=new ArrayList<>();
		Connection con=null;
		con = MyConnection.getConnection();
		try {
			PreparedStatement ps=null;
			if(type.equals("1")) {
				ps=con.prepareStatement("select * from  Airtel_DTH_Recharge");
			}
			else if(type.equals("2")) {
				ps=con.prepareStatement("select * from  Dish_DTH_Recharge");
			}
			else if(type.equals("4")) {
				ps=con.prepareStatement("select * from  TataPlay_DTH_Recharge");
			}
			else if(type.equals("3")) {
				ps=con.prepareStatement("select * from  sunDirect_DTH_Recharge");
			}
			else {
				ps=con.prepareStatement("select * from  Dish_DTH_Recharge");
			}
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				DTH_RechargePlan g=new DTH_RechargePlan(rs.getInt(1),rs.getInt(2),rs.getDouble(3));
				lst.add(g);
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}
}
