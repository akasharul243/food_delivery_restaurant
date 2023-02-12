<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
<style type="text/css">
         table
        {
        	font-size: 20px;
        	color: black;
        	border-color: orange;
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
        td
        {
        padding:10px;
        }
	</style>
       
    <div style="height:600px;width:100%">
        
        <h2 align="center"><strong><i>My Orders</i></strong></h2>
        <%
        String orno = request.getParameter("orno");
        
        %>
<div>
    <h1> Bill no. : <%=orno%> </h1>
<table  cellspacing="0" cellpadding="30px" width="80%" height="100%" border="5px" align="center">
<tr bgcolor="orange"><th>Product no. </th><th> Prod.Name </th> <th>qty </th><th>Price </th> </tr>

 

        
       <%
         if(session.getAttribute("username")!=null)
        {
        try         {
        
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        Statement st = con.createStatement();
         String uid = session.getAttribute("username") + "";
        ResultSet rs = st.executeQuery("select * from bills where bill_no=" + orno  );
        out.println("<h2> Welcome " + uid + ",</h2>");
        while(rs.next())      {
            String t1 = rs.getString(2);
               String t2 = rs.getString(3);
                String t3 = rs.getString(4);
                String t4 = rs.getString(5);
                %>
 <tr><td><%=t1%> </td><td><%=t2%></td> <td>Rs. <%=t3%></td><td> <%=t4%> no.s </td>
</tr>
         <%        }
        con.close();
        %>
</table><br><br><br>

 <%
        }
        catch(Exception ee)
        {
        out.println("<h1>Error : " + ee.getMessage() );
        }
        }
        
        %>
    </div>
<%@ include file="footer.jsp"%>
