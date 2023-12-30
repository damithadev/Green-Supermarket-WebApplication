package com.example.webproject;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


@WebServlet(name = "addReview", value = "/addReview")
public class addReview extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String email = (String) session.getAttribute("userEmail");
        String review = req.getParameter("review");

        Connection connection = null;
        PreparedStatement statement = null;

        try {
            connection = dbConnection.getConnection();
            String sql = "INSERT INTO reviews (Uemail, Feedback) VALUES (?, ?)";
            statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, review);

            int rowsInserted = statement.executeUpdate();

            if (rowsInserted > 0) {

                resp.sendRedirect("/index.jsp");
            } else {
                // Insertion failed
                resp.sendRedirect("failed.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle database errors, e.g., log them or show an error page
        } finally {
            try {
                if (statement != null) statement.close();
                if (connection != null) dbConnection.closeConnection(connection);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}