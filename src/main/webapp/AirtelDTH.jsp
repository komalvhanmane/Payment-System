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
<title>Airtel DTH Recharge Plans</title>
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
	if (c != null) {
		ArrayList<DTH_RechargePlan> lst = (ArrayList<DTH_RechargePlan>) session.getAttribute("1");
	%>

	<%
	if (lst != null) {
		System.out.println(lst.size());
	}
	%>
	<ul class="nav justify-content-end">
			<li class="nav-item"><a style="color: black;" class="nav-link"
				href="index.jsp">Home</a></li>
		</ul>
	<section class="container" style="margin-top: 100px;">
		<div class="container px-4">
			<div class="row gx-5">
				<div class="col">
					<div class="p-3 border bg-light">
						<div class="container">
							<p>Airtel DTH Re-charge Plans</p>
							<div class="row row-cols-2 row-cols-lg-3 g-2 g-lg">
								<%
								for (int i = 0; i < lst.size(); i++) {
								%>
								<div class="col"">
									<div class="p-3 border bg-light"
										style="background: url(./assets/pack_bag.jpg); color: white;">
										<h1>
											Rs
											<%=lst.get(i).getPrice()%></h1>
										<h3>Airtel DTH plan</h3>
										<ol>
											<li><%=lst.get(i).getValidity() %> days</li>
											
										</ol>
										<form action="MobileNoTransferController">
											<input type="hidden" class="form-control"
												value="<%=c.getA().getBank_code()%>" name="bank"> <input
												type="hidden" class="form-control" value="<%=c.getPhno()%>"
												name="phno"> <input type="hidden"
												class="form-control" placeholder="Enter Mobile Number"
												name="phnor" value="9123456789"> <input
												type="hidden" class="form-control"
												placeholder="Enter Amount" name="amt"
												value="<%=lst.get(i).getPrice()%>"> <label
												class="labels">Security Pin</label> <input type="number"
												class="form-control" placeholder="Enter Security Pin"
												name="pin"> 
											<button type="submit" class="btn btn-outline-danger "
												>Recharge
												Now</button>
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
	}
	%>




	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>