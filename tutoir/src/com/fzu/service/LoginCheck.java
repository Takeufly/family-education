package com.fzu.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.fzu.token.SQLHelper;
import com.fzu.userInfo.ParentInfo;
import com.fzu.userInfo.TutorInfo;
import com.opensymphony.xwork2.ActionSupport;

public class LoginCheck extends ActionSupport {
	
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

	public String execute() throws Exception {
		// TODO Auto-generated method stub
		List<ParentInfo> plist=new ArrayList();
		List<TutorInfo> tlist=new ArrayList();
		SQLHelper sqlhelper=new SQLHelper();
		HttpServletResponse response = ServletActionContext.getResponse();
		HttpServletRequest request = ServletActionContext.getRequest();
		
		
		String []paras={username,password};
		String sql="select * from parentCheck where Plogname=? and Ppassword=?";
		
		plist=sqlhelper.QueryParent(sql, paras);
		if(plist.size()!=0){
			request.setAttribute("pInfo", plist);
			return "pinfo";
		}
		
		sql="select * from parent where Plogname=? and Ppassword=?";
		plist=sqlhelper.QueryParent(sql, paras);
		if(plist.size()!=0){
			request.setAttribute("pInfo", plist);
			return SUCCESS;
		}
		

		sql="select * from tutorCheck where Tlogname=? and Tpassword=?";
		tlist=sqlhelper.QueryTutor(sql, paras);
		if(tlist.size()!=0){
			request.setAttribute("tInfo", tlist);
			return "tinfo";
		}
		
		sql="select * from tutor where Tlogname=? and Tpassword=?";
		tlist=sqlhelper.QueryTutor(sql, paras);
		if(tlist.size()!=0){
			request.setAttribute("tInfo", tlist);
			return SUCCESS;
		}
		
		request.setAttribute("log", false);
		return "login";
	}
}

