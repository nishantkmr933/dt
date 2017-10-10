<%@ include file="common/header.jsp"%>

<div class="section panel panel-default">
	<div class="container" ng-app="addToCart">
		<div class="container" ng-controller="CartController"
			ng-init="getCart(${ user.cart.cartId })">
			<table class="table-default">
				<thead>
					<tr>
						<th>Brand</th>
						<th>Model</th>
						<th>Price</th>
						<th>Quantity</th>
						<th>Item Total</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="item in cart.items">
						<td>{{ item.product.brand }}</td>
						<td>{{ item.product.model }}</td>
						<td>{{ item.product.price }}</td>
						<td>{{ item.quantity }}</td>
						<td>{{ item.itemTotal }}</td>
						<td><a href="#" ng-click="removeItem(item.itemId)"> X </a></td>
					</tr>
					<tr>
						<td colspan="2">&nbsp;</td>
						<td colspan="2">Grand Total:</td>
						<td>{{ grandTotal() }}</td>
					</tr>
					<tr>
						<td colspan="6" style="text-align: right;"><a
							href="<c:url value='/placeOrder/${ user.cart.cartId }' />" class="btn btn-success">Checkout</a>
						</td>
					</tr>
				</tbody>
			</table>
			<script src="<c:url value='/resources/scripts/cartController.js' />"></script>
		</div>
	</div>
</div>

<%@ include file="common/footer.jsp"%>
