<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>

</head>
<script type="text/javascript">
function disableBackButton()
{
	window.history.forward();
	}
	setTimeout("disableBackButton()",0);
</script>
<style>
* {
	margin: 0;
	padding: 0;
}

.container::before {
	content: "";
	background: url('./assets/virender-singh-hE0nmTffKtM-unsplash.jpg')
		no-repeat center center/cover;
	position: absolute;
	height: 100vh;
	width: 100%;
	z-index: -1;
	opacity: 1;
}
.row{
display:flex;
justify-content:center;
align-items:center;
padding:20%;
}
.col{
width:40%;'

}
.btn{
padding:10px;
border-radius:5px;
background:#7896b2;
border-color:#7896b2;

}
.btn:hover{
background:white;
border-color:white;
}
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
</style>
<body onload="disableBackButton()">

	<div class="container">
		<div class="row">
			<div class="col">
				<div class="p-3 border bg-light">
					
				</div>
			</div>
			<div class="col">
				<div class="p-3 border bg-light">
						<h1>Pay - Re</h1>
						<a>Our aim is to improve the ease of conducting card/digital transactions for an individual. reduce the risks and costs of handling cash at individual level.</a>
				</div>
		<a href="index.jsp"><button class="btn">Login Now</button></a>		
			</div>
		</div>
	</div>
	

</body>
</html>