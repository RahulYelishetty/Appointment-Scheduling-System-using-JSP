<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Process Cancellation</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Cancel Appointment</h1>

        <%
            // Retrieve the appointment ID from the form submission
            String appointmentId = request.getParameter("appointmentId");

            if (appointmentId != null && !appointmentId.isEmpty()) {
                // Retrieve the list of appointments from the session
                List<Map<String, String>> appointments = (List<Map<String, String>>) session.getAttribute("appointments");

                if (appointments != null) {
                    boolean found = false;

                    // Iterate through the appointments and remove the one matching the given appointment ID
                    Iterator<Map<String, String>> iterator = appointments.iterator();
                    while (iterator.hasNext()) {
                        Map<String, String> appointment = iterator.next();
                        if (appointmentId.equals(appointment.get("appointmentId"))) {
                            iterator.remove(); // Remove the appointment
                            found = true;
                            break;
                        }
                    }

                    // Update the session with the modified appointment list
                    session.setAttribute("appointments", appointments);

                    if (found) {
        %>
                        <p>Appointment with ID <strong><%= appointmentId %></strong> has been successfully canceled.</p>
        <%
                    } else {
        %>
                        <p>No appointment found with ID <strong><%= appointmentId %></strong>.</p>
        <%
                    }
                } else {
        %>
                    <p>No appointments available to cancel.</p>
        <%
                }
            } else {
        %>
                <p>Invalid appointment ID. Please provide a valid ID.</p>
        <%
            }
        %>

        <a href="home.jsp" class="btn">Back to Home</a>
    </div>
</body>
</html>
