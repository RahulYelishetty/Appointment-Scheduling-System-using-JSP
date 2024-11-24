<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Login to Your Account</h1>
        <p>Enter your username and password to log in:</p>
        
        <!-- Login Form -->
        <form action="loginAction.jsp" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br><br>

            <button type="submit">Log In</button>
        </form>

        <p>Don't have an account? <a href="signup.jsp">Sign up here</a></p>

        <a href="index.jsp" class="btn">Back to Home</a>
    </div>
</body>
</html>
