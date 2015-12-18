window.onload=function(){
	var aType=new Array();
	aType[0]=document.getElementById("primary");
	aType[1]=document.getElementById("junior");
	aType[2]=document.getElementById("senior");
	var timer;
	
	var aTypes=document.getElementsByTagName("div");
	aTypes=getByClass(aTypes,"col-md-5 middle");
	
	for(var k=0;k<aTypes.length;k++){
		aType[k].index=k;
		aTypes[k].index=k;
	}

	for(var i=0;i<aType.length;i++){
		aType[i].onmouseover=function(){
			clearTimeout(timer);
			for(var j=0;j<aType.length;j++){
				aTypes[j].style.display="none";
			}
			aTypes[this.index].style.display="block";
		}
		
		aType[i].onmouseout=function(){
			var index=this.index;
			timer=setTimeout(function(){
				aTypes[index].style.display="none";
			},100);
		}
	}
	
	for(var i=0;i<aTypes.length;i++){
		aTypes[i].onmouseover=function(){
			clearTimeout(timer);
		}
		aTypes[i].onmouseout=function(){
			var index=this.index;
			timer=setTimeout(function(){
				aTypes[index].style.display="none";
			},100);
		}
	}

	function getByClass(obj,classname){
		var arr=new Array();
		for(var i=0;i<obj.length;i++){
			if(obj[i].className==classname){
				arr.push(obj[i]);
			}
		}
		return arr;
	}
		
}