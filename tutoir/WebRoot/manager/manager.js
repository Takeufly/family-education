window.onload=function(){
	
	var oMyForm=document.getElementById("myform");
	var oBtn=document.getElementsByName("button")[0];
	oBtn.onclick=function(){
		oMyForm.submit();
	}
}