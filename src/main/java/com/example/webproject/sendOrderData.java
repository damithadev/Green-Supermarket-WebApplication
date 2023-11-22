package com.example.webproject;

import java.io.*;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet(name = "sendOrderData", value = "/sendOrderData")
public class sendOrderData extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Read the JSON data from the request body
        BufferedReader reader = req.getReader();
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            sb.append(line);
        }

        // Convert JSON data to a Java object using Jackson
        ObjectMapper objectMapper = new ObjectMapper();
        Order orderDetailsDTO = objectMapper.readValue(sb.toString(), Order.class);


        List<Order.OrderItem> items = orderDetailsDTO.getOrderDetails();


        for (Order.OrderItem item : items) {
            System.out.println("Product ID: " + item.getProductId());
            System.out.println("Quantity: " + item.getQuantity());
            // Add more fields as needed
        }

        // Now you have the order details as a Java object, you can process it accordingly
        // ...

        // Send a response if needed
        resp.setContentType("application/json");
        resp.getWriter().write("Order received successfully");
    }
}

