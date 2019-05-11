<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sign in Here</title>

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<% 

       String user=request.getParameter("user");

       String pass=request.getParameter("pass");
      
     
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/acadview", "root", "root");
    Statement st=conn.createStatement();
    ResultSet rs;
    rs= st.executeQuery("Select user,pass from users where user='"+user+"' and pass ='"+pass+"'");
        	 
if(rs.next())
{
		//System.out.println(user);
    //session.setAttribute("uname", uname);
    //request.setAttribute("user", user);
   RequestDispatcher rd=request.getRequestDispatcher("Welcome.jsp");
    rd.forward(request, response);
   //response.sendRedirect("Welcome.jsp");
   
   
   
   
   
}
else
{
  //  out.println("<h1 align="center">Invalid Password</h1><a href='signin.html'>Try again</a>");
 /* String message = "Invalid Password Please try Again!!!";
request.getSession().setAttribute("message", message);
    response.sendRedirect("signin.html");*/
	out.println("<script type=\"text/javascript\">");
    out.println("alert('User or password incorrect');");
    out.println("</script>");
    response.sendRedirect("Welcome.jsp");  
  
}


  
%>


</head>
<body>


</body>
</html>