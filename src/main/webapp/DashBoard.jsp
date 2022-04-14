<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>DashBoard</title>
</head>
<body>

	<ul class="nav justify-content-end">
		<li><img style="height: 40px; padding: 10px;" alt=""
			src="assets/user-solid.svg">
			<button type="button" class="btn btn-primary" data-bs-toggle="modal"
				data-bs-target="#exampleModal">Profile</button></li>
		<li class="nav-item"><a class="nav-link" href="#">History</a></li>
	</ul>

	<section class="container" style="margin-top: 100px;">
		<div class="container px-4">
			<div class="row gx-5">
				<div class="col">
					<div class="p-3 border bg-light">
						<div class="container">
							<p>Money Transfer</p>
							<div class="row row-cols-2 row-cols-lg-4 g-2 g-lg">
								<div class="col">
									<div class="p-3 border bg-light">
										<img style="height: 60px; padding: 10px;" alt=""
											src="assets/mobile-screen-button-solid.svg">
									</div>
								</div>
								<div class="col">
									<div class="p-3 border bg-light">
										<img style="height: 60px; padding: 10px;" alt=""
											src="assets/building-columns-solid.svg">
									</div>
								</div>
								<div class="col">
									<div class="p-3 border bg-light">
										<img style="height: 60px; padding: 10px;" alt=""
											src="assets/user-solid.svg">
									</div>
								</div>
								<div class="col">
									<div class="p-3 border bg-light">
										<img style="height: 60px; padding: 10px;" alt=""
											src="assets/money-check-solid.svg">
									</div>
								</div>
								<div class="col">
									<div class="p-3 border bg-light">
										<button type="button" class="btn btn-primary"
											data-bs-toggle="modal" data-bs-target="#exampleModal2">To
											Mobile Number</button>
									</div>
								</div>
								<div class="col">
									<div class="p-3 border bg-light">
										<button type="button" class="btn btn-primary"
											data-bs-toggle="modal" data-bs-target="#exampleModal3">To
											Bank / UPI ID</button>
									</div>
								</div>
								<div class="col">
									<div class="p-3 border bg-light">
										<button type="button" class="btn btn-primary"
											data-bs-toggle="modal" data-bs-target="#exampleModal">Transfer
											To self Account</button>
									</div>
								</div>
								<div class="col">
									<div class="p-3 border bg-light">
										<button type="button" class="btn btn-primary"
											data-bs-toggle="modal" data-bs-target="#exampleModal4">Check
											self Balance</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="p-3 border bg-light">
						<div class="container">
							<p>Re-charge / Pay-Bills</p>
							<div class="row row-cols-2 row-cols-lg-4 g-2 g-lg">
								<div class="col">
									<div class="p-3 border bg-light">
										<img style="height: 60px; padding: 10px;" alt=""
											src="assets/mobile-screen-button-solid.svg">
									</div>
								</div>
								<div class="col">
									<div class="p-3 border bg-light">
										<img style="height: 60px; padding: 10px;" alt=""
											src="assets/satellite-dish-solid.svg">
									</div>
								</div>
								<div class="col">
									<div class="p-3 border bg-light">
										<img style="height: 60px; padding: 10px;" alt=""
											src="assets/lightbulb-solid.svg">
									</div>
								</div>
								<div class="col">
									<div class="p-3 border bg-light">
										<img style="height: 60px; padding: 10px;" alt=""
											src="assets/user-graduate-solid.svg">
									</div>
								</div>
								<div class="col">
									<div class="p-3 border bg-light">
										<button type="button" class="btn btn-primary"
											data-bs-toggle="modal" data-bs-target="#exampleModal">Mobile Recharge</button>
									</div>
								</div>
								<div class="col">
									<div class="p-3 border bg-light">
										<button type="button" class="btn btn-primary"
											data-bs-toggle="modal" data-bs-target="#exampleModal">DTH Recharge</button>
									</div>
								</div>
								<div class="col">
									<div class="p-3 border bg-light">
										<button type="button" class="btn btn-primary"
											data-bs-toggle="modal" data-bs-target="#exampleModal">Electricity Bill</button>
									</div>
								</div>
								<div class="col">
									<div class="p-3 border bg-light">
										<button type="button" class="btn btn-primary"
											data-bs-toggle="modal" data-bs-target="#exampleModal">Education fees</button>
									</div>
								</div>					
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



<!-- Profile -->
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Profile</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-3 border-right">
							<div
								class="d-flex flex-column align-items-center text-center p-3 py-5">
								<img class="rounded-circle mt-5" width="100px"
									src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span
									class="font-weight-bold">Komal</span><span
									class="text-black-50">komal vhanmane</span><span> </span>
							</div>
						</div>
						<div class="col-md-5 border-right">
							<div>
								<div class="row mt-2">
									<div class="col-md-6">
										<label class="labels">Name</label><input type="text"
											class="form-control" value="" placeholder="name">
									</div>
									<div class="col-md-6">
										<label class="labels">Surname</label><input type="text"
											class="form-control" value="" placeholder="surname">
									</div>
								</div>
								<div class="row mt-3">
									<div class="col-md-12">
										<label class="labels">Mobile Number</label><input type="text"
											class="form-control" placeholder="enter phone number"
											value="">
									</div>
									<div class="col-md-12">
										<label class="labels">Pincode</label><input type="text"
											class="form-control" placeholder="enter address line 2"
											value="">
									</div>
									<div class="col-md-12">
										<label class="labels">State</label><input type="text"
											class="form-control" placeholder="enter address line 2"
											value="">
									</div>
									<div class="col-md-12">
										<label class="labels">Email ID</label><input type="text"
											class="form-control" placeholder="enter email id" value="">
									</div>

									<button type="button" class="btn btn-primary"
										data-bs-toggle="modal" data-bs-target="#exampleModal1">Logout</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	
	
	
	<!-- Logout -->
	<!-- Modal -->
	<div class="modal fade" id="exampleModal1" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Logout</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<h6>Do you really want to log out ?</h6>
					<form action="">
						<button type="button" class="btn btn-primary">Logout</button>
					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>


<!-- to mobile number -->
	<!-- Modal -->
	<div class="modal fade" id="exampleModal2" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Logout</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<h6>to mobile number</h6>
					<form action="">
						<button type="button" class="btn btn-primary">Logout</button>
					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>


<!-- to account number -->
	<!-- Modal -->
	<div class="modal fade" id="exampleModal3" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Logout</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<h6>to account number</h6>
					<form action="">
						<button type="button" class="btn btn-primary">Logout</button>
					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

<!-- check balance -->
	<!-- Modal -->
	<div class="modal fade" id="exampleModal4" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Logout</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<h6>to check balance</h6>
					<form action="">
						<button type="button" class="btn btn-primary">Logout</button>
					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>