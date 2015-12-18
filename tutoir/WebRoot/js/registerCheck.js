window.onload=function(){
	var oForm=document.getElementById("myform");
	var oParentImg=document.getElementById("parent1");
	var oParentButton=document.getElementById("parent2");
	var oTutorImg=document.getElementById("tutor1");
	var oTutorButton=document.getElementById("tutor2");
	var oType=document.getElementsByName("type")[0];
	
	oParentImg.onclick=oParentButton.onclick=function(){
		oType.value="parent";
		oForm.submit();
	}
	oTutorImg.onclick=oTutorButton.onclick=function(){
		oType.value="tutor";
		oForm.submit();
	}
}