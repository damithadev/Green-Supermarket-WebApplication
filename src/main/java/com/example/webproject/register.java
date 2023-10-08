package com.example.webproject;

import java.io.*;

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
        System.out.println("Request received");
    }


}