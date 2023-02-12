<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
    <div style="height:600px;width:100%">
       <%
        String pno = request.getParameter("pno");
        String qty = request.getParameter("t1");
        if(session.getAttribute("username")==null)
        {
        //out.println("<h1>You have not logged in</h1>");
        session.setAttribute("prodno",pno);
        session.setAttribute("qty",qty);
        session.setAttribute("recallpage","addcart.jsp");
        response.sendRedirect("login.jsp");
        
        }
        else
        {
        //out.println("You have logged in");
        
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        PreparedStatement ps = con.prepareStatement("insert into cart values(?,?,?,?)");
        String uid = session.getAttribute("username")+"";
        String sid = session.getId()+"";
        if(pno==null && qty==null)
          {
        pno = session.getAttribute("prodno")+"";
        qty = session.getAttribute("qty")+"";
        }
        ps.setString(1,uid);
        ps.setString(2,pno);
        ps.setString(3,sid);
        ps.setString(4,qty);
       
        ps.executeUpdate();
        out.println("<h1> Product added in cart. </h1>");
        out.println("<h1> <a href='index1.jsp'>Goto menu</a> / <a href='mycart.jsp'>confirm order</a> </h1>");
        
        
        
        con.close();
        
        }
        catch(Exception ee)
        {
        out.println("<h1>Error : " + ee.getMessage() );
        }
        }
        %>
    </div>
    <%@ include file="footer.jsp"%>
