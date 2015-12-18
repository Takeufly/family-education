<%@ page language="java" import="java.util.*,org.apache.struts2.ServletActionContext,javax.servlet.http.HttpServletRequest" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title> 腾飞家教网 </title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/login1.css">
 
 <script type="text/javascript" src="js/jQuery.js"></script>
 <!--<script type="text/javascript" src="js/bootstrap.js"></script>
 <script type="text/javascript" src="js/bootstrap.min.js"></script> -->
 <script type="text/javascript" src="js/login.js"></script>
 <script type="text/javascript" src="js/ajax.js"></script>
 <script type="text/javascript" src="js/cookies.js"></script>
 </head>

 <body>
  <div class="first"><!-- 上面一行 -->
  <span class="return">福大家教</span>
  <img src="images/bg6.jpg" alt="您的孩子，祖国未来" class="img-circle">
  </div>
  <div class="container">
	<div class="col-md-8 bgimg"><!-- 主体：图片 -->
			 <div class="second">
				<img src="images/bg5.jpg" alt="您的孩子，祖国未来" class="img-rounded">
			</div>
	</div>
	
	<div class="col-md-4 login_dialog"><!-- 主体：登录 -->
		<div class="login">
			
			<div class="third"><!-- 开头 -->
				<p class="text-center">家教账号登录</p>
			</div>
			<form action="LoginCheck" method="post" id="form"><!--用户名及密码输入-->
					<div class="form-group">
					    <div class="user1">
							<label for="username">Username</label>
							<input type="text" class="form-control"	id="username"  name ="username" placeholder="用户名">
						</div>
					</div>
						<div class="form-group">
							<div class="word2">
							<label for="password">Password</label>
							<input type="password" class="form-control" id="password"   name="password" placeholder="密码">
						</div>
					</div>
			
			<div class="checkbox"><!--  -->
				<label>
					<input type="checkbox" name="repwd">下次自动登录
				</label>
				<span class="fgp">忘记密码?</span>
			</div>

			<div class="button"><!-- 登录按钮 -->
				<button type="button" class="btn btn-default btn-block" name="button">登录</button>
			</div>
			<div class="register">
				<p class="text-right" id="reg_now"><a href="register.jsp">立即注册</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</p>
			</div>
		     </form>
		</div>
	</div>
  </div>
 </body>
</html>
