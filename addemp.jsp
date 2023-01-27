<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String  empid=request.getParameter("empid");
String  empname=request.getParameter("empname"); 
String  empdes=request.getParameter("empdes");
String  empsal=request.getParameter("empsal");


try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","vamsi2001");
PreparedStatement ps= con.prepareStatement("insert into employees values(?,?,?,?)");
ps.setString(1,empid);
ps.setString(2,empname);
ps.setString(3,empdes);
ps.setString(4,empsal);
out.println(empname);
int x=ps.executeUpdate();

if(x!=0)
{  out.println("signup successful");

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
