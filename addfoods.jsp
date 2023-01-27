<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String  foodid=request.getParameter("foodid");
String  foodname=request.getParameter("foodname"); 
String  price=request.getParameter("price");
String  rating=request.getParameter("rating");


try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","vamsi2001");
PreparedStatement ps= con.prepareStatement("insert into foods values(?,?,?,?)");
ps.setString(1,foodid);
ps.setString(2,foodname);
ps.setString(3,price);
ps.setString(4,rating);
out.println(rating);
int x=ps.executeUpdate();

if(x!=0)
{  out.println("food item added successful");

   }
  
else{
	out.println("OOPS SOMETHING WENT WRONG");

    }
    
		    
}

catch(Exception e)
{
out.println(e);
e.printStackTrace();
}
%>
<html>
    <body> 
        <img src="images/avatar.png">
    </body>
</html>
