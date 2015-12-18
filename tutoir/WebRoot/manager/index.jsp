<%@ page language="java" import="java.util.*,com.fzu.service.*,com.fzu.userInfo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<link rel="stylesheet" type="text/css" href="css/manager.css">
	
	<script src="js/move.js" type="text/javascript"></script>
	<script src="js/ajax.js" type="text/javascript"></script>
	<script src="js/manager.js" type="text/javascript"></script>


  </head>
  
  <body>
  
  <%
  		List<ParentInfo> punCheck=(List<ParentInfo>)request.getAttribute("puncheck");
  		List<ParentInfo> pCheck=(List<ParentInfo>)request.getAttribute("pcheck");
  		
  		List<TutorInfo> tunCheck=(List<TutorInfo>)request.getAttribute("tuncheck");
  		List<TutorInfo> tCheck=(List<TutorInfo>)request.getAttribute("tcheck");
   		
   %>
    <div class="container content">
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
   						<li class="nav-li"><span class="glyphicon glyphicon-triangle-right" id="index"></span>教师信息
   							<ul class="ul-tutor">
   								<li>已审核</li>
   								<li>未审核</li>
   							</ul>
   						</li>
    					<li class="nav-li"><span class="glyphicon glyphicon-triangle-right" id="info"></span>学生信息
    						<ul class="ul-parent">
   								<li>已审核</li>
   								<li>未审核</li>
   							</ul>
    					</li>
   					</ul>
   				</div>
   			</div>
   			
   			<div class="col-md-9">
   				<div class="welcome">
   					欢迎回来!!!!!
   				</div>
   				
   				<!--  -->
   				
   				<div class="punCheck">
   					<table border="1" class="table-bordered table-hover table-striped">
   						<thead>
   							<tr>
   								<td>注册账户</td>
   								<td>姓名</td>
   								<td>性别</td>
   								<td>身份证</td>
   								<td></td>
   							</tr>
   						</thead>
   						<tbody>
   						<%
   							for(ParentInfo puninfo: punCheck){
   						%>
   							<tr>
   								<td><%=puninfo.getPlogname() %></td>
   								<td><%=puninfo.getPname() %></td>
   								<td><%=puninfo.getSex() %></td>
   								<td><%=puninfo.getPID() %></td>
   								<td>
   									<span class="parentCheck" id="<%=puninfo.getPlogname()%>">
   										查看
   									</span>
   								</td>
   							</tr>
   						<%
   							}
   						 %>
   						</tbody>
   					</table>
   				</div>
   				
   				<!--  -->
   				   				
   				<div class="pCheck">
   					<table border="1" class="table-bordered table-hover table-striped">
   						<thead>
   							<tr>
   								<td>注册账户</td>
   								<td>姓名</td>
   								<td>性别</td>
   								<td>身份证</td>
   								<td></td>
   							</tr>
   						</thead>
   						<tbody>
   						<%
   							for(ParentInfo pinfo: pCheck){
   						%>
   							<tr>
   								<td><%=pinfo.getPlogname() %></td>
   								<td><%=pinfo.getPname() %></td>
   								<td><%=pinfo.getSex() %></td>
   								<td><%=pinfo.getPID() %></td>
   								<td><span class="parent" id="<%=pinfo.getPlogname()%>">查看</span></td>
   							</tr>
   						<%
   							}
   						 %>
   						</tbody>
   					</table>
   				</div>
   				
   				<!--  -->
   				
   				<div class="tunCheck">
   					<table border="1" class="table-bordered table-hover table-striped">
   						<thead>
   							<tr>
   								<td>注册账户</td>
   								<td>姓名</td>
   								<td>性别</td>
   								<td>身份证</td>
   								<td></td>
   							</tr>
   						</thead>
   						<tbody>
   						<%
   							for(TutorInfo tuninfo: tunCheck){
   						%>
   							<tr>
   								<td><%=tuninfo.getTlogname() %></td>
   								<td><%=tuninfo.getTname() %></td>
   								<td><%=tuninfo.getTsex() %></td>
   								<td><%=tuninfo.getTID() %></td>
   								<td><span class="tutorCheck" id="<%=tuninfo.getTlogname()%>">查看</span></td>
   							</tr>
   						<%
   							}
   						 %>
   						</tbody>
   					</table>
   				</div>
   				
   				<!--  -->
   				
   				<div class="tCheck">
   					<table border="1" class="table-bordered table-hover table-striped">
   						<thead>
   							<tr>
   								<td>注册账户</td>
   								<td>姓名</td>
   								<td>性别</td>
   								<td>身份证</td>
   								<td></td>
   							</tr>
   						</thead>
   						<tbody>
   						<%
   							for(TutorInfo tinfo: tCheck){
   						%>
   							<tr>
   								<td><%=tinfo.getTlogname() %></td>
   								<td><%=tinfo.getTname() %></td>
   								<td><%=tinfo.getTsex() %></td>
   								<td><%=tinfo.getTID() %></td>
   								<td><span class="tutor" id="<%=tinfo.getTlogname()%>">查看</span></td>
   							</tr>
   						<%
   							}
   						 %>
   						</tbody>
   					</table>
   				</div>
   				
   				<!--  -->
   				<div class="showDetails">
   					
   				</div>
   				
   			</div>
   		</div>
    </div>
  </body>
</html>
