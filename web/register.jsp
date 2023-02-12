<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style type="text/css">
		body
		{
			background-image: url("images/mainimage4.jpg");
			background-size: 100% 100%;
			background-attachment: fixed;
		}
		header
		{
			color: yellow;
		}
@font-face {
  font-family: naturebeauty;
  src: url('fonts/NatureBeautyPersonalUse-9Y2DK.ttf');
}

		header span
		{
			margin: 10px;
			color: blue;
			font-family:naturebeauty;
			letter-spacing: -10px;
			font-size: 60px;
		}
		#d1
		{
			margin-left: 500px;
		}



	</style>
	
</head>
<body>
<header>
		<h1><span>AM</span>Restaurant </h1>
		<p style="font-size:25px; color: white; margin-top:-40px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i>Legendary taste of Chidambaram</i></p>
	</header>
	<div style="width: 600px; height: 550px; background-color: rgba(195, 195, 195, 0.8);" id="d1">
		<h1 align="center" ><i> NEW REGISTRATION </i></h1>
		<table align="center" style="font-size: 25px;">
			<tr><td>Enter your Name:</td><td><input type="text" name="t1" id="t1"></td></tr>
			<tr><td>Enter User ID:</td><td><input type="text" name="t2" id="t2"></td></tr>
			<tr><td>Enter Password:</td><td><input type="password" name="p1" id="p1"></td></tr>
			<tr><td>Re-enter password:</td><td><input type="password" name="p2" id="p2"></td></tr>
			<tr><td>Enter Address:</td><td><input type="textfield" name="t3" id="t3"></td></tr>
			<tr><td>Enter City:</td><td><input type="text" name="t4" id="t4"></td></tr>
			<tr><td>Enter District:</td><td><input type="text" name="t5" id="t5"></td></tr>
			<tr><td>Contact Number:</td><td><input type="text" name="t6" id="t6"></td></tr>
		</table><br><br>
		<div align="center"><input type="submit" name="s1" id="s1" value="Submit" style="width:80px; height:40px; background-color:lightgreen; border-radius: 5px; border-color:lightgreen;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="button" name="b1" id="b2" value="Reset" style="width:80px; height:40px; background-color:orange; border-radius:5px; border-color: orange;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="button" name="b2" id="b2" value="Cancel" style="width:80px; height:40px; background-color:red; border-radius:5px; border-color: red;"></div>
		<span id="s1"></span>

	</div>

</body>
</html>


