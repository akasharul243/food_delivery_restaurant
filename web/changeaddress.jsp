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



     <div  style="background-color: rgba(255, 255, 153, 0.6); border-radius: 10px; width: 60%; height: 400px; margin-left: 250px;">
     	<form name="f1" action="confirm_address.jsp">
     	<table align="center" cellpadding="10" cellspacing="0" style="width:600px; height:300px; font-size:25px;">
      	<tr><td>Name:</td><td><input type="text" name="t1" id="t1" value="<%=name%>"></td></tr>
     	<tr><td>Street Name:</td><td><input type="text" name="t2" id="t2"  value="<%=addr%>"></td></tr>
     	<tr><td>City:</td><td><input type="text" name="t3" id="t3" value="<%=city%>"></td></tr>
     	<tr><td>District:</td><td><input type="text" name="t4" id="t4"  value="<%=dist%>"></td></tr>
     	<tr><td>Contact no:</td><td><input type="text" name="t5" id="t5" value="<%=cont%>"></td></tr>
     	</table><br>
     <input type="submit" name="s1" id="s1" value="Submit" style="background-color: green; width:100px; height:35px; font-size:25px; color: white; margin-left:510px;border-radius: 10px;">

     </form>

     </div>

 <%@ include file="footer.jsp" %>