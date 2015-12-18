package com.fzu.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.fzu.token.SQLHelper;
import com.opensymphony.xwork2.ActionSupport;

public class LognameCheck extends ActionSupport{

	private SQLHelper sqlhelper=new SQLHelper();
	private Boolean flag;
	private String type; 
	private String logname;
	
	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getLogname() {
		return logname;
	}


	public void setLogname(String logname) {
		this.logname = logname;
	}


	public String execute() throws Exception{

		String sql;
		String[] param={logname};
		sql="select * from parent where Plogname=?";
		flag=sqlhelper.ExecuteQuery(sql, param);
		if(flag==true){
			sql="select * from tutor where Tlogname=?";
			flag=sqlhelper.ExecuteQuery(sql, param);
		}
		HttpServletResponse response = ServletActionContext.getResponse();
		PrintWriter out=response.getWriter();
		out.print(flag.toString());
		return null;
	}
}
