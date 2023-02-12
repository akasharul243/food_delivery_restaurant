<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
    <div style="height:600px;width:100%">
       <%
        String pno = request.getParameter("pno");
         
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        String uid = session.getAttribute("username")+"";
        String sid = session.getId()+"";
        PreparedStatement ps = con.prepareStatement("delete from cart where pno=? and session_ID=?");
          
        ps.setString(1,pno);
        ps.setString(2,sid);
         
      
        ps.executeUpdate();
        con.close();
        response.sendRedirect("mycart.jsp");
        
        }
        catch(Exception ee)
        {
        out.println("<h1>Error : " + ee.getMessage() );
        
        }
        %>
    </div>
    <%@ include file="footer.jsp"%>
