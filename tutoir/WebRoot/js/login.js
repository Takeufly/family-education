window.onload=function(){
	var oUname=document.getElementsByName("username")[0];
	var oPswd=document.getElementsByName("password")[0];
	var oRepwd=document.getElementsByName("repwd")[0];
	var oSubmit=document.getElementsByName("button")[0];
	var oForm=document.getElementById("form");

	
	if(getCookie("repwsd")==null || getCookie("repwsd")==""){
		oRepwd.checked=false;
	}

	if(oRepwd.checked==true){
		oUname.value=getCookie("uname");
		oPswd.value=getCookie("upswd");
	}else{
		removeCookie("upswd");
		removeCookie("repwsd");
	}
	
	document.onkeydown=function(ev){
		var oEvent=event||ev;
		if(oEvent.keyCode==13){
			FormSubmit();
		}
	}
	
	oSubmit.onclick=FormSubmit;
	
	function FormSubmit(){
		if(oUname.value=="" || oUname.value==null){
			alert("请填写用户名");
			return false;
		}
		if(oPswd.value=="" || oPswd.value==null){
			alert("请填写密码");
			return false;
		}
		if(oRepwd.checked==true){
			setCookie("uname",oUname.value,30);
			setCookie("upswd",oPswd.value,7);
			setCookie("repwsd",true,7);
		}else{
			removeCookie("upswd");
			removeCookie("repwsd");
		}
		oForm.submit();
	}
	
}