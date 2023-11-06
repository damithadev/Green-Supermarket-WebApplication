package com.example.webproject;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "updateUserData", value = "/updateUserData")
public class updateUserData extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//        System.out.println("hi");
        if (req.getParameter("userInfoSubmit") != null) {
            // If userInfo form submitted
            // Retrieve the user's email from the HttpSession
            System.out.println("hello");

//            HttpSession session = req.getSession();
//            String userEmail = (String) session.getAttribute("userEmail");
//
//            String fname = req.getParameter("fname");
//            String lname = req.getParameter("lname");
//            String add1 = req.getParameter("add1");
//            String add2 = req.getParameter("add2");
//            String pcode = req.getParameter("pcode");
//            String mobile = req.getParameter("mobile");
//
//            // Database connection
//            Connection connection = null;
//
//            try {
//                connection = dbConnection.getConnection();
//
//                // SQL query to update user details in the user table based on email
//                String query = "UPDATE user SET fname=?, lname=?, mobile=?, add1=?, add2=?, pcode=? WHERE email=?";
//                PreparedStatement preparedStatement = connection.prepareStatement(query);
//                preparedStatement.setString(1, fname);
//                preparedStatement.setString(2, lname);
//                preparedStatement.setString(3, mobile);
//                preparedStatement.setString(4, add1);
//                preparedStatement.setString(5, add2);
//                preparedStatement.setString(6, pcode);
//                preparedStatement.setString(7, userEmail);
//
//                int rowsUpdated = preparedStatement.executeUpdate();
//
//                if (rowsUpdated > 0) {
//                    // Update was successful
//                    // You can perform further actions or redirect to a success page
//                    resp.sendRedirect("success.jsp");
//                } else {
//                    // Update failed
//                    // You can redirect to a failure page or handle the error accordingly
//                    resp.sendRedirect("failure.jsp");
//                }
//            } catch (SQLException e) {
//                e.printStackTrace();
//                // Handle database errors, e.g., log them or show an error page
//            } finally {
//                try {
//                    if (connection != null) {
//                        dbConnection.closeConnection(connection);
//                    }
//                } catch (SQLException e) {
//                    e.printStackTrace();
//                }
//            }
//
//


        } else if (req.getParameter("form2Submit") != null) {
            // Form 2 was submitted
            String field1 = req.getParameter("form2Field1");
            // Process form 2 data
        }



    }
}