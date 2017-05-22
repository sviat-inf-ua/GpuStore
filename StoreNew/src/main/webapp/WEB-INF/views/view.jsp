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
	<h2>Detail view</h2>
	<!-- <div class="row">

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
	</div> -->

	<form:form class="form-horizontal"
		action="/admin/specificationGpu/viewOne/${specificationGpu.id}"
		method="POST" modelAttribute="specificationGpu">
		<div class="form-group">
			<label for="brandGpu" class="col-sm-10 col-sm-offset-2"> <form:errors
					path="brandGpu" />
			</label>
		</div>
		<div class="form-group">
			<label for="brandGpu" class="col-sm-2 control-label">Brand
				GPU</label>
			<div class="col-sm-10">
				<label for="producer">${specificationGpu.brandGpu.name}</label>
				<%-- <form:select path="brandGpu" class="form-control" items="${brandGpu}"
					itemLabel="name" itemValue="id" id="brandGpu" /> --%>
			</div>
		</div>
		<div class="form-group">
			<label for="producerGpu" class="col-sm-10 col-sm-offset-2"> <form:errors
					path="producerGpu" />
			</label>
		</div>
		<div class="form-group">
			<label for="producerGpu" class="col-sm-2 control-label">Producer
				Gpu</label>
			<div class="col-sm-10">
			<label for="producer">${specificationGpu.producerGpu.name}</label>
				<%-- <form:select path="producerGpu" class="form-control"
					items="${producerGpus}" itemLabel="name" itemValue="id"
					id="producerGpu" /> --%>
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
			<label for="model">${specificationGpu.title}</label>
				<%-- <form:input class="form-control" path="title" id="name" /> --%>
			</div>
		</div>
		<div class="form-group">
			<label for="clockSpeed" class="col-sm-10 col-sm-offset-2"> <form:errors
					path="clockSpeed" />
			</label>
		</div>
		<div class="form-group">
			<label for="clockSpeed" class="col-sm-2 control-label">Clock
				Speed</label>
			<div class="col-sm-10">
			<label for="memory">${specificationGpu.clockSpeed} Mg</label>
				<%-- <form:input class="form-control" path="clockSpeed" id="clockSpeed" /> --%>
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
				<label for="memory">${specificationGpu.memory} Gb</label>
				<%-- <form:label class="form-control" path="memory" id="memory" /> --%>
			</div>
		</div>
		<%-- <div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">Save</button>
				<a class="btn btn-primary"
					href="/admin/specificationGpu/cancel<custom:allParams/>">Cancel</a>
			</div>
		</div> --%>
	</form:form>


	<div>

		<div>
			<a href="http://localhost:8080/">back</a>
		</div>
	</div>
	<div></div>

</body>
</html>






