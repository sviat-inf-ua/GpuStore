<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GPU Store</title>
</head>
<body style="padding-left: 5%; padding-right: 5%;">

	 <jsp:include page="header.jsp" />
	<h2>Hello</h2>

	<security:authorize
		access="isAuthenticated() and hasRole('ROLE_ADMIN')">
		<a href="/admin">admin</a>
		<%-- 	<security:authentication property="principal.email"/> --%>
	</security:authorize>
	<security:authorize access="!isAuthenticated()">
		<a href="/registration">registration</a>
		<a href="/login">login</a>
		<a href="/welcome">Welcome</a>
	</security:authorize>

	<div class="row">
		<div class="col-md-2 col-xs-2">
			<h3>Brand</h3>
		</div>
		<div class="col-md-2 col-xs-2">
			<h3>Producer</h3>
		</div>
		<div class="col-md-2 col-xs-2">
			<h3>Model</h3>
		</div>
		<div class="col-md-2 col-xs-2">
			<h3>ClockSpeed</h3>
		</div>
		<div class="col-md-2 col-xs-2">
			<h3>Memory</h3>
		</div>
	</div>
	<div>
		<c:forEach items="${specificationGpus}" var="specificationGpuView">
			<div class="row">
				<div class="col-md-2 col-xs-2">${specificationGpu.brandGpu.name}</div>
				<div class="col-md-2 col-xs-2">${specificationGpu.producerGpu.name}</div>
				<div class="col-md-2 col-xs-2">${specificationGpu.title}</div>
				<div class="col-md-2 col-xs-2">${specificationGpu.clockSpeed}Mh</div>
				<div class="col-md-2 col-xs-2">${specificationGpu.memory}Gb</div>
				<div class="col-md-2 col-xs-2">
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>


