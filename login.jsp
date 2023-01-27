<%@ page import="java.sql.*"%>

<%

String email=request.getParameter("email");
String password=request.getParameter("password");


try{
    Connection con=null;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","vamsi2001");
    PreparedStatement ps=con.prepareStatement("select * from SIGNIN where email=? and password=? ");
    ps.setString(1,email);
    ps.setString(2,password);
    ResultSet x=ps.executeQuery();
   if(password.equals("admin"))
   {
    response.sendRedirect("admin.html");
   }
     if(x.next()){
            out.print("login Sucessfully Completed....");
            response.sendRedirect("payment.html");    
    } 
    else{
        out.print("login not Sucessfully Completed....");
        out.print("USERID and PASSWORD are incorrect");
    }
       

}catch(Exception e){
    out.print(e);
}
%>
