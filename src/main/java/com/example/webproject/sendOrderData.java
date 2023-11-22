package com.example.webproject;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.util.ArrayList;


@WebServlet(name = "sendOrderData", value = "/sendOrderData")
public class sendOrderData extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //this doPost method retrieve JSON data(product cart items) from the product cart

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
        List<Integer> productIds = new ArrayList<>();
        List<Integer> quantities = new ArrayList<>();

        for (Order.OrderItem item : items) {
            productIds.add(item.getProductId());
            quantities.add(item.getQuantity());
        }

        // Print or use the arraysLists as needed
        System.out.println("Product IDs: " + productIds);
        System.out.println("Quantities: " + quantities);


        // Now you have the order details as a Java object, you can process it accordingly
        // Construct the dynamic SQL query
//        String query = "INSERT INTO orders (pid, cid, quantity, unitPrice) VALUES ( ?, ?, ?, ?)";
//
//        // Establish a database connection using dbConnection class
//        try (Connection connection = dbConnection.getConnection();
//             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
//
//            // Loop through the products and set parameters for each
//            for (int i = 0; i < productIds.length; i++) {
//                preparedStatement.setInt(1, productIds.get(i));
//                preparedStatement.setInt(2, customerIds[i]);
//                preparedStatement.setInt(3, quantities.get(i));
//                preparedStatement.setDouble(4, unitPrices[i]);
//                //preparedStatement.setDouble(5, quantities[i] * unitPrices[i] * (1 - discounts[i]));
//
//                // Execute the query for each product
//                preparedStatement.executeUpdate();
//            }
//
//            System.out.println("Rows inserted successfully.");
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }

        // Send a response if needed
        resp.setContentType("application/json");
        resp.getWriter().write("Order received successfully");
    }
}

