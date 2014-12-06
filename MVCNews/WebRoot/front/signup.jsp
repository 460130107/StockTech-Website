<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>开启智能投资之旅</title>
<base
	href="<%=request.getScheme() + "://" + request.getServerName()
					+ ":" + request.getServerPort() + request.getContextPath()%>/" />
<link rel="icon" href="../../favicon.ico">
<link href="front/dist/css/bootstrap.css" rel="stylesheet">
<link href="front/dist/css/common.css" rel="stylesheet">
<link href="front/dist/css/signin.css" rel="stylesheet">
<style type="text/css">
	.sign-up-field h3{
	}
</style>
<link rel="icon" href="front/dist/img/icon_stockii_square.png">
</head>
<body>
	<jsp:include page="_header.jsp?index=signup" />
	
	<div class="container sign-up-section">
    	<div class="col-md-6">
		<form action="UserRegisterServlet" method="post" onSubmit="return validate(this)">
			<div class="row sign-up-input">
				<div class="sign-up-field">
					<h3>邮箱*</h3>
					<input id="id_email" class="form-control" type="email" name="email"
						placeholder="填入您的常用邮箱" onBlur="validateEmail(this.value)">
					<h5 id="tip_email"></h5>
				</div>

				<div class="sign-up-field">
					<h3>密码*</h3>
					<input id="id_password" class="form-control" type="password"
						name="password" placeholder="设置密码"
						onBlur="validatePassword(this.value)">
					<h5 id="tip_psw"></h5>
				</div>
				
				<div class="sign-up-field">
					<h3>身份证号*</h3>
					<input id="id_idno" class="form-control" type="text" name="userId"
						placeholder="身份证号/护照号" maxlength="50"
						onBlur="validateIdNumber(this.value)">
					<h5 id="tip_idnumber"></h5>
				</div>

				<div class="sign-up-field">
					<h3>真实姓名*</h3>
					<input id="id_realname" class="form-control" type="text"
						name="realname" placeholder="斯多克服务要求实名认证" maxlength="50"
						onBlur="validateRealName(this.value)">
					<h5 id="tip_realname"></h5>
				</div>

				<div class="sign-up-field">
					<h3>用户名</h3>
					<input id="id_name" class="form-control" type="text" name="name"
						placeholder="您的昵称是？" maxlength="50"
						onBlur="validateUserName(this.value)">
					<h5 id="tip_username"></h5>
				</div>

				<div class="sign-up-field">
					<h3>电话</h3>
					<input id="id_phone" class="form-control" type=tel name="userPhone"
						placeholder="填入手机号有利于帐户安全" onBlur="validatePhone(this.value)">
					<h5 id="tip_phone"></h5>
				</div>

				<div class="sign-up-field">
					<h3>公司</h3>
					<input id="id_company" class="form-control" type="text"
						name="company" placeholder="填入公司信息帮助我们更好的认识您">
					<h5 id="tip_company"></h5>
				</div>

				<div class="note">
					点击注册表示您同意我们的 <a href="https://istocktech.com/terms/">条款</a> and <a
						href="https://istocktech.com/privacy/">隐私协议</a>.
				<button class="btn btn-success">注册</button>
				</div>
			</div>
		</form>
		</div>    
    </div>
	
	<jsp:include page="_footer.jsp" />
	
</body>
</html>