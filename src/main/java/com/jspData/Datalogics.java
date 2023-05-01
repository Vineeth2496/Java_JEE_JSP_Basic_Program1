package com.jspData;

import java.io.FileInputStream;
import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Properties;

public class Datalogics {
	public static Connection mycon()
	{
		Connection con=null;
		try
		{
			FileInputStream fi=new FileInputStream("C:\\Users\\vinee\\OneDrive\\Desktop\\Java\\Practice\\Collections Frame Works\\com.jsp1\\src\\jdbc.properties");
			Properties p=new Properties();
			p.load(fi);
			Class.forName(p.getProperty("jdbc.driver")).newInstance();
			con=DriverManager.getConnection(p.getProperty("jdbc.url"), p.getProperty("jdbc.username"), p.getProperty("jdbc.password"));
			System.out.println(con);
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return con;
	}
	public int register_logic(Data d)
	{
		int res=0;
		Connection con=Datalogics.mycon();
		try
		{
			PreparedStatement pst=con.prepareStatement("insert into ubank values(?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, d.getFirstname());
			pst.setString(2, d.getLatstname());
			pst.setString(3, d.getEmail());
			pst.setString(4, d.getPassword());
			pst.setString(5, d.getStdcode());
			pst.setString(6, d.getPhoneno());
			pst.setString(7, d.getGender());
			pst.setString(8, d.getLanguage());
			FileReader fr=new FileReader(d.getCv());
			pst.setCharacterStream(9, fr);
			
			FileInputStream fi=new FileInputStream(d.getImage());
			pst.setBinaryStream(10, fi);
			int i=pst.executeUpdate();
			res=i;
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return res;
	}
	
}
