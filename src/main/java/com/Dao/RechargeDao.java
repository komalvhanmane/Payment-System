package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.model.PhoneType;
import com.model.Recharge_Plans;
import com.model.Transaction;

public class RechargeDao {
	
	public PhoneType validate(String phno) {
		Connection con=MyConnection.getConnection();
		PhoneType p=null;
		
		try {
			
			PreparedStatement ps=con.prepareStatement("select * from Phone_type where phone_num = ?");
			System.out.println(phno);
			ps.setString(1, phno);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()) {
				System.out.println("hello");
				p=new PhoneType(rs.getString(1),rs.getString(2));
			}
			if(p==null) {
				System.out.println("some problem in finding phno");
			}
		}
		catch(SQLException e) {
			System.out.println("Exception "+ e);
		}
		return p;
	}
	
	//airtel plans 
	public ArrayList<Recharge_Plans> retrive(){
		ArrayList<Recharge_Plans> lst=new ArrayList<>();
		Connection con=null;
		con = MyConnection.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement("select * from  airtel_recharge");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Recharge_Plans g=new Recharge_Plans(rs.getInt(1),rs.getInt(2),rs.getString(3),Integer.parseInt(rs.getString(4)),rs.getString(5));
				lst.add(g);
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		return lst;
	}
	
	public ArrayList<Recharge_Plans> retrivejio(){
		ArrayList<Recharge_Plans> lst=new ArrayList<>();
		Connection con=null;
		con = MyConnection.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement("select * from  jio_recharge");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Recharge_Plans g=new Recharge_Plans(rs.getInt(1),rs.getInt(2),rs.getString(3),Integer.parseInt(rs.getString(4)),rs.getString(5));
				lst.add(g);
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		return lst;
	}
}
