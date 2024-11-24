<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, javax.servlet.*, javax.servlet.http.*" %>
<%@ page session="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up Process</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Processing Your Sign Up...</h1>
        
        <%
            // Retrieve form data from the request
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String confirmPassword = request.getParameter("confirmPassword");
            
            // Simple validation
            if (username != null && email != null && password != null && confirmPassword != null) {
                if (password.equals(confirmPassword)) {
                    // Store user data (including password) in session
                    session.setAttribute("username", username);
                    session.setAttribute("email", email);
                    session.setAttribute("password", password); // Save password in session
                    
                    // Redirect to book appointment page after successful sign-up
                    response.sendRedirect("bookAppointment.jsp");
                } else {
                    out.println("<p>Passwords do not match. Please try again.</p>");
                }
            } else {
                out.println("<p>Please fill out all fields.</p>");
            }
        %>

        <a href="signup.jsp" class="btn">Back to Sign Up</a>
    </div>
</body>
</html>
