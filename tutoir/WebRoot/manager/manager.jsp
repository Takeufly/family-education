<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'manager.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/main.css" type="text/css" rel="stylesheet">
	<link href="css/index.css" type="text/css" rel="stylesheet">
	<script src="manager/manager.js" type="text/javascript"></script>
	<style>
body {
	background-color:#F5F5F5;
	background:url(images/login_bgg.jpg) repeat-x;
}
.wrapper {
    margin: 90px auto 190px auto;
    width: 884px;
	height:auto;
}
.loginBox {
	float:right;
	margin-right:100px;
    background-color: #FEFEFE;
    border: 1px solid #BfD6E1;
    border-radius: 5px;
    color: #444;
    font: 14px 'Microsoft YaHei','微软雅黑';
    margin: 0 auto;
    width: 388px;
	z-index:1;
}
.loginBox h1
{
	font: 20px 'Microsoft YaHei','微软雅黑';
	color:#900;
	text-align:center;
	padding-top:14px;
}
.loginBox .loginBoxCenter {
    border-bottom: 1px solid #DDE0E8;
    padding: 15px 24px 33px 24px;
}
.loginBox .loginBoxCenter p {
    margin-bottom: 10px
}
.loginBox .loginBoxButtons {
    background-color: #F0F4F6;
    border-top: 1px solid #FFF;
    border-bottom-left-radius: 5px;
    border-bottom-right-radius: 5px;
    line-height: 28px;
    overflow: hidden;
    padding: 20px 24px;
    vertical-align: center;
}
.loginBox .loginInput {
    border: 1px solid #D2D9dC;
    border-radius: 2px;
    color: #444;
    font: 12px 'Microsoft YaHei','微软雅黑';
    padding: 8px 14px;
    margin-bottom: 8px;
    width: 310px;
}
.loginBox .loginInput:FOCUS {
    border: 1px solid #B7D4EA;
    box-shadow: 0 0 8px #B7D4EA;
}
.loginBox .loginBtn {
    background-image: -moz-linear-gradient(top, #B5DEF2, #85CFEE);
    border: 1px solid #98CCE7;
    border-radius: 20px;
    box-shadow:inset rgba(255,255,255,0.6) 0 1px 1px, rgba(0,0,0,0.1) 0 1px 1px;
    color: #900;
    cursor: pointer;
    float: right;
    font: bold 13px Arial;
    padding: 5px 14px;
}
.loginBox .loginBtn:HOVER {
    background-image: -moz-linear-gradient(to top, #B5DEF2, #85CFEE);
}
.loginBox a.forgetLink{
    color: #ABABAB;
    cursor: pointer;
    float: right;
    font: 11px/20px Arial;
    text-decoration: none;
    vertical-align: middle;
}
.loginBox a.forgetLink:HOVER {
    text-decoration: none;
	color:#900;
}
.loginBox input#remember {
    vertical-align: middle;
}
.loginBox label[for="remember"] {
    font: 11px Arial;
}
.registerBtn
{
	margin-left:35%;}
.loginBoxButtons a.registerBtn
{
	color:#666;
    cursor: pointer;
    font: 11px/20px Arial;
    text-decoration: none;
    vertical-align: middle;
}
.loginBoxButtons a.registerBtn:hover,.loginBoxButtons a.registerBtn:active
{
	text-decoration: none;
	color:#900;
	font-size:12px;
	}
</style>

        
  </head>
  	
  <body>
	
	<div class="row">
   		<div class="first" style="background:white;margin-bottom:20px;"><!-- 上面一行 -->
			<img src="images/bg6.jpg" alt="福大家教" class="img-circle firImg">
			<img src="images/bg11.jpg" alt="您的孩子，我们的希望" class="img-rounded firImg2">
		</div>
    </div>
    	
	<div class="wrapper">
    <form action="managerCheck" method="post" id="myform">
    <div class="loginBox">
    	<h1>登录 | Login </h1>
        <div class="loginBoxCenter">
            <p style="color:#900"><label for="username">用户名：</label></p>
            <p><input type="text" id="text" name="username" class="loginInput" autofocus required autocomplete="off" placeholder="请输入您的账号" value="" /></p>
            <p style="color:#900"><label for="password">密码：</label></p>
            <p><input type="password" id="password" name="password" class="loginInput" required placeholder="请输入密码" value="" /></p>
        </div>
        <div class="loginBoxButtons">
            <input id="remember" type="checkbox" name="remember" />
            <label style="color:#900" for="remember">记住登录状态</label>
           <input type="button"class="loginBtn" value="登录" name="button"/> 
           
        </div>
    </div>
    </form>
</div>
</div>
  </body>
</html>
