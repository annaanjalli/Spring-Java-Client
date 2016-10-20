<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login page</title>
		
		<link href="<c:url value="/resources/css/app.css" />" rel="stylesheet">
		
		<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
		<!-- 
		<link href="<c:url value='${pageContext.request.contextPath}/resources/static/css/bootstrap.css' />"  rel="stylesheet"></link>
		<link href="<c:url value='${pageContext.request.contextPath}/resources/static/css/app.css' />" rel="stylesheet"></link>
		-->
		
		<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
	</head>

	<body>
		<div id="mainWrapper">
			<div class="login-container">
			
			<br>
			
			<div class="pleaselogin">
			<p></p>
				<p style="font-weight:bold; font-size:12px;
				   font-family:Arial; color:#fff; margin-top:-3px;
				   margin-left:30px;">PLEASE LOGIN</p>
			</div>
			
				<div class="login-card">
					<div class="login-form">
						<c:url var="loginUrl" value="/login" />
						<form action="${loginUrl}" method="post" class="form-horizontal">
							<c:if test="${param.error != null}">
								<div class="alert alert-danger">
									<p>Invalid username and password.</p>
								</div>
							</c:if>
							<c:if test="${param.logout != null}">
								<div class="alert alert-success">
									<p>You have been logged out successfully.</p>
								</div>
							</c:if>
							
							<br>
							
							<div class="input-group input-sm">
								<label class="input-group-addon" for="username"><i class="fa fa-user"></i></label>
								<input type="text" class="form-control" id="username" name="ssoId" placeholder="Username" required>
							</div>
							
							<br>
							
							<div class="input-group input-sm">
								<label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label> 
								<input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
							</div>
							
							<br>
							
							<input type="hidden" name="${_csrf.parameterName}" 	value="${_csrf.token}" />
								
							<div class="form-actions">
								<input type="submit"
									class="btn btn-block btn-primary btn-default" value="Log in">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

	</body>
</html>