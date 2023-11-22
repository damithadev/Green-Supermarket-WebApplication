package com.example.webproject;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class passData {
    public static void main(String[] args) {
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
}
