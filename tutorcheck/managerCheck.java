package com.fzu.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.fzu.token.SQLHelper;
import com.fzu.userInfo.ParentInfo;
import com.fzu.userInfo.TutorInfo;
import com.opensymphony.xwork2.ActionSupport;

public class managerCheck extends ActionSupport{

	private String username;
	private String password;
	
	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String execute() throws Exception{

		SQLHelper sqlhelper=new SQLHelper();
		Boolean flag=false;
		String sql="select * from administrator where Alogname=? and Apassword=?";
		String []paras={username,password};
		flag=sqlhelper.LoginQuery(sql, paras);
		if(flag==true){
			String []params={};
			HttpServletRequest request=ServletActionContext.getRequest();
			
			sql="select * from parentCheck";
			List<ParentInfo> punCheck=sqlhelper.QueryParent(sql, params);
			request.setAttribute("puncheck", punCheck);
			
			sql="select * from parent";
			List<ParentInfo> pCheck=sqlhelper.QueryParent(sql, params);
			request.setAttribute("pcheck", pCheck);
			
			sql="select * from tutorCheck";
			List<TutorInfo> tunCheck=sqlhelper.QueryTutor(sql, params);
			request.setAttribute("tuncheck", tunCheck);
			
			sql="select * from tutor";
			List<TutorInfo> tCheck=sqlhelper.QueryTutor(sql, params);
			request.setAttribute("tcheck", tCheck);
			
			
			return SUCCESS;
		}else{
			return "fail";
		}
	}
}
