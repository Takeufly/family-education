<%@ page language="java" import="java.util.*,com.fzu.userInfo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'info.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/tinfo.css">
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<script src="js/ajax.js" type="text/javascript"></script>
	<script src="js/tinfo.js" type="text/javascript"></script>

  </head>
  
  <body>
   <%
   		List<TutorInfo> tlist=(List<TutorInfo>)request.getAttribute("tInfo");
		TutorInfo tinfo=tlist.get(0);
		int index=tinfo.getTimage().lastIndexOf('.');
		String fileName=tinfo.getTimage().substring(0, index);
		String url="http://localhost:8080/tutor/Upload/"+fileName+"/"+tinfo.getTimage();
    %>
    <div class="container content">
    	<input type="hidden" value="<%=tinfo.getTlogname() %>" name="logname" />
    	<div class="row">
    		<div class="first" style="background:white;margin-bottom:20px;"><!-- 上面一行 -->
				<img src="images/bg6.jpg" alt="福大家教" class="img-circle firImg">
				

				<img src="images/bg11.jpg" alt="您的孩子，我们的希望" class="img-rounded firImg2">
			</div>
    	</div>
    
    	<div class="row">
    		<div class="col-md-3">
    			<div class="nav">
    				<ul class="nav-ul">
    					<li><span class="glyphicon glyphicon-triangle-bottom" id="index"></span>首　　页</li>
    					<li><span class="glyphicon glyphicon-triangle-right" id="info"></span>完善资料</li>
    				</ul>
    			</div>
    		</div>
    		<div class="col-md-9">
    			
    			<div class="index" id="myindex">
    				<table border="1" class="table-bordered table-hover table-striped">
    					<tr>
    						<td>注册账户</td>
    						<td><%=tinfo.getTlogname() %></td>
    						<td>用户名</td>
    						<td><%=tinfo.getTname() %></td>
    						<td rowspan="3" colspan="2"><img src="<%=url %>" height="180px" /></td>
    					</tr>
    					<tr>
    						<td>性别</td>
    						<td><%=tinfo.getTsex() %></td>
    						<td>联系方式</td>
    						<td><%=tinfo.getTel() %></td>
    					</tr>
    					<tr>
    						<td>QQ</td>
    						<td><%=tinfo.getQQ()%></td>
    						<td>微信</td>
    						<td><%=tinfo.getWechat()%></td>
    					</tr>
    					<tr>
    						<td>身份证</td>
    						<td colspan="2"><%=tinfo.getTID() %></td>
    						<td>邮箱</td>
    						<td colspan="2"><%=tinfo.getEmail() %></td>
    					</tr>
    					<tr>
    						<td>学号</td>
    						<td><%=tinfo.getTsno() %></td>
    						<td>学院</td>
    						<td colspan="3"><%=tinfo.getTcollege() %></td>
    					</tr>
    					<tr>
    						<td>年级</td>
    						<td><%=tinfo.getGrade() %></td>
    						<td>科目</td>
    						<td><%=tinfo.getSubject() %></td>
    						<td>专业</td>
    						<td><%=tinfo.getTmajor() %></td>
    					</tr>
    					<tr>
    						<td>简介</td>
    						<td colspan="5"><%=tinfo.getInfo() %></td>
    					</tr>
					</table>
    			</div> 			
    			
    			<!--  -->
    			
    			<div class="info" id="myinfo">
    				<table border="1" class="table-bordered table-hover table-striped">
    					<tr>
    						<td>注册账户</td>
    						<td><%=tinfo.getTlogname() %></td>
    						<td>用户名</td>
    						<td><%=tinfo.getTname() %></td>
    						<td rowspan="3" colspan="2"><img src="<%=url %>" height="180px" /></td>
    					</tr>
    					<tr>
    						<td>性别</td>
    						<td><%=tinfo.getTsex() %></td>
    						<td>联系方式</td>
    						<td><input type="text" value="<%=tinfo.getTel() %>" name="tel" /></td>
    					</tr>
    					<tr>
    						<td>QQ</td>
    						<td><input type="text" value="<%=tinfo.getQQ()%>" name="QQ" /></td>
    						<td>微信</td>
    						<td><input type="text" value="<%=tinfo.getWechat()%>" name="wechat" /></td>
    					</tr>
    					<tr>
    						<td>身份证</td>
    						<td colspan="2"><%=tinfo.getTID() %></td>
    						<td>邮箱</td>
    						<td colspan="2"><input type="text" value="<%=tinfo.getEmail() %>" name="email" id="myemail"/></td>
    					</tr>
    					<tr>
    						<td>学号</td>
    						<td><%=tinfo.getTsno() %></td>
    						<td>学院</td>
    						<td colspan="3"><input type="text" value="<%=tinfo.getTcollege() %>" id="pcollege" name="college" /></td>    					</tr>
    					<tr>
    						<td>年级</td>
    						<td><input type="text" value="<%=tinfo.getGrade() %>" name="grade" /></td>
    						<td>科目</td>
    						<td><input type="text" value="<%=tinfo.getSubject() %>" name="subject" /></td>
    						<td>专业</td>
    						<td><input type="text" value="<%=tinfo.getTmajor() %>" name="major" /> </td>
    					</tr>
    					<tr>
    						<td>简介</td>
    						<td colspan="5" align="left"><textarea id="personalinfo"><%=tinfo.getInfo() %></textarea></td>
    					</tr>
    					<tr>
    						<td colspan="6">
    							<input type="button" value="提交" name="button" />
    						</td>
    					</tr>
					</table>
    			</div> 			
    			
    			<!--  -->
    			
    		</div>
    	</div>
    </div>
  </body>
</html>
