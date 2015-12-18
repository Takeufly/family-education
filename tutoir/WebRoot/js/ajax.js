function ajax(url, type,paras,fnSucc, fnFaild)
{
	//1.鍒涘缓Ajax瀵硅薄
	var oAjax=null;
	
	if(window.XMLHttpRequest)
	{
		oAjax=new XMLHttpRequest();
	}
	else
	{
		oAjax=new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	//2.杩炴帴鏈嶅姟鍣�
	if(type=="GET"){
		oAjax.open('GET', url+"?"+paras, true);
		oAjax.send();
	}else{
		oAjax.open('POST',url,true);
		oAjax.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		oAjax.send(paras);
	}
	
	//4.鎺ユ敹鏈嶅姟鍣ㄧ殑杩斿洖
	oAjax.onreadystatechange=function ()
	{
		if(oAjax.readyState==4)	//瀹屾垚
		{
			if(oAjax.status==200)	//鎴愬姛
			{
				if(fnSucc){
					fnSucc(oAjax.responseText);
				}
			}
			else
			{
				if(fnFaild)
					fnFaild(oAjax.status);
			}
		}
	};
}