window.onload=function(){

	var aUl=document.getElementsByTagName("ul");
	var aDiv=document.getElementsByTagName("div");
	
	var oUl=getByClass(aUl,"nav-ul")[0];
	var aLi=oUl.getElementsByTagName("li");
	var oBtn1=document.getElementsByName("button")[0];
	var oBtn2=document.getElementsByName("button1")[0];
	
	var oTel=document.getElementsByName("tel")[0];
	var oQQ=document.getElementsByName("QQ")[0];
	var oWechat=document.getElementsByName("wechat")[0];
	var oEmail=document.getElementsByName("email")[0];
	var oAddress=document.getElementsByName("address")[0];
	
	var oLogname=document.getElementsByName("logname")[0];
	
	

	var oSname=document.getElementsByName("sname")[0];
	var oSid=document.getElementsByName("sid")[0];
	var oSgrade=document.getElementsByName("sgrade")[0];
	var oSsubject=document.getElementsByName("subject")[0];
	var oSex=document.getElementsByName("sex")[0];
	var oSrequest=document.getElementsByName("request")[0];
	var oSprice=document.getElementsByName("price")[0];
	var oSallowance=document.getElementsByName("allowance")[0];
	
	
	var aSpan=[
	           document.getElementById("index"),
	           document.getElementById("info"),
	           document.getElementById("stu")
	           ];
	
	var ainfo=[
	           document.getElementById("myindex"),
	           document.getElementById("mypinfo"),
	           document.getElementById("mystu")
	           ];
	var i=0;
	for(i=0;i<aLi.length;i++){
		aLi[i].index=i;
	}
	
	for(i=0;i<aLi.length;i++){
		aLi[i].onclick=function(){
			var flag="false";
			if(this.index==2){
				var sql="select * from parent where Plogname=?";
				var paras=""+oLogname.value+"";
				ajax("Query","POST","sql="+sql+"&paras="+paras+"&t="+new Date().getTime(),function(str){
					if(str=="true"){
						alert("您尚未通过审核，无法添加学生信息");
						for(var j=0;j<aSpan.length;j++){
							aSpan[j].className="glyphicon glyphicon-triangle-right";
							ainfo[j].style.display="none";
						}
						aSpan[0].className="glyphicon glyphicon-triangle-bottom";
						ainfo[0].style.display="block";
					}
				});
			}
			
			if(flag=="true"){
				return false;
			}
			for(var j=0;j<aSpan.length;j++){
				aSpan[j].className="glyphicon glyphicon-triangle-right";
				ainfo[j].style.display="none";
			}
			aSpan[this.index].className="glyphicon glyphicon-triangle-bottom";
			ainfo[this.index].style.display="block";
		}
	}
	
	oBtn1.onclick=function (){
		var paras=""+oTel.value+"-"+oQQ.value+"-"+oWechat.value+"-"+oEmail.value+"-"+oAddress.value+"-"+oLogname.value+"";
		var sql="update parentCheck set Tel=?,QQ=?,Wechat=?,Email=?,Paddress=? where PlogName=?";
		
		ajax("Update",'POST',"sql="+sql+"&paras="+paras+"&t="+new Date().getTime(),function(str){
			window.location.reload();
		});
		
	}
	
	oBtn2.onclick=function(){
		var paras=""+oLogname.value+"-"+oSname.value+"-"+oSid.value+"-"+oSgrade.value+"-"+oSsubject.value+"-"+oSex.value+"-"+oSrequest.value+"-"+oSprice.value+"-"+oSallowance.value+"";
		var sql="insert into ptinfo(Plogname,Sname,SID,Sgrade,Ssubjects,Ssex,Request,Price,Allowance)values(?,?,?,?,?,?,?,?,?)";

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