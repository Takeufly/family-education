window.onload=function(){
	var aType=new Array();
	aType[0]=document.getElementById("primary");
	aType[1]=document.getElementById("junior");
	aType[2]=document.getElementById("senior");

	var aTypes=document.getElementsByTagName("div");
	aTypes=getByClass(aTypes,"col-md-5 middle");

	for(var k=0;k<aTypes.length;k++){
		aType[k].index=k;
	}

	for(var i=0;i<aType.length;i++){
		aType[i].onmouseover=function(){
			for(var j=0;j<aType.length;j++){
				aTypes[j].style.display="none";
			}
			aTypes[this.index].style.display="block";
		}
		aType[i].onmouseout=function(){
			aTypes[this.index].style.display="none";
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