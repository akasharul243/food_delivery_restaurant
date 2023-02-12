<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
<%
String uname = request.getParameter("t1");
String pawd = request.getParameter("p1");
 try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("Select*from users where uid='" + uname + "' and pwd= '" + pawd + "'");
    if(rs.next())
        {
        session.setAttribute("username",uname);
        String loc="index1.jsp";
        if(session.getAttribute("recallpage")!=null)
          loc=session.getAttribute("recallpage")+"";
        response.sendRedirect(loc);
        }
        
        else
            {
            out.println("<script>alert('Invalid username or password');</script>");
            out.println("<script>window.location('login.jsp');</script>");
            }
        
    
  
    con.close();

    }
    catch(Exception ee)
    {
    out.println("<h1>Error : " + ee.getMessage() );
    }
   
    %>

    <%@ include file="footer.jsp"%>
