<%@ include file="common/header.jsp"%>

<c:url var="addAction" value="/productAdmin/add"></c:url>
<div class="section">
	<div class="container">
		<div class="row">
			<div class="col-md-8 center">
				<h2>Add New Product</h2>
				<form:form class="form-horizontal" role="form"
					action="${ addAction }" modelAttribute="product"
					enctype="multipart/form-data">
					<c:if test="${ !empty product.model }">
					<div class="form-group">
						<div class="col-sm-10">
							<form:input class="form-control" readonly="true" path="productId" disabled="true" />
							<form:hidden path="productId" />
						</div>
					</div>
					</c:if>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input class="form-control" path="brand" placeholder="Brand" />
							<form:errors path="brand" cssClass="error" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input type="text" class="form-control" path="model" placeholder="Model" />
							<form:errors path="model" cssClass="error" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input type="text" class="form-control" path="category" placeholder="Category" />
							<form:errors path="category" cssClass="error" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input type="text" class="form-control" path="description" placeholder="Description" />
							<form:errors path="description" cssClass="error" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input type="text" class="form-control" path="price" placeholder="Price" />
							<form:errors path="price" cssClass="error" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input type="file" class="form-control" path="image" placeholder="Upload Image" />
						</div>
					</div>
					<c:if test="${ !empty product.model }">
					<div class="form-group">
						<div class="col-sm-10">
							<button type="submit" class="btn btn-default">Edit Product</button>
						</div>
					</div>
					</c:if>
					<c:if test="${ empty product.model }">
					<div class="form-group">
						<div class="col-sm-10">
							<button type="submit" class="btn btn-default">Add Product</button>
						</div>
					</div>
					</c:if>
				</form:form>
			</div>
		</div>
	</div>
</div>
<div class="section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2>Products Enlisted</h2>
				<c:if test="${ !empty productList }">
				<table class="table">
					<thead>
						<tr>
							<th>Product Id</th>
							<th>Brand Name</th>
							<th>Model Name</th>
							<th>Category</th>
							<th>Description</th>
							<th>Price (in Rs.)</th>
							<th colspan="2">Action</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="product" items="${ productList }">
						<tr>
							<td>${ product.productId }</td>
							<td>${ product.brand }</td>
							<td>${ product.model }</td>
							<td>${ product.category }</td>
							<td>${ product.description }</td>
							<td>${ product.price }</td>
							<td>
								<a href="<c:url value='/edit/${ product.productId }' />">Edit</a>
							</td>
							<td>
								<a href="<c:url value='/remove/${ product.productId }' />">Delete</a>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</c:if>
			</div>
		</div>
	</div>
</div>

<%@ include file="common/footer.jsp"%>