<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Action</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Logging In...</h1>
        
        <%
            // Get user input from the login form
            String enteredUsername = request.getParameter("username");
            String enteredPassword = request.getParameter("password");

            // Retrieve stored user credentials from session (set during signup)
            String storedUsername = (String) session.getAttribute("username");
            String storedPassword = (String) session.getAttribute("password");

            // Validate if entered credentials match the stored session data
            if (storedUsername != null && storedPassword != null &&
                enteredUsername.equals(storedUsername) && enteredPassword.equals(storedPassword)) {
                // If the credentials match, user is logged in
                session.setAttribute("loggedIn", true);
                response.sendRedirect("bookAppointment.jsp");  // Redirect to the appointment page
            } else {
                // If the credentials do not match, show error message
                out.println("<p>Invalid username or password. Please try again.</p>");
            }
        %>

        <a href="login.jsp" class="btn">Back to Login</a>
    </div>
</body>
</html>
