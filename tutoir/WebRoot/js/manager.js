window.onload=function(){
	var aUl=document.getElementsByTagName("ul");
	var aLi=document.getElementsByTagName("li");
	var aDiv=document.getElementsByTagName("div");
	var aAllSpan=document.getElementsByTagName("span");
	
	//左侧导航栏
	var oFaul=getByClass(aUl,"nav-ul")[0];
	var aLi=getByClass(aLi,"nav-li");
	var aChildul=[
	              getByClass(aUl,"ul-tutor")[0],
	              getByClass(aUl,"ul-parent")[0]
	              ];
	var aSpan=[
	           document.getElementById("index"),
	           document.getElementById("info")
	           ];
	//右侧状态栏
	var aPCheck=aChildul[0].getElementsByTagName("li");
	var aTCheck=aChildul[1].getElementsByTagName("li");
	

	aPCheck[0].type="tutor";
	aPCheck[0].check="false";
	aPCheck[0].index=0;
	
	aPCheck[1].type="tutor";
	aPCheck[1].check="true";
	aPCheck[1].index=1;
	

	aTCheck[0].type="parent";
	aTCheck[0].check="false";
	aTCheck[0].index=2;

	aTCheck[1].check="tutor";
	aTCheck[1].type="true";
	aTCheck[1].index=3;
	
	var aLeftPart=[
	               getByClass(aDiv,"tCheck")[0],
	               getByClass(aDiv,"tunCheck")[0],
	               getByClass(aDiv,"pCheck")[0],
	               getByClass(aDiv,"punCheck")[0],
	               getByClass(aDiv,"welcome")[0],
	               getByClass(aDiv,"showDetails")[0]
	               ];
	
	
	//查看按钮
	var  aParentCheck=getByClass(aAllSpan,"parentCheck");
	var  aParent=getByClass(aAllSpan,"parent");
	var  aTutorCheck=getByClass(aAllSpan,"tutorCheck");
	var  aTutor=getByClass(aAllSpan,"tutor");
	
	//左侧导航功能级动画
	for(var i=0;i<aLi.length;i++){
		aLi[i].index=i;
	}
	
	for(var i=0;i<aLi.length;i++){
		var iTarget;
		var active="glyphicon glyphicon-triangle-bottom";
		var unactive="glyphicon glyphicon-triangle-right";
		aLi[i].onclick=function(){
			if(aSpan[this.index].className==active){
				iTarget=0;
			}else{
				iTarget=90;
			}
			aSpan[this.index].className=aSpan[this.index].className==active?unactive:active;
			startMove(aChildul[this.index],{height: iTarget});
		}
	}
	
	//右侧切换功能
	for(var i=0;i<aTCheck.length;i++){
		aTCheck[i].onclick=function(ev){
			var oEvent=ev||event;
			for(var j=0;j<aLeftPart.length;j++){
				aLeftPart[j].style.display="none";
			}
			aLeftPart[this.index].style.display="block";
			oEvent.cancelBubble=true;
		}
	}
	
	for(var i=0;i<aPCheck.length;i++){
		aPCheck[i].onclick=function(ev){
			var oEvent=ev||event;
			for(var j=0;j<aLeftPart.length;j++){
				aLeftPart[j].style.display="none";
			}
			aLeftPart[this.index].style.display="block";
			oEvent.cancelBubble=true;
		}
	}
	
	//查看详细信息
	for(var i=0;i<aParentCheck.length;i++){
		aParentCheck[i].onclick=function(){
			getAjax(this,"parent");
		}
	}
	
	for(var i=0;i<aParent.length;i++){
		aParent[i].onclick=function(){
			getAjax(this,"parent");
		}
	}
	
	for(var i=0;i<aTutorCheck.length;i++){
		aTutorCheck[i].onclick=function(){
			getAjax(this,"tutor");
		}
	}
	
	for(var i=0;i<aTutor.length;i++){
		aTutor[i].onclick=function(){
			getAjax(this,"tutor");
		}
	}
	
	function getAjax(obj,type){
		var logname=obj.id;
		var table=obj.className;
		var name;
		
		for(var j=0;j<aLeftPart.length;j++){
			aLeftPart[j].style.display="none";
		}
		aLeftPart[aLeftPart.length-1].style.display="block";
		
		
		if(table=="parentCheck" || table=="parent"){
			name="Plogname";
		}else{
			name="Tlogname";
		}
		var sql="select * from "+table+" where "+name+"=?";
		var paras=""+logname+"";
		ajax("ManagerQuery","POST","sql="+sql+"&paras="+paras+"&type="+type+"&t="+new Date().getTime(),function(str){
			var json=str.split(":");
			if(type=="parent"){
				createParent(json);
			}else{
				createTutor(json);
			}
		});
	}	
	
	
	function createParent(json){
		var table=document.createElement("table");
		var aTr=[
		         document.createElement("tr"),
		         document.createElement("tr"),
		         document.createElement("tr"),
		         document.createElement("tr"),
		         document.createElement("tr"),
		         document.createElement("tr")		         
		         ];
		var aTd=[
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td")	
		         ];
		var i=0;
		table.className="table-bordered table-hover table-striped";
		table.border="1";
		var input=document.createElement("input");
		var input1=document.createElement("input");
		input.type="button";
		input.value="通过";
		input.name="paccess";
		
		input1.type="button";
		input1.value="回退";
		input1.name="pdelete";
		
		
		for(var i=0,k=0;i<json.length;i++,k++){
			if(json[i]!="image"){
				aTd[k].innerHTML=json[i];
			}else{
				i++;
				var img=document.createElement("img");
				var index=json[i].lastIndexOf(".");
				var dir=json[i].substr(0,index);
				img.src="http://localhost:8080/tutor/Upload/"+dir+"/"+json[i];
				img.style.height="30px";
				aTd[k].appendChild(img);
			}
		}

		aTd[19].appendChild(input);
		aTd[20].appendChild(input1);
		
		aTd[4].colSpan="2";
		aTd[4].rowSpan="3";
		aTd[14].colSpan="2";
		aTd[16].colSpan="2";
		aTd[18].colSpan="5";
		
		aTd[19].colSpan="3";
		aTd[20].colSpan="3";
		
		aTr[0].appendChild(aTd[0]);
		aTr[0].appendChild(aTd[1]);
		aTr[0].appendChild(aTd[2]);
		aTr[0].appendChild(aTd[3]);
		aTr[0].appendChild(aTd[4]);
		

		aTr[1].appendChild(aTd[5]);
		aTr[1].appendChild(aTd[6]);
		aTr[1].appendChild(aTd[7]);
		aTr[1].appendChild(aTd[8]);

		aTr[2].appendChild(aTd[9]);
		aTr[2].appendChild(aTd[10]);
		aTr[2].appendChild(aTd[11]);
		aTr[2].appendChild(aTd[12]);

		aTr[3].appendChild(aTd[13]);
		aTr[3].appendChild(aTd[14]);
		aTr[3].appendChild(aTd[15]);
		aTr[3].appendChild(aTd[16]);
		
		aTr[4].appendChild(aTd[17]);
		aTr[4].appendChild(aTd[18]);

		aTr[5].appendChild(aTd[19]);
		aTr[5].appendChild(aTd[20]);

		table.appendChild(aTr[0]);
		table.appendChild(aTr[1]);
		table.appendChild(aTr[2]);
		table.appendChild(aTr[3]);
		table.appendChild(aTr[4]);
		table.appendChild(aTr[5]);

		aLeftPart[aLeftPart.length-1].innerHTML="";
		aLeftPart[aLeftPart.length-1].appendChild(table);
		
		Check(json[1]);
	}
		
	function createTutor(json){
		var table=document.createElement("table");
		var aTr=[
		         document.createElement("tr"),
		         document.createElement("tr"),
		         document.createElement("tr"),
		         document.createElement("tr"),
		         document.createElement("tr"),
		         document.createElement("tr"),
		         document.createElement("tr"),
		         document.createElement("tr")		         
		         ];
		var aTd=[
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td"),
		         document.createElement("td")	
		         ];
		var i=0;
		table.className="table-bordered table-hover table-striped";
		table.border="1";
		var input=document.createElement("input");
		var input1=document.createElement("input");
		input.type="button";
		input.value="通过";
		input.name="taccess";
		
		input1.type="button";
		input1.value="回退";
		input1.name="tdelete";
		
		
		for(var i=0,k=0;i<json.length;i++,k++){
			if(json[i]!="image"){
				aTd[k].innerHTML=json[i];
			}else{
				i++;
				var img=document.createElement("img");
				var index=json[i].lastIndexOf(".");
				var dir=json[i].substr(0,index);
				img.src="http://localhost:8080/tutor/Upload/"+dir+"/"+json[i];
				img.style.height="30px";
				aTd[k].appendChild(img);
			}
		}

		aTd[29].appendChild(input);
		aTd[30].appendChild(input1);
		
		aTd[4].colSpan="2";
		aTd[4].rowSpan="3";
		aTd[14].colSpan="2";
		aTd[16].colSpan="2";
		aTd[20].colSpan="3";
	
		aTd[28].colSpan="5";
		
		aTd[29].colSpan="3";
		aTd[30].colSpan="3";
		
		aTr[0].appendChild(aTd[0]);
		aTr[0].appendChild(aTd[1]);
		aTr[0].appendChild(aTd[2]);
		aTr[0].appendChild(aTd[3]);
		aTr[0].appendChild(aTd[4]);
		

		aTr[1].appendChild(aTd[5]);
		aTr[1].appendChild(aTd[6]);
		aTr[1].appendChild(aTd[7]);
		aTr[1].appendChild(aTd[8]);

		aTr[2].appendChild(aTd[9]);
		aTr[2].appendChild(aTd[10]);
		aTr[2].appendChild(aTd[11]);
		aTr[2].appendChild(aTd[12]);

		aTr[3].appendChild(aTd[13]);
		aTr[3].appendChild(aTd[14]);
		aTr[3].appendChild(aTd[15]);
		aTr[3].appendChild(aTd[16]);
		
		aTr[4].appendChild(aTd[17]);
		aTr[4].appendChild(aTd[18]);	
		aTr[4].appendChild(aTd[19]);
		aTr[4].appendChild(aTd[20]);
		
		aTr[5].appendChild(aTd[21]);
		aTr[5].appendChild(aTd[22]);	
		aTr[5].appendChild(aTd[23]);
		aTr[5].appendChild(aTd[24]);	
		aTr[5].appendChild(aTd[25]);
		aTr[5].appendChild(aTd[26]);
		

		aTr[6].appendChild(aTd[27]);
		aTr[6].appendChild(aTd[28]);

		aTr[7].appendChild(aTd[29]);
		aTr[7].appendChild(aTd[30]);

		table.appendChild(aTr[0]);
		table.appendChild(aTr[1]);
		table.appendChild(aTr[2]);
		table.appendChild(aTr[3]);
		table.appendChild(aTr[4]);
		table.appendChild(aTr[5]);
		table.appendChild(aTr[6]);
		table.appendChild(aTr[7]);

		aLeftPart[aLeftPart.length-1].innerHTML="";
		aLeftPart[aLeftPart.length-1].appendChild(table);
		
		Check(json[1]);
	}
	
	
	function Check(logname){
		var tAccess=document.getElementsByName("taccess")[0];
		var tDelete=document.getElementsByName("tdelete")[0];
		var pAccess=document.getElementsByName("paccess")[0];
		var pDelete=document.getElementsByName("pdelete")[0];
		
		if(tAccess!=null && tAccess!=""){
			tAccess.onclick=function(){
				var sql="insert into tutor(Tlogname,Tpassword,Tname,Tsno,Tsex,Tcollege,Tmajor,Tel,Wechat,QQ,Email,Timage,TID,Grade,Subjects,Info)"+
						" select Tlogname,Tpassword,Tname,Tsno,Tsex,Tcollege,Tmajor,Tel,Wechat,QQ,Email,Timage,TID,Grade,Subjects,Info from tutorCheck where Tlogname=?";
				var paras=""+logname+"";
				var flag=insert(sql,paras);
				var sql2="delete from tutorCheck where Tlogname=?";
				insert(sql,sql2,paras);
				window.location.reload();
			}
		}
		
		if(pAccess!=null && pAccess!=""){
			pAccess.onclick=function(){
				var sql="insert into parent(Plogname,Ppassword,Pname,PID,Paddress,Tel,Wechat,QQ,Email,images,sex) "+
						" select Plogname,Ppassword,Pname,PID,Paddress,Tel,Wechat,QQ,Email,images,sex from parentCheck where Plogname=?";
				var paras=""+logname+"";
				var sql2="delete from parentCheck where Plogname=?";
				insert(sql,sql2,paras);
				window.location.reload();
			}
		}
		if(pDelete!=null && pDelete!=""){	
			pDelete.onclick=function(){
				var sql="delete from parentCheck where Plogname=?";
				var paras=""+logname+"";
				deleteSql(sql,paras);
				window.location.reload();
			}
		}
		if(tDelete!=null && tDelete!=""){
			tDelete.onclick=function(){
				var sql="delete from tutorCheck where Tlogname=?";
				var paras=""+logname+"";
				deleteSql(sql,paras);
				window.location.reload();
			}
		}
	}
	
	function insert(sql,sql2,paras){
		var flag="false";
		alert("sql="+sql+"&paras="+paras+"&t="+new Date().getTime());
		ajax("Update","POST","sql="+sql+"&paras="+paras+"&t="+new Date().getTime(),function(str){
			flag=str;
			deleteSql(sql2,paras);
			
		});
		//return flag;
	}
	
	function deleteSql(sql,paras){
		alert("sql="+sql+"&paras="+paras+"&t="+new Date().getTime());
		ajax("Update","POST","sql="+sql+"&paras="+paras+"&t="+new Date().getTime(),function(str){
		});
	}
	
	
	//通过class获取元素
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