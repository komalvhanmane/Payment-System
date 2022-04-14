<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.*"%>
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
<title>Payment Application</title>
</head>
<style>
body {
	background: #7ad7f0;
	font-family: "Roman";
}

.box {
	display: flex;
	justify-content: center;
	align-items: center;
	background: white;
	margin-left: 25%;
	margin-right: 25%;
	padding: 5%;
	border-radius: 10px;
}

.container1  button {
	width: 150px;
}

.centre {
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 100px;
}

button {
	background-color: #7ad7f0;
}

modal-body input {
	width: 300px;
}
</style>
<body>
	<%
	String bool = (String) session.getAttribute("check");
	Customer c = (Customer) session.getAttribute("customer");
	String bal = (String) session.getAttribute("insuffibal");
	if (bool == null) {
	%>
	<%
	String bool1 = (String) session.getAttribute("check2");
	if (bool1 != null) {
	%>
	<form action="concelController">
		<div class="alert alert-warning alert-dismissible fade show"
			role="alert">
			<strong>There was an error with your PhNo/Pin/Bank
				combinations .</strong> Please try again
			<button type="submit" class="btn-close" data-bs-dismiss="alert"
				aria-label="Close"></button>
		</div>
	</form>
	<%
	}
	%>

	<div class="h-primary centre">
		<h1>Welcome to Payment</h1>
	</div>
	<div class="box">
		<form action="LoginController">


			<!-- Phone Number -->
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Phone
					Number </label> <input name="phno" type="text" class="form-control"
					id="exampleInputEmail1" required>
			</div>

			<!-- Pin -->
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Pin</label> <input
					name="pin" type="password" class="form-control"
					id="exampleInputPassword1" required>
			</div>

			<!-- Bank -->
			<label for="exampleInputEmail1" class="form-label">Select
				your Bank </label>
			<div class="container1">
				<div class="row">
					<div class="col">
						<button name="bank" value="1010" type="submit"
							class="btn btn-outline-primary ">Axis Bank</button>
					</div>
					<div class="col">
						<button name="bank" value="1011" type="submit"
							class="btn btn-outline-primary  ">HDFC Bank</button>
					</div>
					<div class="col">
						<button name="bank" value="1012" type="submit"
							class="btn btn-outline-primary  ">ICICI Bank</button>
					</div>
				</div>
			</div>
			<div class="container1">
				<div class="row">
					<div class="col">
						<button name="bank" value="1013" type="submit"
							class="btn btn-outline-primary ">State Bank</button>
					</div>
					<div class="col">
						<button name="bank" value="1014" type="submit"
							class="btn btn-outline-primary  ">Punjab Bank</button>
					</div>
					<div class="col">
						<button name="bank" value="1015" type="submit"
							class="btn btn-outline-primary ">Bank Of Baroda</button>
					</div>
				</div>
			</div>
		</form>
	</div>
	<%
	} else if (c != null) {
	%>
	<ul class="nav justify-content-end">
		<li><img style="height: 40px; padding: 10px;" alt=""
			src="assets/user-solid.svg">
			<button type="button" class="btn btn-outline-primary"
				data-bs-toggle="modal" data-bs-target="#exampleModal">Profile</button></li>
		<li class="nav-item"><a style="color: black;" class="nav-link"
			href="Transaction.jsp">History</a></li>
	</ul>
	<% 
if(bal!=null && bal.equals("innsuff")){%>
	<form action="concelController">
		<div class="alert alert-warning alert-dismissible fade show"
			role="alert">
			<strong>There was an error while transaction Reasons can be
				<br> 1. Insufficient Balance <br> 2. Incorrect Mobile
				Number/Amount
			</strong> Please try again
			<button type="submit" class="btn-close" data-bs-dismiss="alert"
				aria-label="Close"></button>
		</div>
	</form>
	<%}
else if(bal!=null && bal.equals("succes1")){
	%>
	<form action="concelController">
		<div class="alert alert-warning alert-dismissible fade show"
			role="alert">
			<strong> Transaction Successfully Done </strong>
			<button type="submit" class="btn-close" data-bs-dismiss="alert"
				aria-label="Close"></button>
		</div>
	</form>
	<%}%>
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
										<button type="button" class="btn btn-outline-primary "
											data-bs-toggle="modal" data-bs-target="#exampleModal2">To
											Mobile Number</button>
									</div>
								</div>
								<div class="col">
									<div class="p-3 border bg-light">
										<button type="button" class="btn btn-outline-primary "
											data-bs-toggle="modal" data-bs-target="#exampleModal6">To
											Bank / UPI ID</button>
									</div>
								</div>
								<div class="col">
									<div class="p-3 border bg-light">
										<button type="button" class="btn btn-outline-primary "
											data-bs-toggle="modal" data-bs-target="#exampleModal">Transfer
											To self Account</button>
									</div>
								</div>
								<div class="col">
									<div class="p-3 border bg-light">
										<button type="button" class="btn btn-outline-primary "
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
										    <input type="hidden" value="<%=c.getPhno()%>" name="phno">
												<button type="button" class="btn btn-outline-primary "
											data-bs-toggle="modal" data-bs-target="#exampleModal5">Mobile
											Recharge</button>

									</div>
								</div>
								<div class="col">
									<div class="p-3 border bg-light">
										<button type="button" class="btn btn-outline-primary "
											data-bs-toggle="modal" data-bs-target="#exampleModal7">DTH
											Recharge</button>
									</div>
								</div>
								<div class="col">
									<div class="p-3 border bg-light">
										<button type="button" class="btn btn-outline-primary "
											data-bs-toggle="modal" data-bs-target="#exampleModal8">Electricity
											Bill</button>
									</div>
								</div>
								<div class="col">
									<div class="p-3 border bg-light">
										<button type="button" class="btn btn-outline-primary "
											data-bs-toggle="modal" data-bs-target="#exampleModal9">Education
											fees</button>
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
									class="font-weight-bold"> <%=c.getFname()%> <%=c.getLname()%></span><span>
								</span>
							</div>
						</div>
						<div class="col border-right">
							<div>
								<div class="row mt-2">
									<div class="col-md-6">
										<label class="labels">Name</label><input type="text"
											class="form-control" value="<%=c.getFname()%>"
											placeholder="name">
									</div>
									<div class="col-md-6">
										<label class="labels">Surname</label><input type="text"
											class="form-control" value="<%=c.getLname()%>"
											placeholder="surname">
									</div>
								</div>
								<div class="row mt-3">
									<div class="col-md-12">
										<label class="labels">Mobile Number</label><input type="text"
											class="form-control" placeholder="enter phone number"
											value="<%=c.getPhno()%>">
									</div>
									<div class="col-md-12">
										<label class="labels">Pincode</label><input type="text"
											class="form-control" placeholder="enter address line 2"
											value=" <%=c.getPincode()%>">
									</div>
									<div class="col-md-12">
										<label class="labels">State</label><input type="text"
											class="form-control" placeholder="enter address line 2"
											value="<%=c.getState()%>">
									</div>
									<div class="col-md">
										<label class="labels">Email ID</label><input type="text"
											class="form-control" placeholder="enter email id"
											value="<%=c.getEmail()%>">
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
					<form action="LogoutController">
						<input type="submit" class="btn btn-primary" value="Logout">
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
					<h5 class="modal-title" id="exampleModalLabel">To Mobile Number</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="MobileNoTransferController">
						<input type="hidden" class="form-control"
							value="<%=c.getA().getBank_code()%>" name="bank"> <input
							type="hidden" class="form-control" value="<%=c.getPhno()%>"
							name="phno"> <label class="labels">Mobile Number
						</label> <input type="text" class="form-control"
							placeholder="Enter Mobile Number" name="acnor" required> <label
							class="labels">Amount</label> <input type="number"
							class="form-control" placeholder="Enter Amount" name="amt" required>
						<label class="labels">Security Pin</label> <input type="number"
							class="form-control" placeholder="Enter Security Pin" name="pin" required>
						<input type="submit" class="btn btn-primary" value="submit">
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
	<div class="modal fade" id="exampleModal6" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">To Bank Account</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="AccountTransfer">
						<input type="hidden" class="form-control"
							value="<%=c.getA().getBank_code()%>" name="bank"> <input
							type="hidden" class="form-control" value="<%=c.getPhno()%>"
							name="phno"> <label class="labels">Account Number
						</label> <input type="text" class="form-control"
							placeholder="Enter Account Number" name="acnor" required> <label
							class="labels">Amount</label> <input type="number"
							class="form-control" placeholder="Enter Amount" name="amt" required>
						<label class="labels">Security Pin</label> <input type="number"
							class="form-control" placeholder="Enter Security Pin" name="pin" required>
						<input type="submit" class="btn btn-primary" value="submit">
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>


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
					<h5 class="modal-title" id="exampleModalLabel">Account Balance</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<label class="labels">Account Balance </label>
					<h2><%=c.getA().getAcc_bal() %></h2>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
<!-- Recharge -->
<div class="modal fade" id="exampleModal5" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Mobile Recharge</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="RechargePlanShowerController">
					<input
							type="hidden" class="form-control" value="<%=c.getPhno()%>"
							name="phno"> <label class="labels">Mobile Number
						</label> <input type="text" class="form-control"
							placeholder="Enter Mobile Number" name="phnor" required> 
						<input type="submit" class="btn btn-primary" value="submit">
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

<!--DTH Recharge-->
<div class="modal fade" id="exampleModal7" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">DTH Recharge</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="DTHPlanShowerController">
					<input
							type="hidden" class="form-control" value="<%=c.getPhno()%>"
							name="phno"> <label class="labels">Subscribed ID
						</label> <input type="text" class="form-control"
							placeholder="Enter Subscribed Number" name="sid" required> 
							<select name="type">
							<option value="1">Airtel Digital TV</option>
							<option value="2">Dish TV</option>
							<option value="3">Sun Direct</option>
							<option value="4">Tata Play(Formarly TataSky)</option>
							<option value="5">D2H</option>
							</select>
						<input type="submit" class="btn btn-primary" value="submit">
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<%
	}
	%>




	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>