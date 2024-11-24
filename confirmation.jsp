<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Appointment Confirmation</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <script>
        // Uncomment the following line if you want automatic redirection to index.jsp after 5 seconds
        // setTimeout(() => window.location.href = "index.jsp", 5000);
    </script>
</head>
<body>
    <div class="container">
        <h1>Appointment Confirmation</h1>

        <!-- Fetching data submitted from the form -->
        <%
            String name = request.getParameter("name");
            String service = request.getParameter("service");
            String date = request.getParameter("date");
            String time = request.getParameter("time");
        %>

        <p>Thank you, <strong><%= name %></strong>! Your appointment is confirmed.</p>
        <p>Service: <strong><%= service %></strong></p>
        <p>Date: <strong><%= date %></strong></p>
        <p>Time: <strong><%= time %></strong></p>
        <p>We will send you a reminder closer to the date.</p>

        <!-- Button to navigate back to the home page -->
        <a href="home.jsp" class="btn">Back to Home</a>
    </div>
</body>
</html>
