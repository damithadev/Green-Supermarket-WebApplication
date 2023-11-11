package com.example.webproject;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "retrieveProducts", value = "/retrieveProducts")
public class retrieveProducts extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<product> products = new ArrayList<>();
        Connection connection = null;

        try {
            connection = dbConnection.getConnection();

            // Define your SQL query to retrieve product data from the database
            String query = "SELECT id, name, price, description FROM products";

            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                double price = resultSet.getDouble("price");
                String description = resultSet.getString("description");

                //adding product data to the product constructor which inside the product class
                products.add(new product(id, name, price, description));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (connection != null) {
                    dbConnection.closeConnection(connection);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        System.out.println("Hi");

        //"productLV" is a loop variable.
        // It represents an individual element in the products list during each iteration of the loop.
        for (product productLV : products) {
            System.out.println("Product ID: " + productLV.getId());
            System.out.println("Product Name: " + productLV.getName());
            System.out.println("Product Price: Rs" + productLV.getPrice());
            System.out.println("Product Description: " + productLV.getDescription());

        }

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Hello to the POST req from servlet");
    }
}