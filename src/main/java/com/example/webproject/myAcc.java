package com.example.webproject;

import java.io.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "myAcc", value = "/myAcc")
public class myAcc extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // Retrieve the user's email from the HttpSession
        HttpSession session = req.getSession();
        String userEmail = (String) session.getAttribute("userEmail");

        // Initialize variables to store user details
        String fname = "";
        String surname = "";
        String mobile = "";

        // Database connection
        Connection connection = null;

        try {
            connection = dbConnection.getConnection();

            // SQL query to retrieve user details based on email
            String query = "SELECT fname, lname, mobile FROM user WHERE email = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, userEmail);

            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                // Retrieve user details from the result set
                fname = resultSet.getString("fname");
                surname = resultSet.getString("lname");
                mobile = resultSet.getString("mobile");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e);
        } finally {
            try {
                if (connection != null) {
                    dbConnection.closeConnection(connection);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        // Set the retrieved details as request attributes
        req.setAttribute("fname", fname);
        req.setAttribute("surname", surname);
        req.setAttribute("email", userEmail);
        req.setAttribute("mobile", mobile);

        // Forward the request to the "accDetails.jsp" page
        RequestDispatcher dispatcher = req.getRequestDispatcher("myAccount.jsp");
        dispatcher.forward(req, resp);
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}