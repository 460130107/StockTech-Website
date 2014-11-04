<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="nav navbar-default" role="navigation">
	<div class="container">
	   <div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" 
	         data-target="#navbar-collapse">
	         <span class="sr-only">切换导航</span>
	         <span class="icon-bar"></span>
	         <span class="icon-bar"></span>
	         <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand nav-logo nav-logo-normal" href="#">W3Cschool</a>
	   </div>
	   <div class="collapse navbar-collapse" id="navbar-collapse">
	      <ul class="nav navbar-nav">
	         <li class='${param.index=="index"?"active":"" }'>
				<a href="front/index.jsp">首页</a></li>
			 <li class='${param.index=="product"?"active":"" }'>
				<a href="front/product.jsp">产品</a></li>
			 <li class='${param.index=="project"?"active":"" }'>
				<a href="front/project.jsp">项目</a></li>
			 <li class='${param.index=="corpration"?"active":"" }'>
				<a href="front/corpration.jsp">合作</a></li>
			 <li class='${param.index=="about"?"active":"" }'>
				<a href="front/about.jsp">关于我们</a></li>
			 <li>
			 	<ul class="nav navbar-nav">
			 		<li class='${param.index=="account"?"active":"" }'>
						<a href="front/account.jsp">登录</a></li>
					<li class='${param.index=="account"?"active":"" }'>
						<a href="front/signup.jsp">注册</a></li>
					<li class='${param.index=="forum"?"active":"" }'>
						<a href="front/forum.jsp">论坛</a></li>
			 	</ul>
			 </li>
			 
	      </ul>
	      <!-- <ul class="nav navbar-nav" style="float: right;">
			 
		  </ul> -->
	   </div>
   </div>
</nav>
