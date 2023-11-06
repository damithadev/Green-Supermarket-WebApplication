package com.example.webproject;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


@WebServlet(name = "login", value = "/login")
public class login extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //send user from /register -->to  /register.jsp
        getServletContext().getRequestDispatcher("/login.jsp").forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //handle POST Request from Registration Form
        String email = req.getParameter("email");
        String password = req.getParameter("password");


        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            connection = dbConnection.getConnection();
            String sql = "SELECT * FROM user WHERE email = ? AND psw = ?";
            statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, password);

            resultSet = statement.executeQuery();

            if (resultSet.next()) {
                // Login successful, user exists in the database

                // Store the Email in the session
                HttpSession HTsession = req.getSession();
                HTsession.setAttribute("userEmail", email);
                resp.sendRedirect("/myaccount");
            } else {
                // Login failed, user doesn't exist or password is incorrect
                resp.sendRedirect("failed.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle database errors, e.g., log them or show an error page
        } finally {
            try {
                if (resultSet != null) resultSet.close();
                if (statement != null) statement.close();
                if (connection != null) dbConnection.closeConnection(connection);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}


