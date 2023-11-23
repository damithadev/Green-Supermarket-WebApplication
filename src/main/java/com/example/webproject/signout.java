package com.example.webproject;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


@WebServlet(name = "signout", value = "/signout")
public class signout extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Get the session
        HttpSession session = req.getSession();

        // Remove the userEmail attribute from the session
        session.removeAttribute("userEmail");

        // Redirect to a confirmation page or wherever needed
        resp.sendRedirect("/index.jsp");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Hello to the POST req from servlet");
    }
}