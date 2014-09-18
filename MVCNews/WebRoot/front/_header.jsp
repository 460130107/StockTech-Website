<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<body>
	<nav class="nav navbar-transparent" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand nav-logo" href="#"></a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class='${param.index=="index"?"active":"" }'>
						<a href="front/index.jsp">首页</a></li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 产品导航
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu list-inline" data-toggle="toggle_ul"
							style="width: 500px;">
							<li><a href="front/index.jsp#proa">A类产品</a>
								<ul class="list-unstyled">
									<li><a href="front/index.jsp#proa-1">AAAAA-1</a></li>
									<li><a href="front/index.jsp#proa-2">AAAAA-2</a></li>
									<li><a href="front/index.jsp#proa-3">AAAAA-3</a></li>
								</ul></li>
							<li><a href="front/index.jsp#prob">B类产品</a>
								<ul class="list-unstyled">
									<li><a href="front/index.jsp#prob-1">BBBBB-1</a></li>
									<li><a href="front/index.jsp#prob-2">BBBBB-2</a></li>
									<li><a href="front/index.jsp#prob-3">BBBBB-3</a></li>
								</ul></li>
							<li><a href="front/index.jsp#proc">C类产品</a>
								<ul class="list-unstyled">
									<li><a href="front/index.jsp#proc-1">CCCCC-1</a></li>
									<li><a href="front/index.jsp#proc-2">CCCCC-2</a></li>
									<li><a href="front/index.jsp#proc-3">CCCCC-3</a></li>
								</ul></li>
						</ul>
						<div class="clear"></div></li>
					<li class='${param.index=="project"?"active":"" }'>
						<a href="front/project.jsp">项目</a></li>
					<li class='${param.index=="account"?"active":"" }'>
						<a href="front/account.jsp">帐户</a></li>
					<li class='${param.index=="help"?"active":"" }'>
						<a href="front/help.jsp">帮助中心</a></li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="front/recruit.jsp" target="_blank">关于斯多克</a>
							<ul class="dropdown-menu" data-toggle="toggle_ul">
								<li><a href="front/recruit.jsp">关于我们 </a></li>
								<li><a href="front/service_process.jsp">服务流程 </a></li>
							</ul></li>
				</ul>
				<div id="account-bar" class="text-right">
					<ul class="list-inline">
						<li class='${param.index=="account"?"active":"" }'>
							<a href="front/account.jsp">登录</a>|</li>
						<li class='${param.index=="account"?"active":"" }'>
							<a href="front/signup.jsp">注册</a>|</li>
						<li class='${param.index=="account"?"active":"" }'>
							<a href="front/account.jsp">忘记密码</a></li>
					</ul>
				</div>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>
</body>
</html>
