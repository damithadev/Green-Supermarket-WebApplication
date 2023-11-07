package com.example.webproject;

import java.io.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "deleteUserAcc", value = "/deleteUserAcc")
public class deleteUserAcc extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Forward the request to the "accDetails.jsp" page
        RequestDispatcher dispatcher = req.getRequestDispatcher("myAccount.jsp");
        dispatcher.forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Retrieve the user's email from the HttpSession
        HttpSession session = req.getSession();
        String userEmail = (String) session.getAttribute("userEmail");

        // Database connection
        Connection connection = null;

        try {
            connection = dbConnection.getConnection();

            // SQL query to delete a user record from the user table based on email
            String query = "DELETE FROM user WHERE email=?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, userEmail);

            int rowsDeleted = preparedStatement.executeUpdate();

            if (rowsDeleted > 0) {
                // Deletion was successful
                resp.getWriter().write("success");
                // resp.sendRedirect("index.jsp");
            } else {
                // Deletion failed
                resp.getWriter().write("failure");
                //resp.sendRedirect("failed.jsp");
            }


        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e);
            // Handle database errors, e.g., log them or show an error page
        } finally {
            try {
                if (connection != null) {
                    dbConnection.closeConnection(connection);
                }
            } catch (SQLException e) {
                e.printStackTrace();
                System.out.println(e);
            }
        }

    }
}