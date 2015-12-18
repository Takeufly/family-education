<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

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
  <link rel="stylesheet" type="text/css" href="css/register1.css">

 <script type="text/javascript" src="js/registerCheck.js"></script>
 </head>
 
 <body class="main">
 <form id="myform" action="registerCheck" method="get">
	<div class="start">
		<img src="images/bg6.jpg" alt="您的孩子，祖国未来" class="img-circle  img6">
	</div>
	<div class="container" >
		<div class="col-md-3"></div>

		<!-- 家长注册 -->
		<div class="col-md-3 parents">
			<div class="img1">
				<img src="images/bg1.png" id="parent1" alt="您的孩子，祖国未来" class="img-circle">
			</div>
			<div class="button1">
				<button type="button" id="parent2" class="btn btn-default btn-block">家长注册</button>
			</div>
		</div>
		
		<!-- 教师注册 -->
		<div class="col-md-3 teacher">
			<div class="img2">
				<img src="images/bg2.png" id="tutor1"  alt="您的孩子，祖国未来" class="img-circle">
			</div>
			<div class="button2">
				<button type="button" id="tutor2" class="btn btn-default btn-block">教师注册</button>
			</div>
		</div>
		
		<div class="col-md-3"></div>
		<input type="hidden" name="type" value="" />
	</form>
	</div>
 </body>
</html>
