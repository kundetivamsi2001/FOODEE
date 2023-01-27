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
PreparedStatement ps= con.prepareStatement("delete from employees where empid=?");
ps.setString(1,empid);

int x=ps.executeUpdate();


if(x!=0)
{
    out.println("Sucessfully deleted..");

}
else{
    out.println("something went wrong..");
}
}
catch(Exception e)
{
    out.println(e);
}