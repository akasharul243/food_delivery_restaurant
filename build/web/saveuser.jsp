<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page  import="java.sql.*" %>
<% 
String name,uid,pwd,mail,address,city,district,contact;
name= request.getParameter("t1");
uid= request.getParameter("t2");
pwd= request.getParameter("p1");
mail= request.getParameter("t3");
address= request.getParameter("t4");
city= request.getParameter("t5");
district= request.getParameter("t6");
contact= request.getParameter("t7");

//out.println("<h1>name :" + name);
try
  {
  Class.forName("com.mysql.jdbc.Driver");
  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
  PreparedStatement ps = con.prepareStatement("insert into users values(?,?,?,? ,?,?,?,?)");
       ps.setString(1,name);
        ps.setString(2,uid);
        ps.setString(3,pwd);
        ps.setString(4,mail);
        ps.setString(5,address);
        ps.setString(6,city);
        ps.setString(7,district);
        ps.setString(8,contact);
      ps.executeUpdate();
        con.close();
        out.println("<h1>Successfully Stored</h1>");
       

        }
     catch(Exception ee)
     {
         out.println("<h1>Error : " + ee.getMessage() );
     }

%>