<%@ include file="common/header.jsp"%>

<!-- jumbotron -->
<div class="container-fluid" id="thumbnails">
	<!-- image carousel begins -->
	<div id="img-carousel" class="carousel slide" data-ride="carousel"
		data-interval="3000">
		<!-- carousel indiactors begins -->
		<ol class="carousel-indicators">
			<li class="active" data-target="#img-carousel" data-slide-to="0"></li>
			<li data-target="#img-carousel" data-slide-to="1"></li>
			<li data-target="#img-carousel" data-slide-to="2"></li>
			<li data-target="#img-carousel" data-slide-to="3"></li>
			<!-- <li data-target="img-carousel" data-slide-to="2"></li> -->
		</ol>
		<!-- carousel indicators ends -->
		<!-- carousel inner begins -->
		<div class="carousel-inner">
			<!-- carousel items -->
			<div class="item active">
				<img
					src="<c:url value='/resources/images/carousel/bajaj-v-ocean-blue2.jpg' />"
					width="100%" height="100%">
				<div class="carousel-caption">
					<h2>Bajaj V Ocean Blue</h2>
				</div>
			</div>
			<div class="item">
				<img
					src="<c:url value='/resources/images/carousel/pulsar150-banner.jpg' />"
					width="100%" height="100%">
				<div class="carousel-caption">
					<h2>Bajaj Pulsar 150</h2>
				</div>
			</div>
			<div class="item">
				<img
					src="<c:url value='/resources/images/carousel/pulsar220-banner.jpg' />"
					width="100%" height="100%">
				<div class="carousel-caption">
					<h2>Bajaj Pulsar 220</h2>
				</div>
			</div>
			<div class="item">
				<img
					src="<c:url value='/resources/images/carousel/pulsar220f.jpg' />"
					width="100%" height="100%">
				<div class="carousel-caption">
					<h2>Bajaj Pulsar 220F</h2>
				</div>
			</div>
		</div>
		<!-- carousel inner ends -->
		<!-- carousel controls begins -->
		<a class="left carousel-control" href="#img-carousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span>
		</a> <a class="right carousel-control" href="#img-carousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span>
		</a>
		<!-- carousel controls ends -->
	</div>
	<!-- image carousel ends -->
	<!-- image thumbnails begins -->
	<div class="row text-center"
		style="margin-top: 20px; margin-bottom: 20px;">
		<div class="panel panel-info">
			<div class="panel-heading text-center">Shop By Brand</div>
			<div class="panel-body text-center">
				<div class="row">
					<div class="col-sm-3">
						<a href="<c:url value='/products/bajaj' />" class="img-thumbnail">
							<img
							src="<c:url value='/resources/images/logo/Bajaj-Auto-Logo.jpg' />"
							width="150" height="150">
						</a>
					</div>
					<div class="col-sm-3">
						<a href="<c:url value='/products/hero' />" class="img-thumbnail">
							<img
							src="<c:url value='/resources/images/logo/Hero-MotoCorp-Logo.jpg' />"
							width="150" height="150">
						</a>
					</div>
					<div class="col-sm-3">
						<a href="<c:url value='/products/honda' />" class="img-thumbnail">
							<img
							src="<c:url value='/resources/images/logo/honda-motorcycle-racing-logo-wallpaper-1.jpg' />"
							width="150" height="150">
						</a>
					</div>
					<div class="col-sm-3">
						<a href="<c:url value='/products/mahindra' />"
							class="img-thumbnail"> <img
							src="<c:url value='/resources/images/logo/mahindra-2-wheelers-logo.jpg' />"
							width="150" height="150">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- image thumbnails ends -->
	<div class="row text-center"
		style="margin-top: 20px; margin-bottom: 20px;">
		<div class="panel panel-info">
			<div class="panel-heading text-center">Shop By Price</div>
			<div class="panel-body text-center">
				<div class="row">
					<div class="col-sm-3">
						<a href="#"
							class="img-thumbnail"><img alt="Bike Image"
							src="<c:url value='/resources/images/Bike-Img.png' />"
							width="150" height="150"><br> &lt; Rs. 49,999 </a>
					</div>
					<div class="col-sm-3">
						<a href="#" class="img-thumbnail">
							<img alt="Bike Image"
							src="<c:url value='/resources/images/bike-img2.jpg' />"
							width="150" height="150"><br> Rs. 50,000 - Rs. 74,999
						</a>
					</div>
					<div class="col-sm-3">
						<a href="#" class="img-thumbnail">
							<img alt="Bike Image"
							src="<c:url value='/resources/images/bike-img2.jpg' />"
							width="150" height="150"><br> Rs. 75,000 - Rs. 99,999
						</a>
					</div>
					<div class="col-sm-3">
						<a href="#" class="img-thumbnail">
							<img alt="Bike Image"
							src="<c:url value='/resources/images/bike-img3.jpg' />"
							width="150" height="150"><br> &gt; Rs. 1,00,000 
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="common/footer.jsp"%>

