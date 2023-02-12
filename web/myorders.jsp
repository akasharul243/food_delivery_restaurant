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
<div>

<table  cellspacing="0" cellpadding="30px" width="80%" height="100%" border="5px" align="center">
<tr bgcolor="orange"><th>Order No. </th><th>Date of order </th> <th>Time of Order </th><th>Amount </th><th>Option  </th> </tr>

 

        
       <%
         if(session.getAttribute("username")!=null)
        {
        try         {
        
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        Statement st = con.createStatement();
        String sid = session.getId();
        String uid = session.getAttribute("username") + "";
        ResultSet rs = st.executeQuery("select * from orders where uid='" + uid + "' order by or_no desc");
        out.println("<h2> Welcome " + uid + ",</h2>");
        while(rs.next())      {
            String orno = rs.getString(1);
               String dt = rs.getString(3);
                String tm = rs.getString(4);
                String amt = rs.getString(5);
                %>
 <tr><td><%=orno%> </td><td><%=dt%></td> <td>Rs. <%=tm%></td><td> <%=amt%> no.s </td>
  <td> <a href='showorder.jsp?orno=<%=orno%>'> Show Order </a> | <a href='delorder.jsp?orno=<%=orno%>'> Delete Order </a> </td></tr>
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
