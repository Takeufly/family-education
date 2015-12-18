package com.fzu.token;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.fzu.userInfo.ParentInfo;
import com.fzu.userInfo.TutorInfo;

public class SQLHelper {
	private static Connection con = null;
	private static PreparedStatement ps = null;
	private static ResultSet rs = null;
	private static String driver = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://127.0.0.1:3306/TutorsNetWork?useUnicode=true&characterEncoding=UTF-8";
	private static String user = "root";
	private static String password = "evilkxh";
	
	
	public static Connection getCon() {
		return con;
	}

	public static PreparedStatement getPs() {
		return ps;
	}

	public static ResultSet getRs() {
		return rs;
	}
	
	public void close(){
		try {
			if(rs!=null) rs.close();
			if(con!=null) con.close();
			if(ps!=null) ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Boolean ExecuteQuery(String sql,String []paras){
		Boolean flag=true;
		String logname;
		try{
			rs=QueryExecute(sql,paras);
			if(rs.next()){
				logname=(String)rs.getString(1);
				if(logname.equals(paras[0])){
					flag=false;
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			this.close();
		}
		return flag;
	}
	
	public Boolean LoginQuery(String sql,String []paras){
		Boolean flag=false;
		try{
			rs=QueryExecute(sql,paras);
			if(rs.next()){
				flag=true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			this.close();
		}
		return flag;
	}
	
	public ResultSet QueryExecute(String sql,String []paras){
		try{
			Class.forName(driver);
			con=DriverManager.getConnection(url, user, password);
			ps=con.prepareStatement(sql);
			for(int i=0;i<paras.length;i++){
				ps.setString(i+1, paras[i]);
			}
			rs=ps.executeQuery();
			//System.out.println(rs.getString(1));
		}catch(Exception e){
			e.printStackTrace();
		}finally{
		}
		return rs;
	}
	
	public List<ParentInfo> QueryParent(String sql,String []paras){
		List<ParentInfo> plist=new ArrayList();
		try{
			rs=QueryExecute(sql,paras);
			while(rs.next()){
				ParentInfo pinfo=new ParentInfo();
				pinfo.setPlogname(rs.getString(1));
				pinfo.setPpassword(rs.getString(2));
				pinfo.setPname(rs.getString(3));
				pinfo.setPID(rs.getString(4));
				pinfo.setPaddress(rs.getString(5));
				pinfo.setTel(rs.getString(6));
				pinfo.setWechat(rs.getString(7));
				pinfo.setQQ(rs.getString(8));
				pinfo.setEmail(rs.getString(9));
				pinfo.setImages(rs.getString(10));
				pinfo.setSex(rs.getString(11));
				plist.add(pinfo);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			this.close();
		}
		return plist;
	}
	
	
	public List<TutorInfo> QueryTutor(String sql,String []paras){
		List<TutorInfo> tlist=new ArrayList();
		try{
			rs=QueryExecute(sql,paras);
			while(rs.next()){
				TutorInfo tinfo=new TutorInfo();
				tinfo.setTlogname(rs.getString(1));
				tinfo.setTpassword(rs.getString(2));
				tinfo.setTname(rs.getString(3));
				tinfo.setTsno(rs.getString(4));
				tinfo.setTsex(rs.getString(5));
				tinfo.setTcollege(rs.getString(6));
				tinfo.setTmajor(rs.getString(7));
				tinfo.setTel(rs.getString(8));
				tinfo.setWechat(rs.getString(9));
				tinfo.setQQ(rs.getString(10));
				tinfo.setEmail(rs.getString(11));
				tinfo.setTimage(rs.getString(12));
				tinfo.setTID(rs.getString(13));
				tinfo.setGrade(rs.getString(14));
				tinfo.setSubject(rs.getString(15));
				tinfo.setInfo(rs.getString(16));
				tlist.add(tinfo);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			this.close();
		}
		return tlist;
	}
	
	
	public Boolean updateExecute(String sql,String []paras){
		Boolean flag=true;
		try{
			Class.forName(driver);
			con=DriverManager.getConnection(url, user, password);
			ps=con.prepareStatement(sql);
			for(int i=0;i<paras.length;i++){
				ps.setString(i+1, paras[i]);
			}
			if(ps.executeUpdate()!=1){
				flag=false;
			}
		}catch(Exception e){
			flag=false;
			e.printStackTrace();
		}finally{
			this.close();
		}
		return flag;
	}
	
}
