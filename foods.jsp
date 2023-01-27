<style>
    .back{
        padding:20px 50px;
        align-items: center;
        justify-content: center;
        height: 30px;
        width: 60px;
    }
    .back button{
        background-color:#CF9F69;
        width: 100px;
        height: 50px;
        border-radius: 10px;
    }
    .tab table{
        padding: 10px 100px;
        background-color: #CF9F69;
        border-radius: 10px;
        
    }
    .tab table td{
        padding: 5px 60px;
        background-color: #FCFCFC;
        
    }
    
</style>
<%@page import="java.sql.*"%>
<%
try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","vamsi2001");
 
String sql="select * from foods";
PreparedStatement stmt=con.prepareStatement(sql);  
ResultSet rs=stmt.executeQuery(); 
%>
<html>
<body bgcolor="#FCFCFC">
<center>
<h1>FOODEE</h1>
<h1>FOODITEMS Details</h1>
<div class="tab">
<table border="5" bgcolor="white">
<tr>


<td colspan="5" align="center">FOODITEMS Details</td></tr>

<tr>
<td>ID</td>
<td>FOODITEM</td>
<td>PRICE</td>
<td>RATING</td>

</tr>
<%
while(rs.next())
{
%>
<tr>
<td><%=rs.getString("ID")%></td>
<td><%=rs.getString("FOODITEM")%></td>
<td><%=rs.getString("PRICE")%></td>
<td><%=rs.getString("RATING")%></td>

</tr>
<%
}
%>
</table>
</div>
<div class="back"><a href="admin.html"><button>BACK</button></a></div>
<br>
<br>
<% }
catch(Exception e)
{
 out.println(e.toString());
}
%>