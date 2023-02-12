<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title></title>
	<style type="text/css">
		body
		{
			background-image: url("images/mainimage4.jpg");
			background-size: 100% 100%;
			background-attachment: fixed;
		}
		#d1
		{
	margin-left: 500px;	
			
		}
		header
		{
			color: yellow;
		}
@font-face {
  font-family: naturebeauty;
  src: url('fonts/NatureBeautyPersonalUse-9Y2DK.ttf');
}

	header
		{
			color: yellow;
		}

		header span
		{
			margin: 10px;
			color: blue;
			font-family:naturebeauty;
			letter-spacing: -10px;
			font-size: 50px;
		}

	</style>

</head>
<body>
	<header>
		<h1><span>AM</span>Restaurant </h1><br>
		<p style="font-size:25px; color: white; margin-top:-40px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i>Legendary taste of Chidambaram</i></p>
	</header>

	<div style="width: 600px; height: 350px; background-color: rgba(195, 195, 195, 0.8);" id="d1">
		<h1 align="center" ><i>LOGIN </i></h1>
                <form id="f1" name="f1" action="login_confirm.jsp">
                    <table align="center" style="font-size: 25px;">
                        <tr><td>Login ID:</td><td><input type="text" name="t1" id="t1"></td></tr>
                        <tr><td>Password:</td><td><input type="password" name="p1" id="p1"></td></tr>
                    </table><br><br>
                    <div align="center"><input type="submit" name="s1" id="s1" value="Login" style="width:80px; height:40px; background-color:lightgreen; border-radius: 5px; border-color:lightgreen;">&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="reset" name="b1" id="b1" value="cancel" style="width:80px; height:40px; background-color:orange; border-radius:5px; border-color: orange;"></div>
                    <p align="center" style="font-size:20px;">If don't have account?<a href="register.jsp">Register</a></p>
                    
                </form>       

	</div>
		
	
</body>
</html>