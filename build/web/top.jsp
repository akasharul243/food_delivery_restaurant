<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page  import="java.sql.*" %>
<!DOCTYPE html>
  <html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="bootstrap-5.2.2-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<title></title>
        <style type="text/css">
            @font-face {
            font-family: naturebeauty;
            src: url('fonts/NatureBeautyPersonalUse-9Y2DK.ttf');
            }
            body
            {
            background:url("images/bg1.jpg");
            background-size: 100% 100%;
            }
            
            header
            {
            background-image: url("images/mainimage4.jpg");
            background-size: 100% 100%;
            color: yellow;
            height: 300px;
            }
            header span
            {
            margin: 10px;
            color: blue;
            font-family:naturebeauty;
            letter-spacing: -10px;
            font-size: 60px;
            }
            footer
                {
        	background-color: black;
        	height: 400px;
        	width:100% ;
                }
            .col-sm-4
               {
               color: gray;
               font-size: 20px;   
               }
            #dd1
               {
               font-size: 20px;
               color: gray;
               }
        </style>
  </head>
<body>
    
     <header>
        <h1 style="font-size: 50px;"><span style="font-size: 60px;">AM</span>Restaurant </h1><br>
      
        <p style="font-size:25px; color: white; margin-top:-40px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i>Legendary taste of Chidambaram</i></p>
        
       <%
        if(session.getAttribute("username")==null)
            {
            %>
            <a href="login.jsp" style="position: absolute;right: 250px;top: 55px;text-decoration: none;color: yellow; font-size: 25px">Login</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%
        }
        else
            {
            %>
            <p align="right">
                <a href="index.jsp" style="position: absolute;right: 550px;top: 55px;text-decoration: none;color: yellow; font-size: 25px">Log out</a> 
                <a href="mycart.jsp" style="position: absolute;right: 350px;top: 55px;text-decoration: none;color: yellow;font-size: 25px">Bucket List</a>
                <a href="myorders.jsp" style="position: absolute;right: 200px;top: 55px;text-decoration: none;color: yellow;font-size: 25px">Myorders</a>
                <a href="index.jsp" style="position: absolute;right: 100px;top: 55px;text-decoration: none;color: yellow;font-size: 25px">Home</a>
            </p>
       <%
       }
        %>
       
    </header>
    