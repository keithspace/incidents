<%-- 
    Document   : registration
    Created on : Mar 13, 2024, 4:17:33 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>

<%
    // Database connection parameters
    String url = "jdbc:mysql://localhost:3306/staff";
    String username = "root";
    String password = "1234";

    // JDBC variables
    Connection connection = null;
    PreparedStatement preparedStatement = null;

    try {
        // Establish database connection
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(url, username, password);

        // Retrieve form data
        String StaffID = request.getParameter("StaffID");
        String staffName = request.getParameter("StaffName");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        String department = request.getParameter("department");
        String pass = request.getParameter("pass");
        // SQL query to insert data into the staff_info table
        String sql = "INSERT INTO user (StaffID, StaffName, email, phoneNumber, department, password) " +
                     "VALUES (?, ?, ?, ?, ?, ?)";

        // Create a prepared statement
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, StaffID);
        preparedStatement.setString(2, staffName);
        preparedStatement.setString(3, email);
        preparedStatement.setString(4, phoneNumber);
        preparedStatement.setString(5, department);
        preparedStatement.setString(6, pass);

        // Execute the statement
        preparedStatement.executeUpdate();

        // Redirect to a success page or perform any other necessary actions
        response.sendRedirect("dashboard.html");

    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
        // Handle exceptions appropriately
        response.sendRedirect("error.html");
    } finally {
        // Close resources
        try {
            if (preparedStatement != null) preparedStatement.close();
            if (connection != null) connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>


