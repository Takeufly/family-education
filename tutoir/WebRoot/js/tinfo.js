window.onload=function(){

	var aUl=document.getElementsByTagName("ul");
	var aDiv=document.getElementsByTagName("div");
	
	var oUl=getByClass(aUl,"nav-ul")[0];
	var aLi=oUl.getElementsByTagName("li");
	var oBtn1=document.getElementsByName("button")[0];
	
	var oTel=document.getElementsByName("tel")[0];
	var oQQ=document.getElementsByName("QQ")[0];
	var oWechat=document.getElementsByName("wechat")[0];
	var oEmail=document.getElementsByName("email")[0];
	var oCollege=document.getElementsByName("college")[0];
	var oGrade=document.getElementsByName("grade")[0];
	var oMajor=document.getElementsByName("major")[0];
	var oSubject=document.getElementsByName("subject")[0];
	var oInfo=document.getElementById("personalinfo");
	
	var oLogname=document.getElementsByName("logname")[0];

	
	
	var aSpan=[
	           document.getElementById("index"),
	           document.getElementById("info"),
	           ];
	
	var ainfo=[
	           document.getElementById("myindex"),
	           document.getElementById("myinfo"),
	           ];
	var i=0;
	for(i=0;i<aLi.length;i++){
		aLi[i].index=i;
	}
	
	for(i=0;i<aLi.length;i++){
		aLi[i].onclick=function(){
			for(var j=0;j<aSpan.length;j++){
				aSpan[j].className="glyphicon glyphicon-triangle-right";
				ainfo[j].style.display="none";
			}
			aSpan[this.index].className="glyphicon glyphicon-triangle-bottom";
			ainfo[this.index].style.display="block";
		}
	}
	
	oBtn1.onclick=function (){
		var paras=""+oTel.value+"-"+oQQ.value+"-"+oWechat.value+"-"+oEmail.value+"-"+oCollege.value+"-"+oMajor.value+"-"+oGrade.value+"-"+oSubject.value+"-"+oInfo.value+"-"+oLogname.value+"";
		var sql="update tutorCheck set Tel=?,QQ=?,Wechat=?,Email=?,Tcollege=? ,Tmajor=?,Grade=?,Subjects=?,Info=? where tlogName=?";
		
		ajax("Update",'POST',"sql="+sql+"&paras="+paras+"&t="+new Date().getTime(),function(str){
			window.location.reload();
		});
		
	}

	
	function getByClass(obj,classname){
		var arr=new Array();
		var i=0;
		for(i=0;i<obj.length;i++){
			if(obj[i].className == classname){
				arr.push(obj[i]);
			}
		}
		return arr;
	}
}