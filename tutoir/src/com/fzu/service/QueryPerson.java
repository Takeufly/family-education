package com.fzu.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.fzu.token.SQLHelper;
import com.fzu.userInfo.TutorInfo;
import com.opensymphony.xwork2.ActionSupport;

public class QueryPerson extends ActionSupport{
	private String  logname;

	public String getLogname() {
		return logname;
	}

	public void setLogname(String logname) {
		this.logname = logname;
	}
	
	
	public String execute() throws Exception{
		String sql="select * from tutor where Tlogname=?";
		String []paras={logname};
		SQLHelper sqlhelper=new SQLHelper();
		List<TutorInfo> list=sqlhelper.QueryTutor(sql, paras);
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("info",list);
		return SUCCESS;
	}
	
}
