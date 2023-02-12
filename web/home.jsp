<%@ include file="top.jsp"%>
<div style="text-align:center;">
    <% 
    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT DISTINCT category FROM food_database order by category desc");
    while(rs.next())
    {
    String cat=rs.getString(1);
    out.println("<a href='show_menu.jsp?cat="+ cat +"' class='link1'>" + cat + "</a>" );
    }
    con.close();
    }
    catch(Exception ee)
    {
    out.println("<h1>Error : " + ee.getMessage() );
    }
    
    %>
</div>