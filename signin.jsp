<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String  name=request.getParameter("name");
String  email=request.getParameter("email"); 
String  password=request.getParameter("password");
String  address=request.getParameter("address");
String  mobile=request.getParameter("mobile");

try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","vamsi2001");
PreparedStatement ps= con.prepareStatement("insert into SIGNIN values(?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,password);
ps.setString(4,address);
ps.setString(5,mobile);
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
