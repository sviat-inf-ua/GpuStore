<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Brand Gpu</title>
</head>
<body>
	<jsp:include page="header.jsp" />

	<div class="row">
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<!-- 	<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button> -->
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li class="active"><a href="/admin/brandGpu">Brand GPU</a></li>
						<li><a href="/admin/producerGpu">Producer GPU</a></li>
						<li><a href="/admin/specificationGpu">Specification Gpu</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div class="row">
		<div class="col-md-3 col-xs-12"></div>
		<div class="col-md-7 col-xs-12">
			<div class="row">
				<div class="col-md-12 col-xs-12">
					<form:form class="form-horizontal" action="/admin/brandGpu"
						method="POST" modelAttribute="brandGpu">
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">Name</label>
							<div class="col-sm-10">
								<form:input class="form-control" path="name" id="name" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default">Save</button>
								<a class="btn btn-primary" href="/admin/brandGpu/cancel">Cancel</a>
							</div>
						</div>
					</form:form>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-xs-4">
					<h3>Brand name</h3>
				</div>
				<div class="col-md-4 col-xs-4">
					<h3>Update</h3>
				</div>
				<div class="col-md-4 col-xs-4">
					<h3>Delete</h3>
				</div>
			</div>
			<c:forEach items="${brandGpus}" var="brandGpu">
				<div class="row">
					<div class="col-md-4 col-xs-4">${brandGpu.name}</div>
					<div class="col-md-4 col-xs-4">
						<a class="btn btn-warning"
							href="/admin/brandGpu/update/${brandGpu.id}">update</a>
					</div>
					<div class="col-md-4 col-xs-4">
						<a class="btn btn-danger"
							href="/admin/brandGpu/delete/${brandGpu.id}">delete</a>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="col-md-2 col-xs-12"></div>
	</div>
</body>
</html>