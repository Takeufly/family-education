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
	<link rel="stylesheet" type="text/css" href="css/pinfo.css">
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<script src="js/ajax.js" type="text/javascript"></script>
	<script src="js/pinfo.js" type="text/javascript"></script>

  </head>
  
  <body>
   <%
   		List<ParentInfo> plist=(List<ParentInfo>)request.getAttribute("pInfo");
		ParentInfo pinfo=plist.get(0);
		int index=pinfo.getImages().lastIndexOf('.');
		String fileName=pinfo.getImages().substring(0, index);
		String url="http://localhost:8080/tutor/Upload/"+fileName+"/"+pinfo.getImages();
    %>
    <div class="container content">
    	<input type="hidden" value="<%=pinfo.getPlogname() %>" name="logname" />
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
    					<li><span class="glyphicon glyphicon-triangle-right" id="stu"></span>学生信息</li>
    				</ul>
    			</div>
    		</div>
    		<div class="col-md-9">
    			
    			<div class="index" id="myindex">
    				<table border="1" class="table-bordered table-hover table-striped">
    					<tr>
    						<td>注册账户</td>
    						<td><%=pinfo.getPlogname() %></td>
    						<td>用户名</td>
    						<td><%=pinfo.getPname() %></td>
    						<td rowspan="3" colspan="2"><img src="<%=url %>" height="180px" /></td>
    					</tr>
    					<tr>
    						<td>性别</td>
    						<td><%=pinfo.getSex() %></td>
    						<td>联系方式</td>
    						<td><%=pinfo.getTel() %></td>
    					</tr>
    					<tr>
    						<td>QQ</td>
    						<td><%=pinfo.getQQ()%></td>
    						<td>微信</td>
    						<td><%=pinfo.getWechat()%></td>
    					</tr>
    					<tr>
    						<td>身份证</td>
    						<td colspan="2"><%=pinfo.getPID() %></td>
    						<td>邮箱</td>
    						<td><%=pinfo.getEmail() %></td>
    					</tr>
    					<tr>
    						<td>地址</td>
    						<td colspan="5"><%=pinfo.getPaddress() %></td>
    					</tr>
					</table>
    			</div>
    			
    			<div class="pinfo" id="mypinfo">
    				<table border="1" class="table-bordered table-hover table-striped">
    					<tr>
    						<td>注册账户</td>
    						<td><%=pinfo.getPlogname() %></td>
    						<td>用户名</td>
    						<td><%=pinfo.getPname() %></td>
    						<td rowspan="3" colspan="2"><img src="<%=url %>" height="180px" /></td>
    					</tr>
    					<tr>
    						<td>性别</td>
    						<td><%=pinfo.getSex() %></td>
    						<td>联系方式</td>
    						<td><input type="text" value="<%=pinfo.getTel() %>" name="tel"/></td>
    					</tr>
    					<tr>
    						<td>QQ</td>
    						<td><input type="text" name="QQ" value="<%=pinfo.getQQ()%>" /></td>
    						<td>微信</td>
    						<td><input type="text" name="wechat" value="<%=pinfo.getWechat()%>" /></td>
    					</tr>
    					<tr>
    						<td>身份证</td>
    						<td colspan="2"><%=pinfo.getPID() %></td>
    						<td>邮箱</td>
    						<td><input type="text" value="<%=pinfo.getEmail() %>" name="email" /></td>
    					</tr>
    					<tr>
    						<td>地址</td>
    						<td colspan="5"><input type="text" value="<%=pinfo.getPaddress() %>" name="address" id="address"/></td>
    					</tr>
    					<tr><td colspan="6" align="right"><input type="button" name="button" value="提交" /></td></tr>
					</table>
    			</div>
	
    			<div class="stuinfo" id="mystu">
    				<table border="1" class="table-bordered table-hover table-striped">
    					<tr>
    						<td>注册账户</td>
    						<td><%=pinfo.getPlogname() %></td>
    						<td>学生姓名</td>
    						<td><input type="text" name="sname"/></td>
    						<td>学生学号</td>
    						<td><input type="text" name="sid"/></td>
    					</tr>
    					<tr>
    						<td>年级</td>
    						<td><input type="text" name="sgrade"/></td>
    						<td>科目</td>
    						<td><input type="text" name="subject"/></td>
    						<td>性别</td>
    						<td><input type="text" name="sex"/></td>
    					</tr>
    					<tr>
    						<td>教师要求</td>
    						<td><input type="text" name="request"/></td>
    						<td>价格</td>
    						<td><input type="text" name="price"/></td>
    						<td>车补</td>
    						<td><input type="text" name="allowance"/></td>
    					</tr>
    					<tr><td colspan="6" align="right"><input type="button" value="提交" name="button1"/></td></tr>
					</table>
    			</div>
    		</div>
    	</div>
    </div>
  </body>
</html>
