<%@ include file="top.jsp" %>

<%
String cname = request.getParameter("t1");
String sname = request.getParameter("t2");
String city = request.getParameter("t3");
String dist = request.getParameter("t4");
String contact = request.getParameter("t5");

        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        Statement st = con.createStatement();
        String sid = session.getId();
        String uid = session.getAttribute("username")+"";
         
        PreparedStatement ps=con.prepareStatement("Update users Set name = ?, addr=?, city=?, district=?, contact=?  WHERE uid=?");
        ps.setString(1,cname);
        ps.setString(2,sname);
        ps.setString(3,city);
        ps.setString(4,dist);
        ps.setString(5,contact);
        ps.setString(6,uid);
        ps.executeUpdate();
        con.close();
        response.sendRedirect("yourorders.jsp");
         }
        catch(Exception ee)
        {
            out.println(ee.getMessage());
        }
%> 

