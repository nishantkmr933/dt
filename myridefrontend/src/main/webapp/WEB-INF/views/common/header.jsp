<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>:: Welcome To MyRide.com ::</title>
<!-- Include jQuery before bootstrap -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Bootstrap cdn -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Fontawesome cdn -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- AngularJS cdn -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>

<!-- Custom css -->
<style>
body {
	padding-top: 60px;
	padding-bottom: 20px;
}

#thumbnails>.row {
	padding: 5px 0px 5px 0px;
}

p {
	font-family: 'Open Sans', sans-serif;
}

.nav {
	height: 65px;
	font-size: 20px;
}

.nav>li {
	padding: 10px;
	margin: 0px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#responsive-navbar">
				<span class="sr-only">Toggle Navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a href="<c:url value='/' />" class="navbar-brand"> <img
				style="padding: 0px; margin: 0px;"
				src="<c:url value='/resources/images/Logomakr.png' />" width="150"
				height="50" alt="MyRide.com Logo">
			</a>
			<div class="collapse navbar-collapse" id="responsive-navbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="<c:url value='/' />"> Home </a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> Products <strong class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value='/products/bikes' />"> Bikes </a></li>
							<li><a href="<c:url value='/products/scooties' />">
									Scooties </a></li>
							<li class="divider"></li>
							<li><a href="<c:url value='/products/spares' />"> Spares
							</a></li>
						</ul></li>
					<li><a href="<c:url value='/aboutUs' />"> About </a></li>
					<li><a href="<c:url value='/contactUs' />"> Contact Us</a></li>
					<li>
						<form class="navbar-form" style="width: 300px;">
							<input type="text" class="form-control"
								placeholder="Search Here...">
							<button type="submit" class="btn btn-default">
								<span class="glyphicon glyphicon-search"></span>
							</button>
						</form>
					</li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<!-- Options for Admin -->
					<sec:authorize access="hasRole('ADMIN')">
						<li><a href=""><strong><sec:authentication property="principal.username"/></strong></a></li>
						<li><a href="<c:url value='/productAdmin' />"> Product Admin </a></li>
						<li><a href="<c:url value='/logout' />"> Sign Out </a></li>
					</sec:authorize>
					<!-- Options for other Users -->
					<sec:authorize access="hasRole('USER')">
						<li><a href=""><strong><sec:authentication property="principal.username"/></strong></a></li>
						<li><a href="<c:url value='/logout' />"> Sign Out </a></li>
					</sec:authorize>
					<!-- Options for Anonymous users -->
					<sec:authorize access="isAnonymous()">
						<li><a href="<c:url value='/login' />"><span
								class="glyphicon glyphicon-log-in"></span> Sign In</a></li>
						<li><a href="<c:url value='/register' />"><span
								class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					</sec:authorize>
				</ul>
			</div>
		</div>
	</nav>