<%@ include file="common/header.jsp"%>

<div class="section panel panel-default">
<div class="container" ng-app="addToCart">
	<h2>${ product.brand + " " + product.model }</h2>
	<div class="row">
		<div class="col-md-6">
			<img src="<c:url value='/resources/img/${ product.image }.jpg' />" class="img-responsive">
		</div>
		<div class="col-md-6" ng-controller="CartController as ctrl">
			<ul>
				<li><strong>Description:</strong> ${ product.description }</li>
				<li><strong>Brand:</strong> ${ product.brand }</li>
				<li><strong>Model:</strong> ${ product.model }</li>
				<li><strong>Price: Rs.</strong> ${ product.price }</li>
			</ul>
			<a class="btn btn-primary" ng-click="addItemToCart('${ product.productId }')" href="order">Add To Cart</a>
		</div>
	</div>
</div>
</div>

<%@ include file="common/footer.jsp"%>