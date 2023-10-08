package com.example.webproject;

import java.io.*;
import java.util.Objects;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


@WebServlet(name = "register", urlPatterns = "/register")
public class register extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
       //send user from /register -->to  /register.jsp
        getServletContext().getRequestDispatcher("/register.jsp").forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        //handle POST Request from Registration Form
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String conPassword = req.getParameter("confirmPassword");

        if (!password.equalsIgnoreCase(conPassword)) {
            req.setAttribute("error", "Passwords do not match! ");
            doGet(req,resp);
        } else {
            System.out.println("Account has been created!");
        }
    }


}