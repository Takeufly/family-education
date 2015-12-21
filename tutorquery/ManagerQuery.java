package com.fzu.service;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.fzu.token.SQLHelper;
import com.fzu.userInfo.ParentInfo;
import com.fzu.userInfo.TutorInfo;
import com.opensymphony.xwork2.ActionSupport;

public class ManagerQuery extends ActionSupport{

		private String sql;
		private String paras;
		private String type;
		
		
		
		public String getSql() {
			return sql;
		}

		public void setSql(String sql) {
			this.sql = sql;
		}

		public String getParas() {
			return paras;
		}

		public void setParas(String paras) {
			this.paras = paras;
		}
		
		public String getType() {
			return type;
		}

		public void setType(String type) {
			this.type = type;
		}


		public String execute() throws Exception{
			
			String []params=paras.split("-");
			SQLHelper sqlhelper=new SQLHelper();
			String result="";
			if(type.equals("parent")){
				List<ParentInfo> plist=sqlhelper.QueryParent(sql, params);
				ParentInfo pinfo=plist.get(0);
				result+=("注册账户:"+pinfo.getPlogname()+":");
				result+=("用户名:"+pinfo.getPname()+":");
				result+=("image:"+pinfo.getImages()+":");
				result+=("性别:"+pinfo.getSex()+":");
				result+=("联系方式:"+pinfo.getTel()+":");
				result+=("QQ:"+pinfo.getQQ()+":");
				result+=("微信:"+pinfo.getWechat()+":");
				result+=("身份证:"+pinfo.getPID()+":");
				result+=("邮箱:"+pinfo.getEmail()+":");
				result+=("地址:"+pinfo.getPaddress()+"");
			}else{
				List<TutorInfo> tlist=sqlhelper.QueryTutor(sql, params);
				TutorInfo tinfo=tlist.get(0);
				result+=("注册账户:"+tinfo.getTlogname()+":");
				result+=("用户名:"+tinfo.getTname()+":");
				result+=("image:"+tinfo.getTimage()+":");
				result+=("性别:"+tinfo.getTsex()+":");
				result+=("联系方式:"+tinfo.getTel()+":");
				result+=("QQ:"+tinfo.getQQ()+":");
				result+=("微信:"+tinfo.getWechat()+":");
				result+=("身份证:"+tinfo.getTID()+":");
				result+=("邮箱:"+tinfo.getEmail()+":");
				result+=("学号:"+tinfo.getTsno()+":");
				result+=("学院:"+tinfo.getTcollege()+":");
				result+=("年级:"+tinfo.getGrade()+":");
				result+=("科目:"+tinfo.getSubject()+":");
				result+=("专业:"+tinfo.getTmajor()+":");
				result+=("简介:"+tinfo.getInfo()+"");
			}
			HttpServletResponse reponse=ServletActionContext.getResponse();
			reponse.setCharacterEncoding("utf-8");
			PrintWriter out=reponse.getWriter();
			out.print(result);
			return null;
		}
}
