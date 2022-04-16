package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import com.model.Account;
import com.model.Customer;


public class LoginDao {
	
	public Customer validate(String phno,int bank,int pin) {
		Connection con=MyConnection.getConnection();
		Customer c=null;
		Account ac=null;
			try {
				PreparedStatement ps=con.prepareStatement("select * from Account where acc_num in ( select acc_num from cust_acc where cust_phone = ? )  ");
				ps.setString(1,phno);
				ResultSet r=ps.executeQuery();
				while(r.next()) {
					System.out.println("Hello");
					if(r.getInt(4)==bank && r.getInt(5)==pin) {
						ac=new Account(r.getInt(1),r.getDouble(3),r.getInt(2),r.getInt(5),r.getInt(4));
						break;
					}
				}
				if(ac!=null) {
					PreparedStatement ps1=con.prepareStatement("select * from Customer_P where cust_phone = ? ");
					ps1.setString(1,phno);
					ResultSet r1=ps1.executeQuery();
					if(r1.next()) {
							 c=new Customer(r1.getInt(1),r1.getString(2),r1.getString(3),r1.getString(4),r1.getString(5),r1.getString(6),r1.getString(7),r1.getInt(8));
							 c.setA(ac);
					}
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
		return c;
	}
	
	public LinkedList<Integer> getList(String phno){
		Connection con=MyConnection.getConnection();
		LinkedList<Integer> lst=new LinkedList<Integer>();
			try {
				PreparedStatement ps=con.prepareStatement(" select acc_num from cust_acc where cust_phone = ? ");
				ps.setString(1,phno);
				ResultSet r=ps.executeQuery();
				while(r.next()) {
					System.out.println("Hello");
					lst.add(r.getInt(1));
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
		return lst;
	}
}
