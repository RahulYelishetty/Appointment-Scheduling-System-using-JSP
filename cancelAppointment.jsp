<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cancel Appointment</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Cancel Appointment</h1>
        <form action="processCancellation.jsp" method="post">
            <label for="appointmentId">Appointment ID:</label>
            <input type="text" id="appointmentId" name="appointmentId" placeholder="Enter Appointment ID" required><br><br>

            <button type="submit">Cancel Appointment</button>
        </form>
        <a href="home.jsp" class="btn">Back to Home</a>
    </div>
</body>
</html>