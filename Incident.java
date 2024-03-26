/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Incidents")
public class Incidents extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Database connection parameters
        String url = "jdbc:mysql://localhost:3306/staff";
        String username = "root";
        String password = "1234";

        // Retrieve form data
        String incidentID = request.getParameter("incidentID");
        String StaffID = request.getParameter("StaffID");
        String department = request.getParameter("department");
        String room = request.getParameter("room");
        String incident = request.getParameter("incident");
        String date = request.getParameter("date");

        // Database connection and insertion
        try (Connection conn = DriverManager.getConnection(url, username, password)) {
            String sql = "INSERT INTO incidents (StaffID, department, room, incident, date) VALUES (?, ?, ?, ?, ?)";
            try (PreparedStatement statement = conn.prepareStatement(sql)) {
                statement.setString(1, StaffID);
                statement.setString(2, department);
                statement.setString(3, room);
                statement.setString(4, incident);
                statement.setString(5, date);
                statement.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Handle the exception appropriately
            response.sendRedirect("error.html");
            return;
        }

        // If insertion is successful, redirect to a success page
        response.sendRedirect("success.html");
    }
}
