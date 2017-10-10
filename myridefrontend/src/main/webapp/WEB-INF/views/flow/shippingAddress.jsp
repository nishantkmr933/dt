<%@include file="../common/header.jsp" %>

<div class="panel panel-default">
<div class="container">
<form:form modelAttribute="order.cart.user">
<div class="panel-heading" style="text-align: center;">
<h2>Shipping Address</h2>
</div>

<div class="form-group">
<label class="control-label">Address Line 1:</label>
<form:input path="shippingAddress.line1" class="form-control" placeholder="Address Line 1"/>
</div>

<div class="form-group">
<label class="control-label">Address Line 2:</label>
<form:input path="shippingAddress.line2" class="form-control" placeholder="Address Line 2"/>
</div>

<div class="form-group">
<label class="control-label">City:</label>
<form:input path="shippingAddress.city" class="form-control" placeholder="City"/>
</div>

<div class="form-group">
<label class="control-label">State:</label>
<form:input path="shippingAddress.state" class="form-control" placeholder="State"/>
</div>

<div class="form-group">
<label class="control-label">Zip Code:</label>
<form:input path="shippingAddress.zipCode" class="form-control" placeholder="Postal Code"/>
</div>

<div class="form-group">
<label class="control-label">Mobile:</label>
<form:input path="shippingAddress.mobile" class="form-control" placeholder="Mobile No."/>
</div>

<div class="form-group">
<a class="btn btn-default">Back</a>
<input class="btn btn-success" type="submit" name="_eventId_shippingAddressChecked" value="Next">
<input type="hidden" name="_flowExecutionKey" value="${ flowExecutionKey }">
</div>

</form:form>
</div>
</div>
<%@include file="../common/footer.jsp" %>
