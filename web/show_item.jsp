<%@ include file="top.jsp"%>
<style>
    .link2
    {
    display:block;
    width:350px;
    margin:20px;
    float:left;
    }
    	#img1
		{
			height: 300px;
			width: 300px;
			border-radius: 20px;
			border: 1px solid gray;
		}
		#d1
		{
			font-size: 25px;

		}
#pc
{
margin-top:50px;
margin-bottom:80px;
}
</style>
<script type="text/javascript">
		var i=1;
		function plus()
		{
			 i=i+1;
			 if(i>=50)
			 	i=50;
				t1.value=i;
			}
		function minus()
		{
		  i=i-1;
			 if(i<=1)
			 	i=1;
				t1.value=i;
		} 
	</script>
<%
String pno = request.getParameter("pno");
try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM food_database where pno=" + pno );
    if(rs.next())
    {
     
    String pname=rs.getString(2);
    String price=rs.getString(6);
    String photo=rs.getString(7);
    String Main_ing=rs.getString(4);
    String Descrip=rs.getString(5);
    %>
    <div class="container" id="pc">
                <form action="addcart.jsp" method="post">
                    <div class="row">
                    <div class="col-sm-4">
                        <img src="images/<%=photo%>" id="img1">
                    </div>
                    
                    
                    <div class="col-sm-8">
                    <h2><u style="text-transform:uppercase"><%=pname%></u><h2>
                    <p id="d1"><b>Price: Rs.<%=price%></b><br>
                        Main Ingredient: <mark> <%=Main_ing%> </mark> <br>
                    Description: <i> <%=Descrip%> </i> </p><br>
                    <img src="images/minus.jpg" style="height:26px; width:30px; margin-bottom:6px;" onclick="minus()">
                    <input type="text" name="t1" id="t1" value="1" readonly  style="width:45px; height:35px;text-align:center;">
                    <input type="hidden" name="pno" value="<%=pno%>">
                    <img src="images/plus.jpg" style="height:26px; width:30px;margin-bottom:7px;" onclick="plus()"><br>
                    <input type='submit' class="btn btn-success"  value='Add to cart'>
                </form>

			
		</div>
	</div>
</div>
    
    <%
    
    }
    
    con.close();
    
    
    
    }
    catch(Exception ee)
    {
    out.println("<h1>Error : " + ee.getMessage() );
    }
    
    %>

    <%@ include file="footer.jsp"%>