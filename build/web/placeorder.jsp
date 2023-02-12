<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
        <script>
            var i=0;
            function blink2()
            {
            i++;
            if(i%2==0)
            {
            s1.style.backgroundColor="orange";
            s2.style.backgroundColor="lightgreen";
            }
            else
            {
            s1.style.backgroundColor="lightgray";
            s2.style.backgroundColor="white";
            }
            }
            
        </script>
<body onload="setInterval('blink2()',500);">
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
        <%
        String name="",addr="",city="",dist="",cont="";
                String dt,tm;
               int orderno=1001;
               int total_amount=0;

        String uid = session.getAttribute("username")+"";
        out.println("<h2> Welcome " + uid + ",</h2>");
        
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        Statement st = con.createStatement();
        String sid = session.getId();
         
        ResultSet rs = st.executeQuery("select * from users where uid='" + uid + "'");
        
        if(rs.next())
        {
        name=rs.getString(1);    
        addr=rs.getString(5);
        city=rs.getString(6);
        dist=rs.getString(7);
        cont=rs.getString(8);
        }
       ResultSet rs2 = st.executeQuery("select count(*) from orders");
        
        if(rs2.next())
        { 
                    orderno += rs2.getInt(1);
         }
                  out.println("<h1 style='margin-left:100px;'><span id='s2'>Order Placed! </span> <mark> Order no. " + orderno + " </mark> </h1>");
        }
        catch(Exception ee)
        {
            out.println(ee.getMessage());
        }

        java.util.Date dat = new java.util.Date();
        dt=  (dat.getMonth()+1) + "/" + dat.getDate() + "/" +(dat.getYear()+1900);
        tm = dat.getHours() + ":" + dat.getMinutes() + ":" + dat.getSeconds();
out.println("<h3 align='right'>Date of order : " + dat + "</h3>");        
%> 

<div align="center" style="background-color: rgba(255, 255, 153, 0.6); border-radius: 10px; width: 60%; margin-left: 300px;"> 

<h1>Address to deliver : 
</h1>
<p style="font-size:15px;"><%=name%><br>
	<%=addr%><br><%=city%><br><%=dist%><br>
Ph: <%=cont%><br>
 
</div><br>
 
        
    <h2 align="center"><strong><i>Your Order Information </i></strong></h2>

        <div>

<table  cellspacing="0" cellpadding="30px" width="80%" height="100%" border="5px" align="center">
<tr bgcolor="orange"><th>Product name</th><th>Main Ingredient</th> <th>Price</th><th>Quantity</th><th>Total</th>  </tr>

 


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
                String pname =rs2.getString(2);
                int qty = Integer.parseInt(rs.getString(4));
                int price=Integer.parseInt(rs2.getString(6));
                int tot=qty*price;
                over_qty += qty;
                over_tot += tot;
               
               PreparedStatement ps = con.prepareStatement("insert into bills values(?,?,?,?,?) ");
                ps.setInt(1,orderno);
                ps.setInt(2,prodno);
                ps.setString(3,pname);
                ps.setInt(4,qty);
                ps.setInt(5,price);
               ps.executeUpdate();
                
               Statement st3 = con.createStatement();
                st3.executeUpdate("delete from cart  where session_id='" + sid + "' and pno=" + pno);
                
                
                
                %>
 <tr><td><%=rs2.getString(2)%> </td><td><%=rs2.getString(4)%></td>
                </td><td>Rs. <%=rs2.getString(6)%></td><td> <%=rs.getString(4)%> no.s </td><td>Rs. <%=tot%> </td> </tr>
 
                <%
                }

           }
        
         
        
        %>
 <tr bgcolor="orange"><td colspan="3" align="right"> Number of qty</td><td><span id="ss1"><%=over_qty%> </span></td>
 <td colspan="2"> Rs.<span id="ss2"><%=over_tot%></span>  </td> </tr>
</table><br><br><br>
<h1 style="margin-left:0px;text-align:center;background-color:lightgray;font-size:30px;">
    Delivery charges : Rs. 50 <br> 
    Total Amount to pay : Rs.<%=over_tot+50%> <br> <br>
    
    Your Order will be delivered with in <span id="s1" style="padding:10px;"> 60 minutes </span> <br>
       Give your feedback <a href="feedback.jsp">Rate us...</a>
</h1>
<br><br>
 <%
        //out.println("insert into orders values(orderno,'"+ uid + "','" + dt + "','" + tm+ "'," + over_tot + ")");
        PreparedStatement ps2= con.prepareStatement("insert into orders values(?,?,?,?,?) ");
                ps2.setInt(1,orderno);
                ps2.setString(2,uid);
                ps2.setString(3,dt);
                ps2.setString(4,tm);
                ps2.setInt(5,over_tot);
               ps2.executeUpdate();
               
        con.close();
        }
        catch(Exception ee)
        {
        out.println("<h1>Error : " + ee.getMessage() );
        }
        }
        
        %>

