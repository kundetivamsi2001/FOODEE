<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String  name=request.getParameter("name");
String  email=request.getParameter("email"); 
String  pin=request.getParameter("pin");
String  mode=request.getParameter("mode");
String  card=request.getParameter("card");
String  cvv=request.getParameter("cvv");
String  carddate=request.getParameter("carddate");



try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","vamsi2001");
PreparedStatement ps= con.prepareStatement("insert into transactions values(?,?,?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,pin);
ps.setString(4,mode);
ps.setString(5,card);
ps.setString(6,cvv);
ps.setString(7,carddate);
out.println("hello");
int x=ps.executeUpdate();
out.println(x);

if(x!=0)
if(x!=0)
{  %> <body> 
    <div class="sig"><center><p>PAYMENT SUCCESSFUL.....!</p></center></div>
    <div class="imag"><center><img src="images/deliver.jpg"></center></div>
    <div class="sig"><center><p>YOUR ORDER IS ON THE WAY...</p></center></div>
    <div class="back"><center><a href="mainpage.html"><button>BACK</button></a></center></div>  
</body><%

   }
  
else{%>
    <body> 
        <div class="sig"><center><p>OOPS SOMETHING WRONG.....!</p></center></div>
        <div class="image"><center><img src="images/sad.gif"></center></div>
        <div class="back"><center><a href="payment.html"><button>TRY AGAIN</button></a></center></div>  
    </body>

    <%}
    
		    
}

catch(Exception e)
{%>
    <body> 
        <div class="sig"><center><p>OOPS SOMETHING WRONG.....!</p></center></div>
        <div class="image"><center><img src="images/sad.gif"></center></div>
        <div class="back"><center><a href="payment.html"><button>TRY AGAIN</button></a></center></div>  
    </body>


<%}
%>
<html>
    <head>
        <style>
            .sig p{
                font-size: 50px;
                font-family:'Smooch', cursive;;
                color: #CF9F69;
                align-items: center;
                justify-content: center;
            }
            .back button{
               background-color:#CF9F69;
               width: 100px;
               height: 50px;
               border-radius: 10px;
              
            }
            

        </style>
    </head>
   
</html>

