package com.example.webproject;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "receiveJSON", value = "/receiveJSON")
public class receiveJSON extends HttpServlet {




//didn't used this class, you can delete this







    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        // Assume your retrieveProducts servlet URL
//        String retrieveProductsURL = "http://localhost:8090/retrieveProducts";
//
//        // Send a GET request to retrieveProducts servlet
//        URL url = new URL(retrieveProductsURL);
//        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
//
//        // Set the request method to GET
//        connection.setRequestMethod("GET");
//
//        // Get the response code
//        int responseCode = connection.getResponseCode();
//
//
//        // Check if the request was successful (HTTP 200 OK)
//        if (responseCode == HttpURLConnection.HTTP_OK) {
//            // Read the response content
//            BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
//            StringBuilder responseStringBuilder = new StringBuilder();
//            String line;
//
//            while ((line = reader.readLine()) != null) {
//                responseStringBuilder.append(line);
//            }
//
//            // Close the connection and reader
//            reader.close();
//            connection.disconnect();
//
//            // Now you have the JSON data in responseStringBuilder.toString()
//            String jsonData = responseStringBuilder.toString();
//
//            // Process the JSON data as needed
//
//            // For example, you can parse the JSON string to a Java object using a library like Jackson
//            ObjectMapper objectMapper = new ObjectMapper();
//            product[] products = objectMapper.readValue(jsonData, product[].class);
//
//            for (product product : products) {
//                System.out.println("Product ID: " + product.getId());
//                System.out.println("Product Name: " + product.getName());
//                System.out.println("Product Price: " + product.getPrice());
//                System.out.println("Product Description: " + product.getCategory());
//                System.out.println("Product Description: " + product.getImage());
//                System.out.println("------------------------");
//            }
//
//            // Now you can use the products array as needed
//        } else {
//            // Handle the case where the request was not successful
//            // You might want to throw an exception, log an error, or handle it in some way
//            System.err.println("Failed to retrieve data. HTTP Status Code: " + responseCode);
//        }
//
//





        // Sample data for the order details
//        int[] productIds = {101, 102, 103};
//        int[] customerIds = {10, 20, 30};
//        int[] quantities = {2, 1, 4};
//        double[] unitPrices = {20.00, 30.00, 15.00};
//
//
//        // Construct the dynamic SQL query
//        String query = "INSERT INTO orders (pid, cid, quantity, unitPrice) VALUES ( ?, ?, ?, ?)";
//
//        // Establish a database connection using dbConnection class
//        try (Connection connection = dbConnection.getConnection();
//             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
//
//            // Loop through the products and set parameters for each
//            for (int i = 0; i < productIds.length; i++) {
//                preparedStatement.setInt(1, productIds[i]);
//                preparedStatement.setInt(2, customerIds[i]);
//                preparedStatement.setInt(3, quantities[i]);
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
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Hello to the POST req from servlet");
    }
}