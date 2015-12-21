package com.fzu.service;

import java.io.File;

import com.fzu.token.FileUploadAction;
import com.fzu.token.SQLHelper;
import com.opensymphony.xwork2.ActionSupport;

public class tutorCheck extends ActionSupport{
	
	private File images;
	private String imagesFileName;
	private String Tlogname;
	private String password;
	private String Tname;
	private String sex;
	private String Tno;
	private String college;
	private String TID;
	private String email;
	
	
	public File getImages() {
		return images;
	}
	
	public void setImages(File images) {
		this.images = images;
	}
	
	public String getImagesFileName() {
		return imagesFileName;
	}

	public void setImagesFileName(String imagesFileName) {
		this.imagesFileName = imagesFileName;
	}

	public String getTlogname() {
		return Tlogname;
	}

	public void setTlogname(String tlogname) {
		Tlogname = tlogname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTname() {
		return Tname;
	}

	public void setTname(String tname) {
		Tname = tname;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getTno() {
		return Tno;
	}

	public void setTno(String tno) {
		Tno = tno;
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public String getTID() {
		return TID;
	}

	public void setTID(String tID) {
		TID = tID;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String execute() throws Exception{
		FileUploadAction file=new FileUploadAction();
		imagesFileName=file.upload(images, imagesFileName, Tlogname);
		
		String sql="insert into tutorCheck(Tlogname,Tpassword,Tname,Tsno,Tsex,TID,Tcollege,Timage,Email)values(?,?,?,?,?,?,?,?,?)";
		String []paras={Tlogname,password,Tname,Tno,sex,TID,college,imagesFileName,email};
		SQLHelper sqlhelper=new SQLHelper();
		Boolean flag=sqlhelper.updateExecute(sql, paras);
		
		return SUCCESS;
	}
}
