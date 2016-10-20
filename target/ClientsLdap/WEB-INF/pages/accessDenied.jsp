<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>AccessDenied page</title>
    
    <link href="<c:url value="/resources/css/app.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    
</head>
<body>

		<div id="mainWrapper">
			<div class="login-container">
				<div class="login-card">
					<div class="login-form">

    Dear <strong>${user}</strong>, You are not authorized to access this page
    
    <a href="<c:url value="/login" />">Logout</a>

					</div>
				</div>
			</div>
		</div>

</body>
</html>
