<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<body>
<div id="top" class="navbar-inverse text-right">
	<ul class="list-inline">
		<li>客服电话：xxx-xxx-xxx</li>
		<li>登录</li>
		<li>注册</li>
		<li>忘记密码</li>
	</ul>
</div>
<hr style="margin:0;padding:0;">
<nav class="nav navbar-inverse" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand nav-logo" href="/"></a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class='${param.index=="index"?"active":"" }'><a
					href="front/index.jsp">首页</a></li>
				<li class="dropdown">
			      <a class="dropdown-toggle" data-toggle="dropdown" href="#"> 产品导航<span class="caret"></span></a>
			      <ul class="dropdown-menu" data-toggle="toggle_ul" style="width:400px;">
			      	 <li class="product-sort">A类产品
			      	 	<ul>
			      	 		<li>AAAAA-1</li>
			      	 		<li>AAAAA-1</li>
			      	 		<li>AAAAA-1</li>
			      	 	</ul>
			      	 </li>
			      	 <li class="product-sort">B类产品
			      	 	<ul>
			      	 		<li>BBBBB-1</li>
			      	 		<li>BBBBB-1</li>
			      	 		<li>BBBBB-1</li>
			      	 	</ul>
			      	 </li>
			      	 <li class="product-sort">C类产品
			      	 	<ul>
			      	 		<li>CCCCC-1</li>
			      	 		<li>CCCCC-1</li>
			      	 		<li>CCCCC-1</li>
			      	 	</ul>
			      	 </li>			       
			      </ul>
			      <div class="clear"></div>
			   	</li>
				<li class='${param.index=="project"?"active":"" }'><a
					href="front/project.jsp">项目</a></li>
				<li class='${param.index=="account"?"active":"" }'><a
					href="front/account.jsp">帐户</a></li>
				<li class='${param.index=="corpration"?"active":"" }'><a
					href="front/corpration.jsp">合作</a></li>
				<li class='${param.index=="recruit"?"active":"" }'><a
					href="front/recruit.jsp" target="_blank">加入我们</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
</nav>
</body>
</html>
