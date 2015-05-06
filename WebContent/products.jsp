<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="it">

<head>
<%@include file="includes/head.jsp"%>
<title>Agave - Item List</title>
</head>

<body>

	<!-- Navigation -->
	<%@include file="includes/header.jsp"%>

	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-md-12">

				<div class="row carousel-holder">

					<div class="col-md-12">
						<div id="carousel-example-generic" class="carousel slide"
							data-ride="carousel" style="margin-bottom: 40px;">
							<ol class="carousel-indicators">
								<li data-target="#carousel-example-generic" data-slide-to="0"
									class=""></li>
								<li data-target="#carousel-example-generic" data-slide-to="1"
									class="active"></li>
								<li data-target="#carousel-example-generic" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item">
									<img class="slide-image" src="http://placehold.it/1150x400"
										alt="">
								</div>
								<div class="item active">
									<img class="slide-image" src="http://placehold.it/1150x400"
										alt="">
								</div>
								<div class="item">
									<img class="slide-image" src="http://placehold.it/1150x400"
										alt="">
								</div>
							</div>
							<a class="left carousel-control" href="#carousel-example-generic"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left"></span>
							</a> <a class="right carousel-control"
								href="#carousel-example-generic" data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right"></span>
							</a>
						</div>
					</div>

				</div>

				<div class="row">

					<c:forEach var="product" items="${products}">
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<img src="http://placehold.it/320x150" alt="">
								<div class="caption">
									<h4 class="pull-right">${product.price}</h4>
									<h4>
										<a href="<c:url value="/shop/product.get?id=${product.id}" />">${product.name}</a>
									</h4>
									<div>${product.description}</div>
								</div>
								<div class="ratings">
									<p class="pull-right">15 reviews</p>
									<p>
										<span class="glyphicon glyphicon-star"></span> <span
											class="glyphicon glyphicon-star"></span> <span
											class="glyphicon glyphicon-star"></span> <span
											class="glyphicon glyphicon-star"></span> <span
											class="glyphicon glyphicon-star-empty"></span>
									</p>
								</div>
							</div>
						</div>
					</c:forEach>

				</div>

			</div>

		</div>

	</div>
	<!-- /.container -->

	<div class="container">

		<hr>

		<!-- Footer -->
		<%@include file="includes/footer.jsp"%>

	</div>
	<!-- /.container -->

	<%@include file="includes/boostrapjquery.jsp"%>

</body>

</html>