<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<body>
<!-- <div id="top" class="navbar-inverse text-right"> -->
<!-- 	<ul class="list-inline"> -->
<!-- 		<li>客服电话：xxx-xxx-xxx</li> -->
<!-- 		<li>登录</li> -->
<!-- 		<li>注册</li> -->
<!-- 		<li>忘记密码</li> -->
<!-- 	</ul> -->
<!-- </div> -->
<hr style="margin:0;padding:0;">
<nav class="nav navbar-transparent" role="navigation">
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
			      	 <li class="product-sort"><a href="front/index.jsp#proa">A类产品</a>
			      	 	<ul>
			      	 		<li><a href="front/index.jsp#proa-1">AAAAA-1</a></li>
			      	 		<li><a href="front/index.jsp#proa-2">AAAAA-2</a></li>
			      	 		<li><a href="front/index.jsp#proa-3">AAAAA-3</a></li>
			      	 	</ul>
			      	 </li>
			      	 <li class="product-sort"><a href="front/index.jsp#prob">B类产品</a>
			      	 	<ul>
			      	 		<li><a href="front/index.jsp#prob-1">BBBBB-1</a></li>
			      	 		<li><a href="front/index.jsp#prob-2">BBBBB-2</a></li>
			      	 		<li><a href="front/index.jsp#prob-3">BBBBB-3</a></li>
			      	 	</ul>
			      	 </li>
			      	 <li class="product-sort"><a href="front/index.jsp#proc">C类产品</a>
			      	 	<ul>
			      	 		<li><a href="front/index.jsp#proc-1">CCCCC-1</a></li>
			      	 		<li><a href="front/index.jsp#proc-2">CCCCC-2</a></li>
			      	 		<li><a href="front/index.jsp#proc-3">CCCCC-3</a></li>
			      	 	</ul>
			      	 </li>			       
			      </ul>
			      <div class="clear"></div>
			   	</li>
				<li class='${param.index=="project"?"active":"" }'><a
					href="front/project.jsp">项目</a></li>
				<li class='${param.index=="account"?"active":"" }'><a
					href="front/account.jsp">帐户</a></li>
				<li class='${param.index=="recruit"?"active":"" }'><a
					href="front/recruit.jsp" target="_blank">加入我们</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
</nav>
</body>
</html>
