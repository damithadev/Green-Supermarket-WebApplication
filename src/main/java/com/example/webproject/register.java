package com.example.webproject;

import java.io.*;
import java.util.Objects;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;



@WebServlet(name = "register", urlPatterns = "/register")
public class register extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
       //send user from /register -->to  /register.jsp
        getServletContext().getRequestDispatcher("/register.jsp").forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        //handle POST Request from Registration Form
//        String email = req.getParameter("email");
        String email = "damitha@gmail.com";
        String fname = req.getParameter("fname");
        String lname = req.getParameter("lname");
        String add1 = req.getParameter("add1");
        String add2 = req.getParameter("add2");
        String pcode = req.getParameter("pcode");
        String mobile = req.getParameter("mobile");
        String password = req.getParameter("password");
        String conPassword = req.getParameter("conPassword");

        if (!password.equalsIgnoreCase(conPassword)) {
            req.setAttribute("error", "Passwords do not match! ");
            doGet(req,resp);
        } else {
            System.out.println("Account has been created!");

            Connection connection = null;
            PreparedStatement statement = null;

            try {
                connection = dbConnection.getConnection();
                String sql = "INSERT INTO user (email, fname, lname, add1, add2, pcode, mobile, psw) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
                statement = connection.prepareStatement(sql);
                statement.setString(1, email);
                statement.setString(2, fname);
                statement.setString(3, lname);
                statement.setString(4, add1);
                statement.setString(5, add2);
                statement.setString(6, pcode);
                statement.setString(7, mobile);
                statement.setString(8, password);

                int rowsInserted = statement.executeUpdate();

                if (rowsInserted > 0) {
                    // Insertion was successful
                    resp.sendRedirect("success.jsp");
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


}