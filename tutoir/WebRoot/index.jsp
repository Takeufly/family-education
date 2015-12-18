<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

  <script type="text/javascript" src="js/jQuery.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/index.js"></script>
 </head>

 <body>	
  <div class="first"><!-- 上面一行 -->
	<img src="images/bg6.jpg" alt="福大家教" class="img-circle firImg">
	<div class="col-lg-6 firSearch">
		<div class="input-group">
			<input type="text" class="form-control firInput" placeholder="搜索您感兴趣的科目或老师">
			<span class="input-group-btn">
				<button class="btn btn-default firButton" type="button">搜索</button>
			</span>
		</div><!-- /input-group -->
	</div><!-- /.col-lg-6 -->
	<div class="login">
		<!-- <span class="firLogin">[请登录]</span>
		<span class="firRegister">[免费注册]</span> -->
	</div>
	<img src="images/bg11.jpg" alt="您的孩子，我们的希望" class="img-rounded firImg2">
  </div>
  
  <div class="second"><!-- 导航栏 -->
	<span class="sec1">找老师</span>
  </div>
  
   <div class="container-fluid third" style="padding:0">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	 
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>
	
		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active" >
				<img src="images/content_bg1.jpg" alt="..." style="height:450px;">
			</div>
			<div class="item">
				<img src="images/content_bg2.jpg" alt="..." style="height:450px;">
			</div>
			<div class="item">
				<img src="images/content_bg3.jpg" alt="..." style="height:450px;">
			</div>
		</div>
	</div>

  
  	<div class="col-md-3 left" style="position:relative;top:-450px;left:200px;"><!-- 左边窗口 -->
		
		<div class="primary" id="primary"><!-- 小学 -->
			<img src="images/bg7.jpg" alt="小学，校园的第一步" class="img-circle junImg">
			<span class="jun1">小学</span>
			<span class="jun1">小升初</span><br />
			<span class="jun2">语文</span>
			<span class="jun2">数学</span>
			<span class="jun2">英语</span>
			<span class="jun2">奥数</span>
		</div>
		
		<div class="junior" id="junior"><!-- 初中 -->
			<img src="images/bg8.jpg" alt="初中，未来的基础" class="img-circle junImg">
			<span class="jun1">初中</span>
			<span class="jun1">中考</span><br />
			<span class="jun2">数学</span>
			<span class="jun2">英语</span>
			<span class="jun2">物理</span>
			<span class="jun2">化学</span>
		</div>

		<div class="senior" id="senior"><!-- 高中 -->
			<img src="images/bg9.jpg" alt="高中，决定你的将来" class="img-circle junImg">	
			<span class="jun1">高中</span>
			<span class="jun1">高考</span><br />
			<span class="jun2">语文</span>
			<span class="jun2">数学</span>
			<span class="jun2">英语</span>
			<span class="jun2">地理</span>
		</div>

	</div>
	
	<div class="col-md-5 middle" style="position:relative;top:-450px;left:200px;"><!-- 右边扩展 -->
		<div class="choose">
			<a href="#" class="mid1">一年级</a>
			<ul class="type">
				<li><a href="TutorQuery?grade=1&subject=1" class="subject">语文</a></li>
				<li><a href="TutorQuery?grade=1&subject=2" class="subject">数学</a></li>
				<li><a href="TutorQuery?grade=1&subject=3" class="subject">英语</a></li>
				<li><a href="TutorQuery?grade=1&subject=4" class="subject">作文</a></li>
				<li><a href="TutorQuery?grade=1&subject=5" class="subject">奥数</a></li>
				<li><a href="TutorQuery?grade=1&subject=6" class="subject">陪读</a></li>
			</ul>
		</div>
		<br />
		<div class="choose">
			<a href="#" class="mid1">二年级</a>
			<ul class="type">
				<li><a href="TutorQuery?grade=2&subject=1" class="subject">语文</a></li>
				<li><a href="TutorQuery?grade=2&subject=2" class="subject">数学</a></li>
				<li><a href="TutorQuery?grade=2&subject=3" class="subject">英语</a></li>
				<li><a href="TutorQuery?grade=2&subject=4" class="subject">作文</a></li>
				<li><a href="TutorQuery?grade=2&subject=5" class="subject">奥数</a></li>
				<li><a href="TutorQuery?grade=2&subject=6" class="subject">陪读</a></li>
			</ul>
		</div>
		
		<br />
		<div class="choose">
			<a href="#" class="mid1">三年级</a>
			<ul class="type">
				<li><a href="TutorQuery?grade=3&subject=1" class="subject">语文</a></li>
				<li><a href="TutorQuery?grade=3&subject=2" class="subject">数学</a></li>
				<li><a href="TutorQuery?grade=3&subject=3" class="subject">英语</a></li>
				<li><a href="TutorQuery?grade=3&subject=4" class="subject">作文</a></li>
				<li><a href="TutorQuery?grade=3&subject=5" class="subject">奥数</a></li>
				<li><a href="TutorQuery?grade=3&subject=6" class="subject">陪读</a></li>
			</ul>
		</div>
		
		<br />
		<div class="choose">
			<a href="#" class="mid1">四年级</a>
			<ul class="type">
				<li><a href="TutorQuery?grade=4&subject=1" class="subject">语文</a></li>
				<li><a href="TutorQuery?grade=4&subject=2" class="subject">数学</a></li>
				<li><a href="TutorQuery?grade=4&subject=3" class="subject">英语</a></li>
				<li><a href="TutorQuery?grade=4&subject=4" class="subject">作文</a></li>
				<li><a href="TutorQuery?grade=4&subject=5" class="subject">奥数</a></li>
				<li><a href="TutorQuery?grade=4&subject=6" class="subject">陪读</a></li>
			</ul>
		</div>
		
		<br />
		<div class="choose" >
			<a href="#" class="mid1">五年级</a>
			<ul class="type">
				<li><a href="TutorQuery?grade=5&subject=1" class="subject">语文</a></li>
				<li><a href="TutorQuery?grade=5&subject=2" class="subject">数学</a></li>
				<li><a href="TutorQuery?grade=5&subject=3" class="subject">英语</a></li>
				<li><a href="TutorQuery?grade=5&subject=4" class="subject">作文</a></li>
				<li><a href="TutorQuery?grade=5&subject=5" class="subject">奥数</a></li>
				<li><a href="TutorQuery?grade=5&subject=6" class="subject">陪读</a></li>
			</ul>
		</div>
		
		<br />
		<div class="choose">
			<a href="#" class="mid1">六年级</a>
			<ul class="type">
				<li><a href="TutorQuery?grade=6&subject=1" class="subject">语文</a></li>
				<li><a href="TutorQuery?grade=6&subject=2" class="subject">数学</a></li>
				<li><a href="TutorQuery?grade=6&subject=3" class="subject">英语</a></li>
				<li><a href="TutorQuery?grade=6&subject=4" class="subject">作文</a></li>
				<li><a href="TutorQuery?grade=6&subject=5" class="subject">奥数</a></li>
				<li><a href="TutorQuery?grade=6&subject=6" class="subject">陪读</a></li>
			</ul>
		</div>
		
		<br />
		<div class="choose">
			<a href="#" class="mid1">小升初</a>
			<ul class="type">
				<li><a href="TutorQuery?grade=7&subject=1" class="subject">语文</a></li>
				<li><a href="TutorQuery?grade=7&subject=2" class="subject">数学</a></li>
				<li><a href="TutorQuery?grade=7&subject=3" class="subject">英语</a></li>
				<li><a href="TutorQuery?grade=7&subject=4" class="subject">作文</a></li>
				<li><a href="TutorQuery?grade=7&subject=5" class="subject">奥数</a></li>
				<li><a href="TutorQuery?grade=7&subject=6" class="subject">陪读</a></li>
			</ul>
		</div>
	</div><!-- middle -->


	<div class="col-md-5 middle" style="position:relative;top:-450px;left:200px;"><!-- 右边扩展 （初中）-->
		<div class="cho">
			<a href="#" class="mid1">初一</a>
			<ul class="type">
				<li><a href="TutorQuery?grade=8&subject=1" class="subject">语文</a></li>
				<li><a href="TutorQuery?grade=8&subject=2" class="subject">数学</a></li>
				<li><a href="TutorQuery?grade=8&subject=3" class="subject">英语</a></li>
				<li><a href="TutorQuery?grade=8&subject=7" class="subject">政治</a></li>
				<li><a href="TutorQuery?grade=8&subject=8" class="subject">物理</a></li>
				<li><a href="TutorQuery?grade=8&subject=9" class="subject">化学</a></li>
				<li style="clear:both"></li>
				<li class="type-spe"><a href="TutorQuery?grade=8&subject=10" class="subject">地理</a></li>
				<li><a href="TutorQuery?grade=8&subject=11" class="subject">历史</a></li>
				<li><a href="TutorQuery?grade=8&subject=12" class="subject">生物</a></li>
				<li><a href="TutorQuery?grade=8&subject=5" class="subject">奥数</a></li>
				<li><a href="TutorQuery?grade=8&subject=6" class="subject">陪读</a></li>
			</ul>
		</div>
		<br />
		<div class="cho">
			<a href="#" class="mid1">初二</a>
			<ul class="type">
				<li><a href="TutorQuery?grade=9&subject=1" class="subject">语文</a></li>
				<li><a href="TutorQuery?grade=9&subject=2" class="subject">数学</a></li>
				<li><a href="TutorQuery?grade=9&subject=3" class="subject">英语</a></li>
				<li><a href="TutorQuery?grade=9&subject=7" class="subject">政治</a></li>
				<li><a href="TutorQuery?grade=9&subject=8" class="subject">物理</a></li>
				<li><a href="TutorQuery?grade=9&subject=9" class="subject">化学</a></li>
				<li style="clear:both"></li>
				<li class="type-spe"><a href="TutorQuery?grade=9&subject=10" class="subject">地理</a></li>
				<li><a href="TutorQuery?grade=9&subject=11" class="subject">历史</a></li>
				<li><a href="TutorQuery?grade=9&subject=12" class="subject">生物</a></li>
				<li><a href="TutorQuery?grade=9&subject=5" class="subject">奥数</a></li>
				<li><a href="TutorQuery?grade=9&subject=6" class="subject">陪读</a></li>
			</ul>
		</div>
		
		<br />
		<div class="cho">
			<a href="#" class="mid1">初三</a>
			<ul class="type">
				<li><a href="TutorQuery?grade=10&subject=1" class="subject">语文</a></li>
				<li><a href="TutorQuery?grade=10&subject=2" class="subject">数学</a></li>
				<li><a href="TutorQuery?grade=10&subject=3" class="subject">英语</a></li>
				<li><a href="TutorQuery?grade=10&subject=7" class="subject">政治</a></li>
				<li><a href="TutorQuery?grade=10&subject=8" class="subject">物理</a></li>
				<li><a href="TutorQuery?grade=10&subject=9" class="subject">化学</a></li>
				<li style="clear:both"></li>
				<li class="type-spe"><a href="TutorQuery?grade=10&subject=10" class="subject">地理</a></li>
				<li><a href="TutorQuery?grade=10&subject=11" class="subject">历史</a></li>
				<li><a href="TutorQuery?grade=10&subject=12" class="subject">生物</a></li>
				<li><a href="TutorQuery?grade=10&subject=5" class="subject">奥数</a></li>
				<li><a href="TutorQuery?grade=10&subject=6" class="subject">陪读</a></li>
			</ul>
		</div>
		
		<br />
		<div class="cho">
			<a href="#" class="mid1">中考</a>
			<ul class="type">
				<li><a href="TutorQuery?grade=111&subject=1" class="subject">语文</a></li>
				<li><a href="TutorQuery?grade=11&subject=2" class="subject">数学</a></li>
				<li><a href="TutorQuery?grade=11&subject=3" class="subject">英语</a></li>
				<li><a href="TutorQuery?grade=11&subject=7" class="subject">政治</a></li>
				<li><a href="TutorQuery?grade=11&subject=8" class="subject">物理</a></li>
				<li><a href="TutorQuery?grade=11&subject=9" class="subject">化学</a></li>
				<li style="clear:both"></li>
				<li class="type-spe"><a href="TutorQuery?grade=11&subject=10" class="subject">地理</a></li>
				<li><a href="TutorQuery?grade=11&subject=11" class="subject">历史</a></li>
				<li><a href="TutorQuery?grade=11&subject=12" class="subject">生物</a></li>
			</ul>
		</div>
		
		
	</div><!-- middle -->

	<div class="col-md-5 middle" style="position:relative;top:-450px;left:200px;"><!-- 右边扩展 （高中）-->
		<div class="cho">
			<a href="#" class="mid1">高一</a>
			<ul class="type">
				<li><a href="TutorQuery?grade=12&subject=1" class="subject">语文</a></li>
				<li><a href="TutorQuery?grade=12&subject=2" class="subject">数学</a></li>
				<li><a href="TutorQuery?grade=12&subject=3" class="subject">英语</a></li>
				<li><a href="TutorQuery?grade=12&subject=7" class="subject">政治</a></li>
				<li><a href="TutorQuery?grade=12&subject=8" class="subject">物理</a></li>
				<li><a href="TutorQuery?grade=12&subject=9" class="subject">化学</a></li>
				<li style="clear:both"></li>
				<li class="type-spe"><a href="TutorQuery?grade=12&subject=10" class="subject">地理</a></li>
				<li><a href="TutorQuery?grade=12&subject=11" class="subject">历史</a></li>
				<li><a href="TutorQuery?grade=12&subject=12" class="subject">生物</a></li>
				<li><a href="TutorQuery?grade=12&subject=13" class="special">信息技术</a></li>
				<li><a href="TutorQuery?grade=12&subject=14" class="special">生命科学</a></li>
			</ul>
		</div>
		<br />
		<div class="cho">
			<a href="#" class="mid1">高二</a>
			<ul class="type">
				<li><a href="TutorQuery?grade=13&subject=1" class="subject">语文</a></li>
				<li><a href="TutorQuery?grade=13&subject=2" class="subject">数学</a></li>
				<li><a href="TutorQuery?grade=13&subject=3" class="subject">英语</a></li>
				<li><a href="TutorQuery?grade=13&subject=7" class="subject">政治</a></li>
				<li><a href="TutorQuery?grade=13&subject=8" class="subject">物理</a></li>
				<li><a href="TutorQuery?grade=13&subject=9" class="subject">化学</a></li>
				<li style="clear:both"></li>
				<li class="type-spe"><a href="TutorQuery?grade=13&subject=10" class="subject">地理</a></li>
				<li><a href="TutorQuery?grade=13&subject=11" class="subject">历史</a></li>
				<li><a href="TutorQuery?grade=13&subject=12" class="subject">生物</a></li>
				<li><a href="TutorQuery?grade=13&subject=13" class="special">信息技术</a></li>
				<li><a href="TutorQuery?grade=13&subject=14" class="special">生命科学</a></li>
			</ul>
		</div>
		
		<br />
		<div class="cho">
			<a href="#" class="mid1">高三</a>
			<ul class="type">
				<li><a href="TutorQuery?grade=14&subject=1" class="subject">语文</a></li>
				<li><a href="TutorQuery?grade=14&subject=2" class="subject">数学</a></li>
				<li><a href="TutorQuery?grade=14&subject=3" class="subject">英语</a></li>
				<li><a href="TutorQuery?grade=14&subject=7" class="subject">政治</a></li>
				<li><a href="TutorQuery?grade=14&subject=8" class="subject">物理</a></li>
				<li><a href="TutorQuery?grade=14&subject=9" class="subject">化学</a></li>
				<li style="clear:both"></li>
				<li class="type-spe"><a href="TutorQuery?grade=14&subject=10" class="subject">地理</a></li>
				<li><a href="TutorQuery?grade=14&subject=11" class="subject">历史</a></li>
				<li><a href="TutorQuery?grade=14&subject=12" class="subject">生物</a></li>
				<li><a href="TutorQuery?grade=14&subject=13" class="special">信息技术</a></li>
				<li><a href="TutorQuery?grade=14&subject=14" class="special">生命科学</a></li>
			</ul>
		</div>
		
		<br />
		<div class="cho">
			<a href="#" class="mid1">高考</a>
			<ul class="type">
				<li><a href="TutorQuery?grade=15&subject=1" class="subject">语文</a></li>
				<li><a href="TutorQuery?grade=15&subject=2" class="subject">数学</a></li>
				<li><a href="TutorQuery?grade=15&subject=3" class="subject">英语</a></li>
				<li><a href="TutorQuery?grade=15&subject=7" class="subject">政治</a></li>
				<li><a href="TutorQuery?grade=15&subject=8" class="subject">物理</a></li>
				<li><a href="TutorQuery?grade=15&subject=9" class="subject">化学</a></li>
				<li style="clear:both"></li>
				<li class="type-spe"><a href="TutorQuery?grade=15&subject=10" class="subject">地理</a></li>
				<li><a href="TutorQuery?grade=15&subject=11" class="subject">历史</a></li>
				<li><a href="TutorQuery?grade=15&subject=12" class="subject">生物</a></li>
				<li><a href="TutorQuery?grade=15&subject=15" class="subject">理综</a></li>
				<li><a href="TutorQuery?grade=15&subject=16" class="subject">文综</a></li>
				<li><a href="TutorQuery?grade=15&subject=17" class="special">艺考文化</a></li>
				<li style="clear:both">2</li>
				<li class="type-spe"><a href="TutorQuery?grade=15&subject=18" class="special">音乐艺考</a></li>
				<li><a href="TutorQuery?grade=15&subject=19" class="special">美术艺考</a></li>
				<li><a href="TutorQuery?grade=15&subject=20" class="special">高考志愿</a></li>
				<li><a href="TutorQuery?grade=15&subject=21" class="special">心理辅导</a></li>
			</ul>
		</div>
	</div><!-- middle -->	
  </div><!-- container -->

  
 </body>
</html>

