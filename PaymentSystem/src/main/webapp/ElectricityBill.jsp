<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.*"%>
<%@ page import="java.util.*"%>
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
<title>Electricity Bill</title>
</head>
<style>
body::before{
	content: "";
	background: url('./assets/virender-singh-hE0nmTffKtM-unsplash.jpg')
		no-repeat center center/cover;
	position: absolute;
	height: 100vh;
	width: 100%;
	z-index: -1;
	opacity: 1;
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
	Customer c=null;
	if(!session.isNew()){
		c = (Customer) session.getAttribute("customer");
	}
	String type=(String) session.getAttribute("type");
	String bal = (String) session.getAttribute("insuffibal");
	ElectricityBillatt e=(ElectricityBillatt) session.getAttribute("electbill");
	if (c != null) {
	%>

	<ul class="nav justify-content-end">
		<li class="nav-item"><a style="color: black;" class="nav-link"
			href="index.jsp">Home</a></li>
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
			<input type="submit" value="close" class="btn btn-info">
		</div>
	</form>
	<%}
else if(bal!=null && bal.equals("succes1")){
	%>
	<form action="concelController">
		<div class="alert alert-warning alert-dismissible fade show"
			role="alert">
			<strong> Transaction Successfully Done </strong>
			<input type="submit" value="close" class="btn btn-info">
		</div>
	</form>
	<%}%>
	<section class="container" style="margin-top: 100px;">
		<div class="container px-4">
			<div class="row gx-5">
				<div class="col">
					<div class="p-3 border bg-light">
						<div class="container">
							<p>Electricity Bill</p>
							<div class="row row-cols-2 row-cols-lg-3 g-2 g-lg">
								<div class="col"></div>
								<div class="col">
									<div class="p-3 border bg-light"
										style="background: url(./assets/pack_bag.jpg); color: white; border-radius:20px; margin:10px;">
										<label class="labels">Consumer Number</label><input
											type="text" class="form-control"
											value="<%=e.getCons_nnum() %>" placeholder="name" disabled> <label
											class="labels">Date</label><input type="text"
											class="form-control" value="<%=e.getDate() %>"
											placeholder="name" disabled> <label class="labels">Total
											Bill</label><input type="text" class="form-control"
											value="<%=e.getAmount() %>" placeholder="name" disabled>
										<form action="MobileNoTransferController">
											<input type="hidden" class="form-control"
												value="<%=e.getCons_nnum() %>" placeholder="name"
												name="cons_num"> <input type="hidden"
												class="form-control" value="<%=type%>" placeholder="name"
												name="type"> <input type="hidden"
												class="form-control" value="<%=c.getA().getBank_code()%>"
												name="bank"> <input type="hidden"
												class="form-control" value="<%=c.getPhno()%>" name="phno">
											<%if(type.equals("1")){ %>
											<input type="hidden" class="form-control"
												placeholder="Enter Mobile Number" name="phnor"
												value="9343243356">
											<%}else if(type.equals("2")){ %>
											<input type="hidden" class="form-control"
												placeholder="Enter Mobile Number" name="phnor"
												value="9343243346">
											<%}else if(type.equals("3")){ %>
											<input type="hidden" class="form-control"
												placeholder="Enter Mobile Number" name="phnor"
												value="9343243336">
											<%}else if(type.equals("4")){ %>
											<input type="hidden" class="form-control"
												placeholder="Enter Mobile Number" name="phnor"
												value="9343243326">
											<%}else if(type.equals("5")){ %>
											<input type="hidden" class="form-control"
												placeholder="Enter Mobile Number" name="phnor"
												value="9343243316">
											<%} %>
											<input type="hidden" class="form-control" placeholder=""
												name="amt" value="<%=e.getAmount() %>"> 
											<%int i=e.getStatus(); if(i==0){ %>
											<label
												class="labels">Security Pin</label> <input type="password"
												class="form-control" placeholder="Enter Security Pin"
												name="pin">
											<button type="submit" class="btn btn-outline-danger ">Pay
												Now</button>
											<%}else{ %>
											<button type="button" class="btn btn-outline-success ">Already
												Paid Bill</button>
											<%} %>
										</form>
									</div>
								</div>
								<%
								}
								%>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%

	%>




	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>