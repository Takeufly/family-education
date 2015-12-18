package com.fzu.service;

import com.opensymphony.xwork2.ActionSupport;

public class registerCheck extends ActionSupport{
	
	private String type;
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if(type.equals("parent")){
			return "parent";
		}else{
			return "tutor";
		}
	}
}
