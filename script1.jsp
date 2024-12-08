<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ page import="java.util.*,java.io.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Form Submission</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String message = request.getParameter("message");

    // Simple validation for form fields
    if (name == null || email == null || message == null || name.isEmpty() || email.isEmpty() || message.isEmpty()) {
        out.println("<h1>Error: All fields are required!</h1>");
    } else {
        out.println("<h1>Thank you for your message, " + name + "!</h1>");
        out.println("<p>We will get back to you at " + email + " shortly.</p>");
    }
%>

</body>
</html>
