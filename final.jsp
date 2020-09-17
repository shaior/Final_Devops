<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shai Oren Registration Form</title>
</head>
<body>
<h1>Shai Oren final Register Form</h1>
<form action="guru_register" method="post">
			<table style="with: 50%">
				<tr>
					<td>First Name</td>
					<td><input type="text" name="first_name" /></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="last_name" /></td>
				</tr>
				<tr>
					<td>UserName</td>
					<td><input type="text" name="username" /></td>
				</tr>
					<tr>
					<td>Password</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="address" /></td>
				</tr>
				<tr>
					<td>Contact No</td>
					<td><input type="text" name="contact" /></td>
				</tr></table>
			<input type="submit" value="Submit" /></form>
</body>
</html>
Explanation of the code:


Primis Player Placeholder


Code Line 11: Here we are taking a form name which has action i.e. the servlet to which the request will be processed and servlet name is guru_register.java. The request will be processed through POST method.

Code Line 14-16: Here we are taking input type as text and name is first name

Code Line 18-20: Here we are taking input type as text and name is last name

Code Line 22-24: Here we are taking input type as text and name is username

Code Line 26-28: Here we are taking input type as password(this will hide the password when typed) and name as password

Code Line 30-32: Here we are taking input type as text and name as address

Code Line 34-36: Here we are taking input type as text and name as contact

Code Line 37: Here we are taking a button of type submit and value is also submit. On click of this button the action will go to corresponding guru_register servlet where all the parameter values will be passed in the request.

Guru_register.java

package demotest;
 
import java.io.IOException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
/**
 * Servlet implementation class guru_register
 */
public class guru_register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String contact = request.getParameter("contact");
		
		if(first_name.isEmpty() || last_name.isEmpty() || username.isEmpty() || 
				password.isEmpty() || address.isEmpty() || contact.isEmpty())
		{
			RequestDispatcher req = request.getRequestDispatcher("register_1.jsp");
			req.include(request, response);
		}
		else
		{
			RequestDispatcher req = request.getRequestDispatcher("register_2.jsp");
			req.forward(request, response);
		}
	}
 
}