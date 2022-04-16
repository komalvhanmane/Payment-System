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
<link rel="stylesheet" type="text/css" href="css/style.css">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Transaction</title>
</head>
<style>
body {
	font-family: "Roman";
}

table, tr, td {
	border: 1px solid black;
	border-c0llapse: collapse;
}

tr, td {
	background-color: white;
	padding: 20px;
}

.box1 {
	display: flex;
	justify-content: center;
	align-items: center;
}

.box {
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 15%;
	margin-top: 5%;
	background: #7ad7f0;
	padding: 8%;
	border-radius: 10px;
	opacity: 1;
}
</style>
<body>
	<%
	String bool = (String) session.getAttribute("check");
	Customer c = (Customer) session.getAttribute("customer");
	if (c != null) {
		ArrayList<Transaction> lst = (ArrayList<Transaction>) session.getAttribute("TranPh");
	%>

	<%
	if (lst != null) {
		System.out.println(lst.size());
	}
	%>
	<section class="container1">
		<ul class="nav justify-content-end">
			<li class="nav-item"><a style="color: black;" class="nav-link"
				href="index.jsp">Home</a></li>
		</ul>
		<div class="box1">
			<form action="TransactionController">
				<button class="btn btn-outline-info">Click to see
					Transaction</button>
				<input type="hidden" name="acno" value="<%=c.getA().getAcc_num()%>">
			</form>
		</div>
		<div class="box">


			<table class="table">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">Account 1</th>
						<th scope="col">Account 2</th>
						<th scope="col">Type</th>
						<th scope="col">Amount</th>
						<th scope="col">Date & Time</th>
					</tr>
				</thead>
				<tbody>
					<%
					if (lst != null) {
						for (int i = lst.size()-1; i >=0; i--) {
							String typ = "";
							if (lst.get(i).getType() == 1) {
						typ = "Money Transfer";
							} else if (lst.get(i).getType() == 2) {
						typ = "Recharge";
							}else if (lst.get(i).getType() == 3) {
						typ = "DTH Recharge";
							}
							else if(lst.get(i).getType()==4){
								typ="Electricity Bill";
							}
					%>
					<tr>
						<th scope="row"><%=(i + 1)%></th>
						<td><%=lst.get(i).getAcc1()%></td>
						<%if(lst.get(i).getAcc2()==104){ %>
						<td>Airtel Bank Acc</td>
						<%}else if(lst.get(i).getAcc2()==105){ %>
						<td>Jio Bank acc</td>
						<%}else if(lst.get(i).getAcc2()==106){ %>
						<td>Airtel DTH Bank acc</td>
						<%}else if(lst.get(i).getAcc2()==108){ %>
						<td>Dish DTH Bank acc</td>
						<%}else if(lst.get(i).getAcc2()==107){ %>
						<td>SunDirect DTH Bank acc</td>
						<%}else if(lst.get(i).getAcc2()==109){ %>
						<td>TataPlay DTH Bank acc</td>
						<%}else if(lst.get(i).getAcc2()==110){ %>
						<td>D2H DTH Bank acc</td>
						<%}else if(lst.get(i).getAcc2()==111){ %>
						<td>Adani electricity Bank acc</td>
						<%}else if(lst.get(i).getAcc2()==112){ %>
						<td>Best Mumbai Bank acc</td>
						<%}else if(lst.get(i).getAcc2()==113){ %>
						<td>MSEDC Mahavitaran Bank acc</td>
						<%}else if(lst.get(i).getAcc2()==114){ %>
						<td>Tata Power mumbai Bank acc</td>
						<%}else if(lst.get(i).getAcc2()==115){ %>
						<td>Torrent Power Bank acc</td>
						<%}else { %>
						<td><%=lst.get(i).getAcc2()%></td>
						<%} %>
						<td><%=typ%></td>
						<td><%=lst.get(i).getAmount()%></td>
						<td><%=lst.get(i).getDate()%></td>
					</tr>
					<%
					}
					} else{
					%>

				</tbody>
			</table>
			
		</div>
	</section>
	<%
	} }else {
	%>
	<h1>Session Expired</h1>
	<%
	}
	%>

	<!-- logout -->
	<div id="id05" class="modal">
		<span onclick="document.getElementById('id05').style.display='none'"
			class="close" title="Close Modal">&times;</span>
		<form class="modal-content" action="LogoutController">
			<div class="container">
				<h1>Logout</h1>
				<p>Do you really want to logout?</p>
				<hr>
				<div class="clearfix">
					<button type="button"
						onclick="document.getElementById('id05').style.display='none'"
						class="cancelbtn">Cancel</button>
					<button type="submit" class="signupbtn">YES</button>
				</div>
			</div>
		</form>
	</div>




	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>
</html>