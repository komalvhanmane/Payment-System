package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.model.Account;
import com.model.Customer;
import com.model.Transaction;

public class TransactionDao {
	public int mobileNoTransfer(String phno,int pin,int bank,String phnor, double amount,String acno) {
		Connection con=MyConnection.getConnection();
		LoginDao ld=new LoginDao();
		Customer c=ld.validate(phno, bank, pin);
		
		
		int i=0,i1=0;
		Account a=null;
		if(c!=null) {
			try {
				if(c.getA().getAcc_bal()<=amount+1000) {
					return 0;
				}
				PreparedStatement ps=con.prepareStatement(" update Account set acc_balance=? where acc_num in ( select acc_num from cust_acc where cust_phone = ? )  ");
				ps.setDouble(1,c.getA().getAcc_bal()-amount);
				ps.setString(2,phno);
				i=ps.executeUpdate();
				
				PreparedStatement ps1=con.prepareStatement("select * from Account where acc_num in ( select acc_num from cust_acc where cust_phone = ? )  ");
				ps1.setString(1,phnor);
				System.out.println(phnor);
				ResultSet r=ps1.executeQuery();
				while(r.next()) {
					a=new Account(r.getInt(1),r.getDouble(3),r.getInt(2),r.getInt(4),r.getInt(5));
					System.out.println(acno);
					if(!acno.equals("")) {
						if(a.getAcc_num()==(Integer.parseInt(acno))) {
							break;
						}
					}
					
				}
				if(a!=null) {
					PreparedStatement ps2=con.prepareStatement(" update Account set acc_balance=? where acc_num in ( select acc_num from cust_acc where cust_phone = ? )  ");
					System.out.println("hello sdfsf");
					ps2.setDouble(1,a.getAcc_bal()+amount);
					ps2.setString(2,phnor);
					System.out.println("hello");
					i1=ps2.executeUpdate();
					System.out.println("Hello komal");
				}
			} catch (SQLException e) {
				System.out.println("Exception : "+e);
			}
		}
		System.out.println(i+" "+i1);
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(i>0 && i1>0) {
			Transaction t=new Transaction(c.getA().getAcc_num(), a.getAcc_num(),"",a.getAcc_type(),amount);
			insert(t);
			return 1;
		}
		return 0;
	}
	
	public int insert(Transaction l) {
		Connection con=MyConnection.getConnection();
		int i=0;
			System.out.println("Hello");
			try {
				PreparedStatement ps=con.prepareStatement("insert into Transaction values(?,?,CURRENT_DATE,?,?) ");
				ps.setInt(1,l.getAcc1());
				ps.setInt(2,l.getAcc2());
				ps.setString(3, Integer.toString(l.getType()));
				ps.setDouble(4, l.getAmount());
			   i=ps.executeUpdate();
			   if(i>0) {
				   System.out.println("transaction is successfull");
			   }
			   else {
				   System.out.println("transaction is not successfull");
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
		return i;
	}
	
	public ArrayList<Transaction> retrive(String acc_num){
		ArrayList<Transaction> lst=new ArrayList<>();
		System.out.println(acc_num);
		Connection con=null;
		con = MyConnection.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement("select * from  Transaction where acc_num1=? OR acc_num2=? ");
			ps.setInt(1, Integer.parseInt(acc_num));
			ps.setInt(2, Integer.parseInt(acc_num));
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Transaction g=new Transaction(rs.getInt(1),rs.getInt(2),rs.getString(3),Integer.parseInt(rs.getString(4)),rs.getDouble(5));
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
	
	public String getPhno(String accno) {
		Connection con=MyConnection.getConnection();
		String ans=null;
			System.out.println("Hello");
			try {
				PreparedStatement ps=con.prepareStatement("select * from cust_acc where acc_num=?");
				ps.setString(1,accno);
			    ResultSet rs=ps.executeQuery();
			    if(rs.next()) {
			    	ans=rs.getString(1);
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
		return ans;
	}
}
