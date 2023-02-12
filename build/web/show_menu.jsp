<%@ include file="top.jsp"%>
<style>
    .link2
    {
    display:block;
    width:250px;
    margin:20px;
    float:left;                                  
    text-decoration:none;
    color:black;
    }
    .link2 img
    {
    border-radius:25px;
    border:1px solid gray;
    }
</style>
    <div style="clear:both;text-align:center;">
        <%
        String cat = request.getParameter("cat");
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM food_database where category='" + cat + "'");
        while(rs.next())
        {
        String pno=rs.getString(1);
        String pname=rs.getString(2);
        String price=rs.getString(6);
        String photo=rs.getString(7);
        out.println("<a href='show_item.jsp?pno="+ pno +"' class='link2'>");
        out.println("<img src='images/"+photo +"' height='150' width='150'> <br> <b>"+ pname +" </b> <br> Rs. "+ price +" </a>" );
        
        }
        
        con.close();
        
        
        
        }
        catch(Exception ee)
        {
        out.println("<h1>Error : " + ee.getMessage() );
        }
        
        %>
    </div>

    <%@ include file="footer.jsp"%>