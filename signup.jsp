<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Create Your Account</h1>
        <p>Fill in the details below to sign up for an account:</p>
        
        <!-- Sign Up Form -->
        <form action="processSignup.jsp" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br><br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br><br>

            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" id="confirmPassword" name="confirmPassword" required><br><br>

            <button type="submit">Sign Up</button>
        </form>

        <p>Already have an account? <a href="login.jsp">Log in here</a></p>

        <a href="index.jsp" class="btn">Back to Home</a>
    </div>
</body>
</html>
