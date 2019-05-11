<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Signup</title>

<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("user");    
    String email = request.getParameter("email");
    String pass = request.getParameter("pass");
    String phone=request.getParameter("phone");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/acadview","root", "root");
    Statement st = con.createStatement();
   
    int i = st.executeUpdate ("insert into users(user,email,pass,phone) values ('" + user + "','" + email + "','" + pass + "','"+ phone +"')");
    if (i > 0) 
   {
   
    	//session.setAttribute("uname", uname);
        //<script>alert("Successfully Logged In ";</script>
        response.sendRedirect("login.html");
       //out.print("Registration Successfull!"+"<a href='login.html'>Go to Login</a>");
    } 
    else 
    {
        response.sendRedirect("signup.html");
        
    }
%>
</head>
<body>

