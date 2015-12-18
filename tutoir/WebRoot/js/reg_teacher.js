window.onload=function(){
	var oLogname=document.getElementsByName("Tlogname")[0];
	var oPassword=document.getElementsByName("password")[0];
	var oCompassword=document.getElementsByName("com-password")[0];
	var oPname=document.getElementsByName("Tname")[0];
	var oCollege=document.getElementsByName("college")[0];
	var oTno=document.getElementsByName("Tno")[0];
	var oPID=document.getElementsByName("TID")[0];
	var oEmail=document.getElementsByName("email")[0];
	var oCheck=document.getElementsByName("checkbox")[0];
	var oImages=document.getElementsByName("images")[0];
	var oBtn=document.getElementById("button");
	var oForm=document.getElementById("myform");
	
	oLogname.onchange=function(){
		ajax("LognameCheck?type=tutor&logname="+this.value+"&t="+new Date().getTime(),function(str){
			if(str=="false"){
				alert("用户名已被注册");
				oLogname.value="";
			}
		});
	}
	
	oLogname.onkeyup=function(){
		var re=/[\u4e00-\u9fa5]/;
		if(re.test(this.value)){
			alert("注册账户不能使用中文");
			this.value="";
		}
	}
	
	oTno.onchange=function(){
		var re=/[\u4e00-\u9fa5]/;
		if(re.test(this.value)){
			alert("学号没有中文");
			this.value="";
		}
	}
	
	oPassword.onchange=function(){
		if(this.value.length<=6){
			alert("密码长度不小于6位");
			return false;
		}
		var value=parseInt(this.value);
		value+="";
		if(value==this.value){
			alert("密码不能为纯数字");
			return false;
		}
	}
	
	oCompassword.onchange=function(){
		if(this.value!=oPassword.value){
			alert("两次密码不一致");
		}
	}
	
	oEmail.onchange=function(){
		var re=/^\w+@[a-z0-9]+\.[a-z]{2,4}$/;
		
		if(re.test(this.value))
		{
		}else{
			alert("邮箱格式不正确");
		}
	}
	
	oPID.onkeydown=function(ev){
		var oEvent=ev||event;
		if((oEvent.keyCode<96 || oEvent.keyCode>105) && oEvent.keyCode!=8 && oEvent.keyCode!=88){
			return false;
		}
	}
	
	oPID.onchange=function(){
		if(this.value.length!=18){
			alert("身份证号码错误");
			return false;
		}
	}
	
	oBtn.onclick=function(){
		if(oLogname.value=="" || oLogname.value==null){
			alert("请填写注册账户");
			return false;
		}
		if(oPassword.value=="" || oPassword.value==null){
			alert("请填密码");
			return false;
		}
		if(oCompassword.value=="" || oCompassword.value==null){
			alert("两次密码不一致");
			return false;
		}
		if(oPname.value=="" || oPname.value==null){
			alert("请填写真实姓名");
			return false;
		}
		if(oTno.value=="" || oTno.value==null){
			alert("请填写学号");
			return false;
		}
		if(oCollege.value=="" || oCollege.value==null){
			alert("请填写院校名称");
			return false;
		}
		if(oPID.value=="" || oPID.value==null){
			alert("请填写身份证号");
			return false;
		}
		if(oImages.value=="" || oImages.value==null){
			alert("请选择照片");
			return false;
		}
		if(oEmail.value=="" || oEmail.value==null){
			alert("请填写邮箱");
			return false;
		}
		if(oCheck.checked==false){
			alert("阅读福大家教平台用户协议");
			return false;
		}
		oForm.submit();
	}
}