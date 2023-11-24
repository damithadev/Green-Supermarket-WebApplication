package com.example.webproject;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


@WebServlet(name = "paymentServlet", value = "/paymentServlet")
public class paymentServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Retrieve the orderID parameter from the URL
        String orderID = req.getParameter("orderID");

        // Perform any necessary actions with the orderID, such as capturing payment
        // For simplicity, we'll just print it to the console in this example
        System.out.println("Order ID: " + orderID);

        // Redirect or display a confirmation page
        resp.sendRedirect("success.jsp");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Hello to the POST req from servlet");
    }
}