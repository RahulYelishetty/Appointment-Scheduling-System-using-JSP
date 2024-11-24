<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.UUID" %>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Appointment</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <script type="text/javascript">
        function updateSubOptions() {
            const service = document.getElementById("service");
            const subService = document.getElementById("subService");

            const options = {
                "Health and Wellness": ["Spa", "Massage"],
                "Education": ["Colleges", "Schools"],
                "Medicine": ["Doctors", "Dentists"],
                "Salon and Beauty": ["Hair Salon", "Braiding", "Tattoo"]
            };

            const selectedService = service.value;
            subService.innerHTML = "";

            if (options[selectedService]) {
                options[selectedService].forEach(option => {
                    const opt = document.createElement("option");
                    opt.value = option;
                    opt.textContent = option;
                    subService.appendChild(opt);
                });
            }
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>Book Your Appointment</h1>
        
        <% 
            // Retrieve the username from the session
            String username = (String) session.getAttribute("username");

            // If username is null (not logged in), prompt user to sign up or login
            if (username == null) {
        %>
            <p>You must sign up or log in first. Please <a href="signup.jsp">Sign Up</a> or <a href="login.jsp">Log In</a>.</p>
        <%
            } else {
        %>
            <!-- Form to book appointment, pre-filling with username -->
            <form action="viewAppointments.jsp" method="post">
                <!-- Read-only Appointment ID -->
                <label for="appointmentId">Appointment ID:</label>
                <input 
                    type="text" 
                    id="appointmentId" 
                    name="appointmentId" 
                    value="" 
                    required><br><br>

                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="" required><br><br>

                <label for="service">Select Category:</label>
                <select id="service" name="service" onchange="updateSubOptions()" required>
                    <option value="">-- Select Category --</option>
                    <option value="Health and Wellness">Health and Wellness</option>
                    <option value="Education">Education</option>
                    <option value="Medicine">Medicine</option>
                    <option value="Salon and Beauty">Salon and Beauty</option>
                </select><br><br>

                <label for="subService">Select Sub-Service:</label>
                <select id="subService" name="subService" required>
                    <option value="">-- Select Sub-Service --</option>
                </select><br><br>

                <label for="date">Select Date:</label>
                <input type="date" id="date" name="date" required><br><br>

                <label for="time">Select Time:</label>
                <select id="time" name="time" required>
                    <option value="10:00 AM">10:00 AM</option>
                    <option value="11:00 AM">11:00 AM</option>
                    <option value="12:00 PM">12:00 PM</option>
                    <option value="1:00 PM">1:00 PM</option>
                    <option value="2:00 PM">2:00 PM</option>
                </select><br><br>

                <button type="submit">Book Appointment</button>
            </form>
        <%
            }
        %>
        
        <a href="home.jsp" class="btn">Back to Home</a>
    </div>
</body>
</html>
