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
<jsp:include page="header.jsp" />
<title>GPU Store</title>
<script
	src="http://bootstrap-ru.com/204/assets/js/bootstrap-carousel.js"></script>
</head>

<body style="margin-left: 5%">
	<h2>Hello</h2>

	<security:authorize
		access="isAuthenticated() and hasRole('ROLE_ADMIN')">
		<a href="/admin">admin</a>
		<%-- 	<security:authentication property="principal.email"/> --%>
	</security:authorize>

	<security:authorize access="!isAuthenticated()">
		<a href="/registration">registration</a>
		<a href="/login">login</a>
	</security:authorize>

	<div>
		<ul>
			<li><a href="/admin">admin</a></li>
			<li><a href="/login">login</a></li>
			<li><a href="/registration">registration</a></li>
		</ul>
	</div>

	<div class="row">

		<div class="col-sm-6 col-sm-offset-3">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img
							src="https://lh3.googleusercontent.com/HMkHZbrMn6wYw-opk40NnP8th4h5jsDbqqe2NPUi-A-dLdvvyL1bUw7KeArTFjKW3OWppAXM_btONxlLwmPqibrHhaKsxHpJS98J2WNOacIoCDbhIyCAdxLXXEo2TGaDQSk4YQ4kI7m4ncEMGKi2paqafe3STqRTwEyiO0LK1IKUzCHpm9buz7VkgKxowNCuBF-Qa8xKwXBQ0goc-dGlwgCMSGmdbm77WZwtaYk78PXFq9Fyt6uSaZKLOZEMBGDQ9f_eHLOadsm-JJ3rT8hp8gkvKbzOpD7mY0f_7LlvpIs6kjbmq2ZexFB_jh4Ybmkf4qJn0se0BEq-dWm6vQgkc8UoS6kCmRg9PTedYz-x-qd6ML2mPItoSOXo3HqbWKDuc1ieM5Ga2oAPf5bpKJbAQb2yommwxC4DBgXvoZophqM_Pi7k76gVwnOggrmKyReypWWwzWqJWMKH4iqXx-PATKdDx5qfLcB0-tpfFWTSmWWIDhkPU00ZZIBOtcDty6h9Vmq0iYVaaa3hEfKxz8yEUGdH8RRk7MviugQHu4hLth2pUNqKGK1a2PAw6ziqdfn5X2gjjhHKChPi42RUmFJs7UTf8ozTIGZpOUuXNMGgCkfO84cAfb3B=w400-h256-no"
							alt="RX 480">
					</div>
					<div class="item">
						<img
							src="https://lh3.googleusercontent.com/b4j6lLDNO7_NfBAD8N55ExV1LvcwBe6LKGh_QoCUj-MMnd3DEEQOd2527QTOGERsR_JCRyxDXgsDqJzY5ul4r7BLQaucEdA4QhHusrOiVbyD1XqaVvP7uCEyZ8x1XGLZ2tj8-NW4mGwDttZbnWNryqie13xa6ULxoIe-RZaYzocLHSTojrQBX4_q5ZaitAjSW2nteVzdCuBR4Y30teWe-p930-oYWZcif9hHDcfStTioTafWtAZAXrcN7YK-_hhrGAbi3fDqhc3MyWF-MJdnmNbR7uEGCWh8_Z1RSpLFkurChvBX0loQAAztIQC4thdWi9aaP3Upkgk623eKveRmvor5HnEAlYSdPCaoBFcLKIyfp8Q0U-YhOORNgIGLbcSjSuhkzBRgQ5EtWmyT4mzsOffzQSSmgv1EBZqSr3zB8rfIsNW8lciysBPqtMZCTEBzkKo9Ksy-UMCeEG--JlJZXytJJwiPOkhZUJRboFvgh3uekxzpxGGlokrNVWCYavKTXnqTNK2_pHKyDy7D6UL1LIZT0zbe6ADtCrEyWsJvxFbDvLca5Xi4USz-TeLvzngOQzcIlfWBCMoBJIoP2T6w3tWOvO3jspa8G2v0hnCvyUZWuV_9KVOm=w400-h256-no"
							alt="MSI GTX 1060">
					</div>
					<div class="item">
						<img
							src="https://lh3.googleusercontent.com/WAKnstrivTjgmDSAs1x1av7Qkb6ji7cP2wB-meEjwtZwNzndu6Z3Zns4mGOBGFrhPcOQ3rwbWN8l__CRnARIs_KqSk-B4NGIxJPO_jTgXQWVFOaqncXuhbmo1UPauTi5-8920ffaloEz-X8EEMAyRiyMmyrAsBZAMC9o9huvf7Vk3gZJvcMtrtFsKp33LR0dAvLGGbadZ1SuxDmle43CJrZ4wB9ydVW7R2j86IV394bxve0Gs8shct1sSZ8hlVSsFAJymixh56Jlrcmi6VzfDPTDE_0uj1KZ1HeJsrr2c9_XFllEMTzfMTTeW17PG2TNnPhpQpkdDuoYPxzO--uWVJ-C9bzBLg4b-l99jFtrV_l_Zk_BRLLKxry7hDPISDtanCd0G51f5In-r0hdp0YiNvlJxhVMNgbh4KD7iZq3tjWB3wF27dWu_VZ5uhcLwGzELH7txqoyhYpTfderWhhg23GdEvQtO1h_1MARZvcrjRf4gWuWoIC0pNtEREoO86sh6cBt4DRBHrrvJM-YsTJld5MISM6MPucYACNyInygz3m_jBuRNcNLpP1v318bC6TA3Tz7lVim52tpBcCc1qrlzyZ96dtqcFM77x__g0R0HquVb2PRXc4Ied-IDHJa50nqojfnHrVyNFIfjs5XnFFtRmtXdG0rrvaB1CWSuku4hg=w400-h256-no"
							alt="GTX 1080Ti">
					</div>
				</div>
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	<div style="margin: 8%">
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
			<!-- <div class="col-md-2 col-xs-2">
				<h3>ClockSpeed</h3>
			</div>
			<div class="col-md-2 col-xs-2">
				<h3>Memory</h3>
			</div> -->
		</div>
		<div style="margin-left: 2%">
			<c:forEach items="${specificationGpus}" var="specificationGpu">
				<div class="row">
				
					<div class="col-md-2 col-xs-4">${specificationGpu.brandGpu.name}</div>
					<div class="col-md-2 col-xs-4">${specificationGpu.producerGpu.name}</div>
					<div class="col-md-2 col-xs-4">${specificationGpu.title}</div>
					<%-- <div class="col-md-2 col-xs-2">${specificationGpu.clockSpeed}Mh</div>
					<div class="col-md-2 col-xs-2">${specificationGpu.memory}Gb</div> --%>
					<!-- <div class="col-md-2 col-xs-2"><img width="50%" height="50%"
							src="https://photos-3.dropbox.com/t/2/AAAi76RNK4GlxgXrn34DRT0klHcABpBe4Vckg44QkwvF6Q/12/89493219/jpeg/32x32/1/_/1/2/MSI%20GeForce%20GTX%201060.jpg/ELOHzUUYlFwgAigC/QAE1_tOR8tBY8kaSIAaW4P34SCkjIx2QzXhQiN8E8IY?size=32x32&size_mode=5"
							alt="MSI GTX 1060" ></div> -->
							<a class="btn btn-warning"
							href="/specificationGpu/viewOne/${specificationGpu.id}">View</a>
					<div class="col-md-2 col-xs-2"></div>
				</div>
			</c:forEach>
		</div>
	</div>

	<script type="text/javascript">
		$("#myCarousel").carousel();
	</script>

</body>
</html>