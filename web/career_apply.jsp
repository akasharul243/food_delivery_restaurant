<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	
    <script type="text/javascript">
		var a,b,c;
function show_nos()
{
		a=parseInt(Math.random()*100);
		b=parseInt(Math.random()*100);
		c=a+b;
		s1.innerHTML=a;
		s2.innerHTML=b;
}
function checking()
{
	var ans=s3.value;
	if(c==ans)
		d3.innerHTML="<font color='green'> You are not a robot </font>";
	else
		d3.innerHTML="<font color='red'> Robotic actions found </font>";

}

	</script>
</head>
<body onload="show_nos()">
	<header>
        <h1 style="font-size: 50px;"><span style="font-size: 60px;">AM</span>Restaurant </h1><br>
      
        <p style="font-size:25px; color: white; margin-top:-40px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i>Legendary taste of Chidambaram</i></p>
        
        <a href="login.jsp" style="position: absolute;right: 250px;top: 55px;text-decoration: none;color: yellow; font-size: 25px">Log in</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="Register.jsp" style="position: absolute;right: 100px;top: 55px;text-decoration: none;color: yellow;font-size: 25px">Register</a>
       
    </header><br><br>
    <form>
    	<table cellpadding="10" align="center">
    		<tr><td>Name:</td><td><input type="text" name="t1"> </td></tr>
    		<tr><td>E-mail:</td><td><input type="text" name="t2"> </td></tr>
    		<tr><td>Phone no:</td><td><input type="text" name="t3"> </td></tr>
    		<tr><td>Address:</td><td><input type="textarea" name="t4"> </td></tr>
    		<tr><td>City:</td><td><input type="text" name="t5"> </td></tr>
    		<tr><td>Qualification:</td><td><input type="text" name="t6"> </td></tr>
    		<tr><td>Experience:</td><td> <select><option>0 to 6 months</option><option>6 to 12 months</option><option>1 to 2 years</option><option>more than 2 years</option></select>  </td></tr>
    		<tr><td>Verify you are not a robot</td><td><span id="s1"></span> + <span id="s2"></span> = <input type="text" id="s3" size="2" placeholder="?" style="font-size: 50px; height: 30px;"><input type="button" name="b1" value="check" onclick="checking()"></td></tr>
    	</table>
    </form>

    <input type="submit" name="ss1" id="ss1" value="Submit"  style="height: 40px; width: 150px; background-color:green; position: absolute;right:750px"><br><br>

     <button style="position: absolute;right:750px; height:35px; width: 150px; margin-right: 300px;"><a href="home1,1"> <--Back to Home </a></button><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>