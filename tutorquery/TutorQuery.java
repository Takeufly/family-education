package com.fzu.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.fzu.token.SQLHelper;
import com.fzu.userInfo.TutorInfo;
import com.opensymphony.xwork2.ActionSupport;

public class TutorQuery extends ActionSupport{
	private int grade;
	private int subject;
	
	private String Grade;
	private String Subject;
	
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getSubject() {
		return subject;
	}
	public void setSubject(int subject) {
		this.subject = subject;
	}
	
	public String execute() throws Exception{
		if(grade==1){
			Grade="一年级";
		}else if(grade==2){
			Grade="二年级";
		}else if(grade==3){
			Grade="三年级";
		}else if(grade==4){
			Grade="四年级";
		}else if(grade==5){
			Grade="五年级";
		}else if(grade==6){
			Grade="六年级";
		}else if(grade==7){
			Grade="小升初";
		}else if(grade==8){
			Grade="初一";
		}else if(grade==9){
			Grade="初二";
		}else if(grade==10){
			Grade="初三";
		}else if(grade==11){
			Grade="中考";
		}else if(grade==12){
			Grade="高一";
		}else if(grade==13){
			Grade="高二";
		}else if(grade==14){
			Grade="高三";
		}else{
			Grade="高考";
		}
		
		
		if(subject==1){
			Subject="语文";
		}else if(subject==2){
			Subject="数学";
		}else if(subject==3){
			Subject="英语";
		}else if(subject==4){
			Subject="作文";
		}else if(subject==5){
			Subject="奥数";
		}else if(subject==6){
			Subject="陪读";
		}else if(subject==7){
			Subject="政治";
		}else if(subject==8){
			Subject="物理";
		}else if(subject==9){
			Subject="化学";
		}else if(subject==10){
			Subject="地理";
		}else if(subject==11){
			Subject="历史";
		}else if(subject==12){
			Subject="生物";
		}else if(subject==13){
			Subject="信息技术";
		}else if(subject==14){
			Subject="生命科学";
		}else if(subject==15){
			Subject="理综";
		}else if(subject==16){
			Subject="文综";
		}else if(subject==17){
			Subject="艺考文化";
		}else if(subject==18){
			Subject="音乐艺考";
		}else if(subject==19){
			Subject="美术艺考";
		}else if(subject==20){
			Subject="高考志愿";
		}else{
			Subject="心理辅导";
		}
		
		String sql="select * from tutor where grade=? and subjects=?";
		String []paras={Grade,Subject};
		SQLHelper sqlhelper=new SQLHelper();
		List<TutorInfo> list=sqlhelper.QueryTutor(sql, paras);
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("info",list);
		return SUCCESS;
	}
	
}
