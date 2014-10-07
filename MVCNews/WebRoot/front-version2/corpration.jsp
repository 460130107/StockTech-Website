<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<base href="<%= request.getScheme() + "://" + request.getServerName() + ":" + 
	request.getServerPort() + request.getContextPath() %>/" />
<link rel="icon" href="front/dist/img/icon_stockii_square.png">
<link href="front/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="front/dist/css/common.css" rel="stylesheet">
<title>合作加盟--斯多克科技</title>

</head>
<!-- NAVBAR
================================================== -->
  <body>
    <jsp:include page="_header.jsp?index=corpration" />
	<header class="jumbotron subhead-dimblue" id="overview">
		<div class="container">
			<h1>与我们合作</h1>
			<p class="lead">互利共赢，一同引领互联网金融的未来！</p>
		</div>
	</header>
	<div class="container">
		
	</div>
	
	<jsp:include page="_footer.jsp" />
	<script type="text/javascript" language="javascript" src="front/dist/js/jquery.min.js" ></script>
	<script type="text/javascript" language="javascript" src="front/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" language="javascript" src="front/dist/js/site.effect.js"></script>
</body>
</html>