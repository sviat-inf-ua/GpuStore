<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="/WEB-INF/custom.tld" prefix="custom"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SpecificationGpu</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="row">
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li><a href="/admin/brandGpu">Brand GPU</a></li>
						<li><a href="/admin/producerGpu">Producer GPU</a></li>
						<li class="active"><a href="/admin/specificationGpu">SpecificationGpu</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div class="row">
		<div class="col-md-1 col-xs-12"></div>
		<div class="col-md-9 col-xs-12">
			<div class="row">
				<div class="col-md-12 col-xs-12">
					<form:form class="form-horizontal" action="/admin/specificationGpu"
						method="POST" modelAttribute="specificationGpu">
						<custom:hiddenInputs
							excludeParams="producerGpu, brandGpu, title, clockSpeed, memory" />
						<div class="form-group">
							<label for="brandGpu" class="col-sm-10 col-sm-offset-2">
								<form:errors path="brandGpu" />
							</label>
						</div>
						<div class="form-group">
							<label for="brandGpu" class="col-sm-2 control-label">Brand
								GPU</label>
							<div class="col-sm-10">
								<form:select path="brandGpu" class="form-control"
									items="${brandGpus}" itemLabel="name" itemValue="id"
									id="brandGpu" />
							</div>
						</div>
						<div class="form-group">
							<label for="producerGpu" class="col-sm-10 col-sm-offset-2">
								<form:errors path="producerGpu" />
							</label>
						</div>
						<div class="form-group">
							<label for="producerGpu" class="col-sm-2 control-label">Producer
								Gpu</label>
							<div class="col-sm-10">
								<form:select path="producerGpu" class="form-control"
									items="${producerGpus}" itemLabel="name" itemValue="id"
									id="producerGpu" />
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="col-sm-10 col-sm-offset-2"> <form:errors
									path="title" />
							</label>
						</div>
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">Model</label>
							<div class="col-sm-10">
								<form:input class="form-control" path="title" id="name" />
							</div>
						</div>
						<div class="form-group">
							<label for="clockSpeed" class="col-sm-10 col-sm-offset-2">
								<form:errors path="clockSpeed" />
							</label>
						</div>
						<div class="form-group">
							<label for="clockSpeed" class="col-sm-2 control-label">Clock
								Speed</label>
							<div class="col-sm-10">
								<form:input class="form-control" path="clockSpeed"
									id="clockSpeed" />
							</div>
						</div>
						<div class="form-group">
							<label for="memory" class="col-sm-10 col-sm-offset-2"> <form:errors
									path="memory" />
							</label>
						</div>
						<div class="form-group">
							<label for="memory" class="col-sm-2 control-label">Memory</label>
							<div class="col-sm-10">
								<form:input class="form-control" path="memory" id="memory" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default">Save</button>
								<a class="btn btn-primary"
									href="/admin/specificationGpu/cancel<custom:allParams/>">Cancel</a>
							</div>
						</div>
					</form:form>
				</div>
			</div>
			<div>
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
				<div style="margin-left: 2%">
					<c:forEach items="${specificationGpus.content}"
						var="specificationGpu">
						<div class="row">
							<div class="col-md-2 col-xs-2">${specificationGpu.title}</div>
							<div class="col-md-2 col-xs-2">${specificationGpu.brandGpu.name}</div>
							<div class="col-md-2 col-xs-2">${specificationGpu.producerGpu.name}</div>
							<div class="col-md-2 col-xs-2">${specificationGpu.clockSpeed}Mh</div>
							<div class="col-md-2 col-xs-2">${specificationGpu.memory}Gb</div>
							<div class="col-md-2 col-xs-2">
								<a class="btn btn-warning"
									href="/admin/specificationGpu/update/${specificationGpu.id}<custom:allParams/>">update</a>
								<a class="btn btn-danger"
									href="/admin/specificationGpu/delete/${specificationGpu.id}<custom:allParams/>">delete</a>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<div class="col-md-2 col-xs-12">
			<div class="row">
				<div class="col-md-6 col-xs-6 text-center">
					<div class="dropdown">
						<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							Sort <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<custom:sort innerHtml="SpecificationGpu asc"
								paramValue="specificationGpu.title" />
							<custom:sort innerHtml="SpecificationGpu desc"
								paramValue="specificationGpu.title,desc" />
							<custom:sort innerHtml="BrandGpu name asc"
								paramValue="brandGpu.name" />
							<custom:sort innerHtml="BrandGpu name asc"
								paramValue="brandGpu.name,desc" />
							<custom:sort innerHtml="ProducerGpu name asc"
								paramValue="producerGpu.name" />
							<custom:sort innerHtml="ProducerGpu name asc"
								paramValue="producerGpu.name,desc" />
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-xs-6 text-center">
					<custom:size posibleSizes="1,2,5,10"
						size="${specificationGpus.size}" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 col-xs-12 text-center">
				<custom:pageable page="${specificationGpus}" cell="<li></li>"
					container="<ul class='pagination'></ul>" />
			</div>
		</div>
	</div>
</body>
</html>