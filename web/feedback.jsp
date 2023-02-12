<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<style type="text/css">
			

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
	
    <h1 align="center">Feedback</h1><br>
    <div id="d1" style="width: 500px; height: 700px; background-color: yellowgreen; position: absolute;left: 500px;" align="center">
    	<p>your name*</p><br>
    	<input type="text" name="t1" id="t1"><br>
    	<p>your mail*</p><br>
    	<input type="text" name="t2" id="t2"><br>
    	<p>your mobile no.*</p><br>
    	<input type="text" name="t3" id="t3"><br>
    	<p>your city*</p><br>
    	<input type="text" name="t4" id="t4"><br>
    	<p>comments*</p>
    	<input type="textarea" name="t5" id="t5"><br>
    	<p>Verify you are not a robot*</p>
    	<span id="s1"></span> + <span id="s2"></span> = <input type="text" id="s3" size="2" placeholder="?" style="font-size: 50px;"><input type="button" name="b1" value="check" onclick="checking()">
		<div id="d3"> </div><br><br>

		<input type="submit" name="ss1" id="ss1" value="Submit" style="height: 40px; width: 150px; background-color:green;">
		
    </div>

<%@ include file="footer.jsp" %>
</body></html>