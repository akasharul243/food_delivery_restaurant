<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page  import="java.sql.*" %>
<% 
String uid,pwd;

uid= request.getParameter("t1");
pwd= request.getParameter("p1");

//out.println("<h1>name :" + name);
try
  {
  Class.forName("com.mysql.jdbc.Driver");
  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
  Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from users where uid='" + uid + "' and pwd='" + pwd + "'") ;
        if(rs.next())
            {
            response.sendRedirect("home.jsp");
            }
            else
                response.sendRedirect("login.jsp");
       
        con.close();
        out.println("<h1>Successfully Stored</h1>");       

        }
     catch(Exception ee)
     {
         out.println("<h1>Error : " + ee.getMessage() );
     }

%>