package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.model.ElectricityBillatt;

public class ElectricityDao {
	
	public ElectricityBillatt validate(String sid,String type) {
		Connection con=MyConnection.getConnection();
		ElectricityBillatt dr=null;
			try {
				PreparedStatement ps=null;
				if(type.equals("1")) {
					ps=con.prepareStatement("select * from  adani_electricity where cons_no=?");
				}
				else if(type.equals("2")) {
					ps=con.prepareStatement("select * from  Best_Mumbai where cons_no=?");
				}
				else if(type.equals("4")) {
					ps=con.prepareStatement("select * from  MSEDC_Mahavitaran where cons_no=?");
				}
				else if(type.equals("3")) {
					ps=con.prepareStatement("select * from  Tata_Power_mumbai where cons_no=?");
				}
				else {
					ps=con.prepareStatement("select * from  Torrent_Power where cons_no=?");
				}
				ps.setString(1,sid);
				ResultSet r=ps.executeQuery();
				if(r.next()) {
					dr=new ElectricityBillatt(r.getInt(1),r.getString(2),r.getDouble(3),r.getString(4),r.getInt(5));
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
			return dr;
	}
	
	public int updateStatus(String sid,String type) {
		Connection con=MyConnection.getConnection();
		int i=0;
			try {
				PreparedStatement ps=null;
				if(type.equals("1")) {
					ps=con.prepareStatement("update  adani_electricity  set status =? where cons_no=?");
				}
				else if(type.equals("2")) {
					ps=con.prepareStatement("update Best_Mumbai set status =? where cons_no=?");
				}
				else if(type.equals("4")) {
					ps=con.prepareStatement("update MSEDC_Mahavitaran set status =? where cons_no=?");
				}
				else if(type.equals("3")) {
					ps=con.prepareStatement("update  Tata_Power_mumbai set status =? where cons_no=?");
				}
				else {
					ps=con.prepareStatement("update  Torrent_Power  set status =? where cons_no=?");
				}
				ps.setInt(1, 1);
				ps.setString(2,sid);
				
				 i=ps.executeUpdate();
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
}
