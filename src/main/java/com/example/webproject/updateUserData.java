package com.example.webproject;

import java.io.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "updateUserData", value = "/updateUserData")
public class updateUserData extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Forward the request to the "accDetails.jsp" page
        RequestDispatcher dispatcher = req.getRequestDispatcher("myAccount.jsp");
        dispatcher.forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // Retrieve the user's email from the HttpSession
        HttpSession session = req.getSession();
        String userEmail = (String) session.getAttribute("userEmail");

        if (req.getParameter("userInfoSubmit") != null) {
            // If userInfo form submitted

            String fname = req.getParameter("fname");
            String lname = req.getParameter("lname");
            String mobile = req.getParameter("mobile");

            // Database connection
            Connection connection = null;

            try {
                connection = dbConnection.getConnection();

                // SQL query to update user details in the user table based on email
                String query = "UPDATE user SET fname=?, lname=?, mobile=? WHERE email=?";
                PreparedStatement preparedStatement = connection.prepareStatement(query);
                preparedStatement.setString(1, fname);
                preparedStatement.setString(2, lname);
                preparedStatement.setString(3, mobile);
                preparedStatement.setString(4, userEmail);

                int rowsUpdated = preparedStatement.executeUpdate();

                if (rowsUpdated > 0) {
                    // Update was successful
                    // You can perform further actions or redirect to a success page
                    resp.sendRedirect("/myaccount");
                } else {
                    // Update failed
                    // You can redirect to a failure page or handle the error accordingly
                    resp.sendRedirect("failure.jsp");
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




        } else if (req.getParameter("userAddSubmit") != null) {
            // If userAddress form submitted

            String add1 = req.getParameter("add1");
            String add2 = req.getParameter("add2");
            String pcode = req.getParameter("postal");

            // Database connection
            Connection connection = null;

            try {
                connection = dbConnection.getConnection();

                // SQL query to update user details in the user table based on email
                String query = "UPDATE user SET add1=?, add2=?, pcode=? WHERE email=?";
                PreparedStatement preparedStatement = connection.prepareStatement(query);
                preparedStatement.setString(1, add1);
                preparedStatement.setString(2, add2);
                preparedStatement.setString(3, pcode);
                preparedStatement.setString(4, userEmail);

                int rowsUpdated = preparedStatement.executeUpdate();

                if (rowsUpdated > 0) {
                    // Update was successful
                    // You can perform further actions or redirect to a success page
                    resp.sendRedirect("/myaccount");
                } else {
                    // Update failed
                    // You can redirect to a failure page or handle the error accordingly
                    resp.sendRedirect("failure.jsp");
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
}