<%@ include file="common/header.jsp"%>

<div class="container-fluid" style="padding-top: 60px;">
	<div class="row" style="padding-top: 30px;">
		<div class="col-sm-offset-3 col-sm-6">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4 class="text-center">Existing User Login</h4>
				</div>
				<div class="panel-body">
					<form class="form-horizontal">
						<div class="form-group text-right">
							<div class="col-sm-3">
								<label class="label-control">Email</label>
							</div>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="email"
									placeholder="Enter email">
							</div>
						</div>
						<div class="form-group text-right">
							<div class="col-sm-3">
								<label class="label-control">Password</label>
							</div>
							<div class="col-sm-9">
								<input type="password" class="form-control" id="passwd"
									placeholder="Enter password">
							</div>
						</div>
						<div class="form-group text-center">
							<div class="col-sm-6">
								<a class="btn btn-link" href="<c:url value='/register' />">New User?
									Sign Up</a>
							</div>
							<div class="col-sm-6">
								<button type="submit" class="btn btn-info">Sign In</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="col-sm-6"></div>
	</div>
</div>

<%@ include file="common/footer.jsp"%>