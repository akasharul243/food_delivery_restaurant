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
        
        <h2 align="center"><strong><i>My Cart</i></strong></h2>
<div>

<table  cellspacing="0" cellpadding="30px" width="80%" height="100%" border="5px" align="center">
<tr bgcolor="orange"><th>Product name</th><th>Main Ingredient</th> <th>Price</th><th>Quantity</th><th>Total</th> <th>Options</th> </tr>

 

        
       <%
         if(session.getAttribute("username")!=null)
        {
         
        
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        Statement st = con.createStatement();
        String sid = session.getId();
        ResultSet rs = st.executeQuery("select * from cart where session_id='" + sid + "'");
        
        String uid = session.getAttribute("username")+"";
        out.println("<h2> Welcome " + uid + ",</h2>");
        int over_tot=0;
        int over_qty=0;
           while(rs.next()) 
            {
            String pno = rs.getString(2);
            Statement st2 = con.createStatement();
            ResultSet rs2= st2.executeQuery("select * from food_database where pno=" + pno);
            if(rs2.next())
                {
                int prodno= Integer.parseInt(rs2.getString(1));
                int qty = Integer.parseInt(rs.getString(4));
                int price=Integer.parseInt(rs2.getString(6));
                int tot=qty*price;
                over_qty += qty;
                over_tot += tot;
                %>
 <tr><td><%=rs2.getString(2)%> </td><td><%=rs2.getString(4)%></td>
                </td><td>Rs. <%=rs2.getString(6)%></td><td> <%=rs.getString(4)%> no.s </td><td>Rs. <%=tot%> </td> <td> <a href='remove.jsp?pno=<%=prodno%>'> Remove </a> </td></tr>
 
                <%
                }

           }
        
        con.close();
        
        %>
 <tr bgcolor="orange"><td colspan="3" align="right"> Number of qty</td><td><span id="ss1"><%=over_qty%> </span></td>
 <td colspan="2"> Rs.<span id="ss2"><%=over_tot%></span>  </td> </tr>
</table><br><br><br>
<div align="right" style="margin-right:150px;">
  <a href="yourorders.jsp" class="btn btn-success"> Buy Now </a>&nbsp;&nbsp;
<a href="javascript:history.go(-1);" class="btn btn-danger">  Cancel </a></div><br><br>
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
