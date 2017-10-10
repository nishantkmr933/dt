/*
 * Create an angular module 'addToCart'
 */
var app = angular.module("addToCart", []);

/*
 * Create angular controller for the cart actions
 */
app.controller("CartController", function($scope, $http) {
	// Store the context path of the rest-app
	var BASE_URL = "http://localhost:8080/myride-rest";
	
	/*
	 * Function to get cart along with items
	 */
	$scope.getCart = function(cartId) {
		$scope.cartId = cartId;
		$scope.refreshCart(cartId);
	};
	
	/*
	 * Function to remove an item from the cart
	 */
	$scope.removeItem = function(itemId) {
		alert('Remove Item From Cart?');
		$http.put(BASE_URL + '/remove/' + itemId).success(function(data) {
			$scope.refreshCart();
		});
	};
	
	/*
	 * Function to calculate the grand total of items in the cart
	 */
	$scope.grandTotal = function() {
		var total = 0;
		for (var i = 0; i < $scope.cart.items.length; i++) {
			total += $scope.cart.items[i].itemTotal;
		}
		
		return total;
	};
	
	/*
	 * Function to reload the items in the cart
	 */
	$scope.refreshCart = function() {
		$http.get(BASE_URL + '/refresh/' + $scope.cartId).success(function(data) {
			$scope.cart = data;
		});
	};
});
