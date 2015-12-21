package com.fzu.service;

import java.io.File;

import com.fzu.token.FileUploadAction;
import com.fzu.token.SQLHelper;
import com.opensymphony.xwork2.ActionSupport;

public class parentCheck extends ActionSupport{

	private File images;
	private String imagesFileName;
	private String Plogname;
	private String password;
	private String Pname;
	private String sex;
	private String address;
	private String TEL;
	private String PID;
	private String email;
	

	public File getImages() {
		return images;
	}

	public void setImages(File images) {
		this.images = images;
	}

	public String getPlogname() {
		return Plogname;
	}

	public void setPlogname(String plogname) {
		Plogname = plogname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPname() {
		return Pname;
	}

	public void setPname(String pname) {
		Pname = pname;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTEL() {
		return TEL;
	}

	public void setTEL(String tEL) {
		TEL = tEL;
	}

	public String getPID() {
		return PID;
	}

	public void setPID(String pID) {
		PID = pID;
	}

	public String getImagesFileName() {
		return imagesFileName;
	}

	public void setImagesFileName(String imagesFileName) {
		this.imagesFileName = imagesFileName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String execute() throws Exception{		
		FileUploadAction file=new FileUploadAction();
		imagesFileName=file.upload(images, imagesFileName, Plogname);
		
		String sql="insert into parentCheck(Plogname,Ppassword,Pname,Paddress,sex,Tel,PID,images,Email)values(?,?,?,?,?,?,?,?,?)";
		String []paras={Plogname,password,Pname,address,sex,TEL,PID,imagesFileName,email};
		SQLHelper sqlhelper=new SQLHelper();
		Boolean flag=sqlhelper.updateExecute(sql, paras);
		return SUCCESS;
	}
}
