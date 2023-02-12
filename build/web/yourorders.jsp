<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
<%
        String name="",addr="",city="",dist="",cont="";
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        Statement st = con.createStatement();
        String sid = session.getId();
        String uid = session.getAttribute("username")+"";
        ResultSet rs = st.executeQuery("select * from users where uid='" + uid + "'");
        
        if(rs.next())
        {
        name=rs.getString(1);    
        addr=rs.getString(5);
        city=rs.getString(6);
        dist=rs.getString(7);
        cont=rs.getString(8);
        }
        }
        catch(Exception ee)
        {
            out.println(ee.getMessage());
        }

%> 

  <div align="center" style="background-color: rgba(255, 255, 153, 0.6); border-radius: 10px; width: 60%; height: 400px; margin-left: 300px;"><h1>YOUR ORDERS</h1><br>

<h1>Confirm yours address</h1>
<p style="font-size: 25px;"><%=name%><br>
	<%=addr%><br><%=city%><br><%=dist%><br>
Ph: <%=cont%><br>
If you want to change address? &nbsp; &nbsp;<a href="changeaddress.jsp"> Click here</a><br>


</div><br>
<p align="right">
    <a href="placeorder.jsp" class="btn btn-success" style="font-size:25px;margin:5px;"> Place order  </a>
</p>

<%@ include file="footer.jsp" %>