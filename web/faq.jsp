<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<title></title>
	
</head>
<body>

    
    <div class="container">
  <div class="row" style="height: 50px;">
    <div class="col-sm-6">

    <details>
    <summary style="text-decoration:underline;cursor: help;">Can I edit my order?</summary>
    <p>Your order can be edited before it reaches the restaurant.</p></details>
</div>


	
	<div class="col-sm-6">
    <details>
    <summary style="text-decoration:underline;cursor: help;">Do you charge for delivery?</summary>
    <p>Delivery fee varies (if any) is specified on the 'Review Order' page. </p></details>
</div>
</div><br>

	<div class="row" style="height: 50px;">
	<div class="col-sm-6">
    <details>
    <summary style="text-decoration:underline;cursor: help;">What are your delivery hours?</summary>
    <p>It depends on availability of suppliers from restaurant.</p></details>
</div>

	<div class="col-sm-6">
    <details>
	<summary style="text-decoration:underline;cursor: help;">Can I order from any location?</summary>
	<p> You can order from any place by providing currect delivery address.</p></details>
</div>
</div><br>


	<div class="row" style="height: 50px;">
		<div class="col-sm-6">
	<details>
	<summary style="text-decoration:underline;cursor: help;">What kind of payment options available?</summary>
	<p>We have only cash on delivery payment method.</p></details>
</div>

	<div class="col-sm-6">
	<details>
	<summary style="text-decoration:underline;cursor: help;">How long will it take to deliver my order?</summary>
	<p>Delivery time depends on the merchant, distance and weather conditions. </p></details>
</div>
</div><br>
</div>

<button style="position: absolute;right:750px; height:35px; width: 150px;"><a href="home1,1"> <--Back to Home </a></button><br><br>

 <%@ include file="footer.jsp" %>   
</body>
</html>