<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Appointments</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Your Appointments</h1>

        <%
            List<Map<String, String>> appointments = (List<Map<String, String>>) session.getAttribute("appointments");

            if (appointments == null) {
                appointments = new ArrayList<>();
            }

            String name = request.getParameter("name");
            String service = request.getParameter("service");
            String subService = request.getParameter("subService");
            String date = request.getParameter("date");
            String time = request.getParameter("time");
            String appointmentId = request.getParameter("appointmentId");

            if (name != null && service != null && subService != null && date != null && time != null) {
                Map<String, String> newAppointment = new HashMap<>();
                newAppointment.put("appointmentId", appointmentId);
                newAppointment.put("name", name);
                newAppointment.put("service", subService);
                newAppointment.put("date", date);
                newAppointment.put("time", time);
                appointments.add(newAppointment);

                session.setAttribute("appointments", appointments);
            }
        %>

        <table>
            <thead>
                <tr>
                    <th>Appointment ID</th>
                    <th>Name</th>
                    <th>Service</th>
                    <th>Date</th>
                    <th>Time</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Map<String, String> appointment : appointments) {
                %>
                    <tr>
                        <td><%= appointment.get("appointmentId") %></td>
                        <td><%= appointment.get("name") %></td>
                        <td><%= appointment.get("service") %></td>
                        <td><%= appointment.get("date") %></td>
                        <td><%= appointment.get("time") %></td>
                    </tr>
                <%
                    }
                %>
            </tbody>
        </table>

        <a href="bookAppointment.jsp" class="btn">Book Another Appointment</a>
        <a href="cancelAppointment.jsp" class="btn">Cancel Appointment</a>
    </div>
</body>
</html>
