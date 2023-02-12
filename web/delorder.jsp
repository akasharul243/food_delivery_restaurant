<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
         <%
        String orno = request.getParameter("orno");
        
  
         if(session.getAttribute("username")!=null)
        {
        try         {
        
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        Statement st = con.createStatement();
        st.executeUpdate("delete from orders where or_no="+orno);
        st.executeUpdate("delete from bills where bill_no="+orno);
        con.close();
        out.println("<script>alert('deleted successfully!');</script>");
        out.println("<script>window.location='myorders.jsp';</script>");
        
        //response.sendRedirect("myorders.jsp");
        }
        catch(Exception ee)
        {
        out.println("<h1>Error : " + ee.getMessage() );
        }
        }
        
        %>
    </div>
<%@ include file="footer.jsp"%>
