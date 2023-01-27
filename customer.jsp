
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
    
</style><%@page import="java.sql.*"%>
<%
try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","vamsi2001");
 
String sql="select * from customers";
PreparedStatement stmt=con.prepareStatement(sql);  
ResultSet rs=stmt.executeQuery(); 
%>
<html>
<body bgcolor="#FCFCFC">
<center>
<h1>FOODEE</h1>
<h1> customers portal</h1>
<table border="5" bgcolor="white">
<tr>
<th colspan="5" align="center">CUSTOMER Details</th></tr>
<tr>
<td>NAME</td>
<td>EMAIL</td>
<td>PASSWORD</td>
<td>ADDRESS</td>
<td>MOBILE</td>
</tr>
<%
while(rs.next())
{
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
</tr>
<%
}
%>
</table>
<div class="back"><a href="admin.html"><button>BACK</button></a></div>
<br>
<br>
<% }
catch(Exception e)
{
 out.println(e.toString());
}
%>